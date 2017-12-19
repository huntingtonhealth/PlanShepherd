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
		  select("plans.PlanMarketingName, plans.TEHBDedInnTier1Individual, plans.TEHBInnTier1IndividualMOOP, rates.*, plans.MEHBDedInnTier1Individual, plans.MEHBInnTier1IndividualMOOP").from("plans LEFT JOIN serviceareas ON plans.IssuerId = serviceareas.IssuerId AND plans.ServiceAreaId = serviceareas.ServiceAreaId LEFT JOIN rates ON substr(plans.PlanId, 1, 14) = rates.PlanId").where("plans.DentalOnlyPlan LIKE ? AND plans.MarketCoverage = 'Individual' AND rates.Age LIKE ? AND plans.CSRVariationType LIKE '%On Exchange Plan%' AND rates.RatingAreaId LIKE ('Rating Area ' || ?) AND ((serviceareas.CoverEntireState = 'Yes' AND plans.StateCode LIKE ?) OR (serviceareas.CoverEntireState = 'No' AND serviceareas.PartialCounty = 'No' AND serviceareas.County LIKE ?) OR (serviceareas.CoverEntireState = 'No' AND serviceareas.PartialCounty = 'Yes' AND instr(serviceareas.ZipCodes , ?) > 0))", "%#{dental}", "%#{age}", "%#{ratingarea}", "%#{state}", "%#{county}", "%#{zip}")
	end	
  
  def self.screen2(zip, dental, shop, childadpln, age, state, county)
    select("plans.*, serviceareas.*, rates.*").from("plans LEFT JOIN serviceareas ON plans.IssuerId = serviceareas.IssuerId AND plans.ServiceAreaId = serviceareas.ServiceAreaId LEFT JOIN rates ON substr(plans.PlanId, 1, 14) = rates.PlanId").where("plans.DentalOnlyPlan LIKE ? AND plans.MarketCoverage LIKE ? AND plans.ChildOnlyOffering LIKE ? AND ((serviceareas.CoverEntireState = 'Yes' AND plans.StateCode LIKE ?) OR (serviceareas.CoverEntireState = 'No' AND serviceareas.PartialCounty = 'No' AND serviceareas.County LIKE ?) OR (serviceareas.CoverEntireState = 'No' AND serviceareas.PartialCounty = 'Yes' AND instr(serviceareas.ZipCodes , ?) > 0)) AND rates.Age LIKE ?", "%#{dental}", "%#{shop}", "%#{childadpln}", "%#{state}", "%#{county}", "%#{zip}", "%#{age}").group("plans.PlanMarketingName")
  end
				
end
