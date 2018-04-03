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
		  select("plans.planmarketingname, plans.tehbdedinntier1individual, plans.tehbdedinntier1familypergroup, plans.tehbinntier1individualmoop, plans.tehbinntier1familypergroupmoop, rates.*, plans.planmarketingname, plans.mehbdedinntier1individual, plans.mehbdedinntier1familypergroup, plans.mehbinntier1individualmoop, plans.mehbinntier1familypergroupmoop, plans.plantype, plans.metallevel, plans.ishsaeligible").from("plans LEFT JOIN serviceareas ON plans.issuerid = serviceareas.issuerid AND plans.serviceareaid = serviceareas.serviceareaid LEFT JOIN rates ON substr(plans.planid, 1, 14) = rates.planid").where("plans.dentalonlyplan LIKE '#{dental}' AND plans.marketcoverage = 'Individual' AND rates.age LIKE '#{age}' AND plans.csrvariationtype LIKE '%On Exchange Plan%' AND rates.ratingareaid LIKE concat('Rating Area ', '#{ratingarea}') AND ((serviceareas.coverentirestate = 'Yes' AND plans.statecode LIKE '#{state}') OR (serviceareas.coverentirestate = 'No' AND serviceareas.partialcounty = 'No' AND serviceareas.county LIKE '#{county}') OR (serviceareas.coverentirestate = 'No' AND serviceareas.partialcounty = 'Yes' AND position('#{zip}' IN serviceareas.zipcodes) > 0))").order("rates.individualrate")
	end	
				
end
