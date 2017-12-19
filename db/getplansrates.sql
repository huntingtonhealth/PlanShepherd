SELECT plans.PlanMarketingName, Plans.PlanId, rates.IndividualRate
FROM plans 
LEFT JOIN serviceareas ON plans.IssuerId = serviceareas.IssuerId AND plans.ServiceAreaId = serviceareas.ServiceAreaId
LEFT JOIN rates ON substr(plans.PlanId, 1, 14) = rates.PlanId
WHERE plans.DentalOnlyPlan = "No"
AND plans.MarketCoverage = "Individual"
AND plans.ChildOnlyOffering = "Allows Adult and Child-Only"
AND ((serviceareas.CoverEntireState = "Yes" AND plans.StateCode = "LA") 
	OR (serviceareas.CoverEntireState = "No" AND serviceareas.PartialCounty = "No" AND serviceareas.County = "22071")
	OR (serviceareas.CoverEntireState = "No" AND serviceareas.PartialCounty = "Yes" AND instr(serviceareas.ZipCodes ,'70124') > 0))
AND rates.Age = "28"
GROUP BY plans.PlanMarketingName