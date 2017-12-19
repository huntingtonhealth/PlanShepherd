SELECT plans.PlanMarketingName
FROM plans LEFT JOIN serviceareas 
ON plans.IssuerId = serviceareas.IssuerId AND plans.ServiceAreaId = serviceareas.ServiceAreaId
WHERE plans.DentalOnlyPlan = "No"
AND plans.MarketCoverage = "Individual"
AND plans.ChildOnlyOffering = "Allows Adult and Child-Only"
AND ((serviceareas.CoverEntireState = "Yes" AND plans.StateCode = "LA") 
	OR (serviceareas.CoverEntireState = "No" AND serviceareas.PartialCounty = "No" AND serviceareas.County = "22071")
	OR (serviceareas.CoverEntireState = "No" AND serviceareas.PartialCounty = "Yes" AND instr(serviceareas.ZipCodes ,'70124') > 0))
GROUP BY plans.PlanMarketingName