class Plan < ApplicationRecord

	#No attr_accessible since all attributes are whitelisted in application.rb
	has_many :serviceareas
	belongs_to :network, optional: true
	has_many :bencostshares 
	has_many :rates
	has_many :businessrules
	has_one :quality
	has_one :crosswalk
	
	def self.screen(zip, county, state, dental, age, ratingarea)
		  select("plans.planmarketingname, plans.tehbdedinntier1individual, plans.tehbinntier1individualmoop, rates.*, plans.mehbdedinntier1individual, plans.mehbinntier1individualmoop").from("plans LEFT JOIN serviceareas ON plans.issuerid = serviceareas.issuerid AND plans.serviceareaid = serviceareas.serviceareaid LEFT JOIN rates ON substr(plans.planid, 1, 14) = rates.planid").where("plans.dentalonlyplan LIKE '#{dental}' AND plans.marketcoverage = 'Individual' AND rates.age LIKE '#{age}' AND plans.csrvariationtype LIKE '%On Exchange Plan%' AND rates.ratingareaid LIKE concat('Rating Area ', '#{ratingarea}') AND ((serviceareas.coverentirestate = 'Yes' AND plans.statecode LIKE '#{state}') OR (serviceareas.coverentirestate = 'No' AND serviceareas.partialcounty = 'No' AND serviceareas.county LIKE '#{county}') OR (serviceareas.coverentirestate = 'No' AND serviceareas.partialcounty = 'Yes' AND position('#{zip}' IN serviceareas.zipcodes) > 0))")
	end	
  
  def self.navigate
  end
  
  def self.search(planid)
    select("plans.*, rates.*").from("plans LEFT JOIN rates ON substr(plans.planid, 1, 14) = rates.planid").where("plans.planid = '#{planid}'")
  end
				
end
