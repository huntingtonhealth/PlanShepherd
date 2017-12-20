# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171023173153) do

  create_table "bencostshares", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "BusinessYear",        limit: 65535
    t.text     "StateCode",           limit: 65535
    t.text     "IssuerId",            limit: 65535
    t.text     "SourceName",          limit: 65535
    t.text     "VersionNum",          limit: 65535
    t.datetime "ImportDate"
    t.text     "IssuerId2",           limit: 65535
    t.text     "StateCode2",          limit: 65535
    t.text     "StandardComponentId", limit: 65535
    t.text     "PlanId",              limit: 65535
    t.text     "BenefitName",         limit: 65535
    t.text     "CopayInnTier1",       limit: 65535
    t.text     "CopayInnTier2",       limit: 65535
    t.text     "CopayOutofNet",       limit: 65535
    t.text     "CoinsInnTier1",       limit: 65535
    t.text     "CoinsInnTier2",       limit: 65535
    t.text     "CoinsOutofNet",       limit: 65535
    t.text     "IsEHB",               limit: 65535
    t.text     "IsStateMandate",      limit: 65535
    t.text     "IsCovered",           limit: 65535
    t.text     "QuantLimitOnSvc",     limit: 65535
    t.text     "LimitQty",            limit: 65535
    t.text     "LimitUnit",           limit: 65535
    t.text     "MinimumStay",         limit: 65535
    t.text     "Exclusions",          limit: 65535
    t.text     "Explanation",         limit: 65535
    t.text     "EHBVarReason",        limit: 65535
    t.text     "IsSubjtoDedTier1",    limit: 65535
    t.text     "IsSubjtoDedTier2",    limit: 65535
    t.text     "IsExclFromInnMOOP",   limit: 65535
    t.text     "IsExclFromOonMOOP",   limit: 65535
    t.text     "RowNumber",           limit: 65535
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["PlanId"], name: "index_bencostshares_on_PlanID", length: { PlanId: 255 }, using: :btree
    t.index ["StandardComponentId"], name: "index_bencostshares_on_StandardComponentID", length: { StandardComponentId: 255 }, using: :btree
  end

  create_table "businessrules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "BusinessYear",                          limit: 65535
    t.text     "StateCode",                             limit: 65535
    t.text     "IssuerId",                              limit: 65535
    t.text     "SourceName",                            limit: 65535
    t.text     "VersionNum",                            limit: 65535
    t.datetime "ImportDate"
    t.text     "IssuerId2",                             limit: 65535
    t.text     "TIN",                                   limit: 65535
    t.text     "ProductId",                             limit: 65535
    t.text     "StandardComponentId",                   limit: 65535
    t.text     "EnrolleeContractRateDeterminationRule", limit: 65535
    t.text     "TwoParentFamilyMaxDependentsRule",      limit: 65535
    t.text     "SingleParentFamilyMaxDependentsRule",   limit: 65535
    t.text     "DependentMaximumAgRule",                limit: 65535
    t.text     "ChildrenOnlyContractMaxChildrenRule",   limit: 65535
    t.text     "DomesticPartnerAsSpouseIndicator",      limit: 65535
    t.text     "SameSexPartnerAsSpouseIndicator",       limit: 65535
    t.text     "AgeDeterminationRule",                  limit: 65535
    t.text     "MinimumTobaccoFreeMonthsRule",          limit: 65535
    t.text     "CohabitationRule",                      limit: 65535
    t.text     "RowNumber",                             limit: 65535
    t.text     "MarketCoverage",                        limit: 65535
    t.text     "DentalOnlyPlan",                        limit: 65535
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.index ["StandardComponentId"], name: "index_businessrules_on_StandardComponentID", length: { StandardComponentId: 255 }, using: :btree
    t.index ["TIN"], name: "index_businessrules_on_TIN", length: { TIN: 255 }, using: :btree
  end

  create_table "crosswalks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "State",                     limit: 65535
    t.text     "DentalPlan",                limit: 65535
    t.text     "PlanID_2016",               limit: 65535
    t.text     "IssuerID_2016",             limit: 65535
    t.text     "MultistatePlan_2016",       limit: 65535
    t.text     "MetalLevel_2016",           limit: 65535
    t.text     "ChildAdultOnly_2016",       limit: 65535
    t.text     "FIPSCode",                  limit: 65535
    t.text     "ZipCode",                   limit: 65535
    t.text     "CrosswalkLevel",            limit: 65535
    t.text     "ReasonForCrosswalk",        limit: 65535
    t.text     "PlanID_2017",               limit: 65535
    t.text     "IssuerID_2017",             limit: 65535
    t.text     "MultistatePlan_2017",       limit: 65535
    t.text     "MetalLevel_2017",           limit: 65535
    t.text     "ChildAdultOnly_2017",       limit: 65535
    t.text     "AgeOffPlanID_2017",         limit: 65535
    t.text     "IssuerID_AgeOff2017",       limit: 65535
    t.text     "MultistatePlan_AgeOff2017", limit: 65535
    t.text     "MetalLevel_AgeOff2017",     limit: 65535
    t.text     "ChildAdultOnly_AgeOff2017", limit: 65535
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["PlanID_2017"], name: "index_crosswalks_on_PlanID_2017", length: { PlanID_2017: 255 }, using: :btree
  end

  create_table "networks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "BusinessYear",   limit: 65535
    t.text     "StateCode",      limit: 65535
    t.text     "IssuerId",       limit: 65535
    t.text     "SourceName",     limit: 65535
    t.datetime "ImportDate"
    t.text     "NetworkName",    limit: 65535
    t.text     "NetworkId",      limit: 65535
    t.text     "NetworkURL",     limit: 65535
    t.text     "MarketCoverage", limit: 65535
    t.text     "DentalOnlyPlan", limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "plans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "BusinessYear",                                                 limit: 65535
    t.text     "StateCode",                                                    limit: 65535
    t.text     "IssuerId",                                                     limit: 65535
    t.text     "SourceName",                                                   limit: 65535
    t.text     "VersionNum",                                                   limit: 65535
    t.datetime "ImportDate"
    t.text     "BenefitPackageId",                                             limit: 65535
    t.text     "IssuerId2",                                                    limit: 65535
    t.text     "StateCode2",                                                   limit: 65535
    t.text     "MarketCoverage",                                               limit: 65535
    t.text     "DentalOnlyPlan",                                               limit: 65535
    t.text     "TIN",                                                          limit: 65535
    t.text     "StandardComponentId",                                          limit: 65535
    t.text     "PlanMarketingName",                                            limit: 65535
    t.text     "HIOSProductId",                                                limit: 65535
    t.text     "HPID",                                                         limit: 65535
    t.text     "NetworkId",                                                    limit: 65535
    t.text     "ServiceAreaId",                                                limit: 65535
    t.text     "FormularyId",                                                  limit: 65535
    t.text     "IsNewPlan",                                                    limit: 65535
    t.text     "PlanType",                                                     limit: 65535
    t.text     "MetalLevel",                                                   limit: 65535
    t.text     "DesignType",                                                   limit: 65535
    t.text     "UniquePlanDesign",                                             limit: 65535
    t.text     "QHPNonQHPTypeId",                                              limit: 65535
    t.text     "IsNoticeRequiredForPregnancy",                                 limit: 65535
    t.text     "IsReferralRequiredForSpecialist",                              limit: 65535
    t.text     "SpecialistRequiringReferral",                                  limit: 65535
    t.text     "PlanLevelExclusions",                                          limit: 65535
    t.text     "IndianPlanVariationEstimatedAdvancedPaymentAmountPerEnrollee", limit: 65535
    t.text     "CompositeRatingOffered",                                       limit: 65535
    t.text     "ChildOnlyOffering",                                            limit: 65535
    t.text     "ChildOnlyPlanId",                                              limit: 65535
    t.text     "WellnessProgramOffered",                                       limit: 65535
    t.text     "DiseaseManagementProgramsOffered",                             limit: 65535
    t.text     "EHBPercentTotalPremium",                                       limit: 65535
    t.text     "EHBPediatricDentalApportionmentQuantity",                      limit: 65535
    t.text     "IsGuaranteedRate",                                             limit: 65535
    t.date     "PlanEffictiveDate"
    t.date     "PlanExpirationDate"
    t.text     "OutOfCountryCoverage",                                         limit: 65535
    t.text     "OutOfCountryCoverageDescription",                              limit: 65535
    t.text     "OutOfServiceAreaCoverage",                                     limit: 65535
    t.text     "OutOfServiceAreaCoverageDescription",                          limit: 65535
    t.text     "NationalNetwork",                                              limit: 65535
    t.text     "URLForEnrollmentPayment",                                      limit: 65535
    t.text     "FormularyURL",                                                 limit: 65535
    t.text     "PlanId",                                                       limit: 65535
    t.text     "PlanVariantMarketingName",                                     limit: 65535
    t.text     "CSRVariationType",                                             limit: 65535
    t.text     "IssuerActuarialValue",                                         limit: 65535
    t.text     "AVCalculatorOutputNumber",                                     limit: 65535
    t.text     "MedicalDrugDeductiblesIntegrated",                             limit: 65535
    t.text     "MedicalDrugMaximumOutofPocketIntegrated",                      limit: 65535
    t.text     "MultipleInNetworkTiers",                                       limit: 65535
    t.text     "FirstTierUtilization",                                         limit: 65535
    t.text     "SecondTierUtilization",                                        limit: 65535
    t.text     "SBCHavingaBabyDeductible",                                     limit: 65535
    t.text     "SBCHavingaBabyCopayment",                                      limit: 65535
    t.text     "SBCHavingaBabyCoinsurance",                                    limit: 65535
    t.text     "SBCHavingaBabyLimit",                                          limit: 65535
    t.text     "SBCHavingDiabetesDeductible",                                  limit: 65535
    t.text     "SBCHavingDiabetesCopayment",                                   limit: 65535
    t.text     "SBCHavingDiabetesCoinsurance",                                 limit: 65535
    t.text     "SBCHavingDiabetesLimit",                                       limit: 65535
    t.text     "SBCHavingSimplefractureDeductible",                            limit: 65535
    t.text     "SBCHavingSimplefractureCopayment",                             limit: 65535
    t.text     "SBCHavingSimplefractureCoinsurance",                           limit: 65535
    t.text     "SBCHavingSimplefractureLimit",                                 limit: 65535
    t.text     "SpecialtyDrugMaximumCoinsurance",                              limit: 65535
    t.text     "InpatientCopaymentMaximumDays",                                limit: 65535
    t.text     "BeginPrimaryCareCostSharingAfterNumberOfVisits",               limit: 65535
    t.text     "BeginPrimaryCareDeductibleCoinsuranceAfterNumberOfCopays",     limit: 65535
    t.text     "MEHBInnTier1IndividualMOOP",                                   limit: 65535
    t.text     "MEHBInnTier1FamilyPerPersonMOOP",                              limit: 65535
    t.text     "MEHBInnTier1FamilyPerGroupMOOP",                               limit: 65535
    t.text     "MEHBInnTier2IndividualMOOP",                                   limit: 65535
    t.text     "MEHBInnTier2FamilyPerPersonMOOP",                              limit: 65535
    t.text     "MEHBInnTier2FamilyPerGroupMOOP",                               limit: 65535
    t.text     "MEHBOutOfNetIndividualMOOP",                                   limit: 65535
    t.text     "MEHBOutOfNetFamilyPerPersonMOOP",                              limit: 65535
    t.text     "MEHBOutOfNetFamilyPerGroupMOOP",                               limit: 65535
    t.text     "MEHBCombInnOonIndividualMOOP",                                 limit: 65535
    t.text     "MEHBCombInnOonFamilyPerPersonMOOP",                            limit: 65535
    t.text     "MEHBCombInnOonFamilyPerGroupMOOP",                             limit: 65535
    t.text     "DEHBInnTier1IndividualMOOP",                                   limit: 65535
    t.text     "DEHBInnTier1FamilyPerPersonMOOP",                              limit: 65535
    t.text     "DEHBInnTier1FamilyPerGroupMOOP",                               limit: 65535
    t.text     "DEHBInnTier2IndividualMOOP",                                   limit: 65535
    t.text     "DEHBInnTier2FamilyPerPersonMOOP",                              limit: 65535
    t.text     "DEHBInnTier2FamilyPerGroupMOOP",                               limit: 65535
    t.text     "DEHBOutOfNetIndividualMOOP",                                   limit: 65535
    t.text     "DEHBOutOfNetFamilyPerPersonMOOP",                              limit: 65535
    t.text     "DEHBOutOfNetFamilyPerGroupMOOP",                               limit: 65535
    t.text     "DEHBCombInnOonIndividualMOOP",                                 limit: 65535
    t.text     "DEHBCombInnOonFamilyPerPersonMOOP",                            limit: 65535
    t.text     "DEHBCombInnOonFamilyPerGroupMOOP",                             limit: 65535
    t.text     "TEHBInnTier1IndividualMOOP",                                   limit: 65535
    t.text     "TEHBInnTier1FamilyPerPersonMOOP",                              limit: 65535
    t.text     "TEHBInnTier1FamilyPerGroupMOOP",                               limit: 65535
    t.text     "TEHBInnTier2IndividualMOOP",                                   limit: 65535
    t.text     "TEHBInnTier2FamilyPerPersonMOOP",                              limit: 65535
    t.text     "TEHBInnTier2FamilyPerGroupMOOP",                               limit: 65535
    t.text     "TEHBOutOfNetIndividualMOOP",                                   limit: 65535
    t.text     "TEHBOutOfNetFamilyPerPersonMOOP",                              limit: 65535
    t.text     "TEHBOutOfNetFamilyPerGroupMOOP",                               limit: 65535
    t.text     "TEHBCombInnOonIndividualMOOP",                                 limit: 65535
    t.text     "TEHBCombInnOonFamilyPerPersonMOOP",                            limit: 65535
    t.text     "TEHBCombInnOonFamilyPerGroupMOOP",                             limit: 65535
    t.text     "MEHBDedInnTier1Individual",                                    limit: 65535
    t.text     "MEHBDedInnTier1FamilyPerPerson",                               limit: 65535
    t.text     "MEHBDedInnTier1FamilyPerGroup",                                limit: 65535
    t.text     "MEHBDedInnTier1Coinsurance",                                   limit: 65535
    t.text     "MEHBDedInnTier2Individual",                                    limit: 65535
    t.text     "MEHBDedInnTier2FamilyPerPerson",                               limit: 65535
    t.text     "MEHBDedInnTier2FamilyPerGroup",                                limit: 65535
    t.text     "MEHBDedInnTier2Coinsurance",                                   limit: 65535
    t.text     "MEHBDedOutOfNetIndividual",                                    limit: 65535
    t.text     "MEHBDedOutOfNetFamilyPerPerson",                               limit: 65535
    t.text     "MEHBDedOutOfNetFamilyPerGroup",                                limit: 65535
    t.text     "MEHBDedCombInnOonIndividual",                                  limit: 65535
    t.text     "MEHBDedCombInnOonFamilyPerPerson",                             limit: 65535
    t.text     "MEHBDedCombInnOonFamilyPerGroup",                              limit: 65535
    t.text     "DEHBDedInnTier1Individual",                                    limit: 65535
    t.text     "DEHBDedInnTier1FamilyPerPerson",                               limit: 65535
    t.text     "DEHBDedInnTier1FamilyPerGroup",                                limit: 65535
    t.text     "DEHBDedInnTier1Coinsurance",                                   limit: 65535
    t.text     "DEHBDedInnTier2Individual",                                    limit: 65535
    t.text     "DEHBDedInnTier2FamilyPerPerson",                               limit: 65535
    t.text     "DEHBDedInnTier2FamilyPerGroup",                                limit: 65535
    t.text     "DEHBDedInnTier2Coinsurance",                                   limit: 65535
    t.text     "DEHBDedOutOfNetIndividual",                                    limit: 65535
    t.text     "DEHBDedOutOfNetFamilyPerPerson",                               limit: 65535
    t.text     "DEHBDedOutOfNetFamilyPerGroup",                                limit: 65535
    t.text     "DEHBDedCombInnOonIndividual",                                  limit: 65535
    t.text     "DEHBDedCombInnOonFamilyPerPerson",                             limit: 65535
    t.text     "DEHBDedCombInnOonFamilyPerGroup",                              limit: 65535
    t.text     "TEHBDedInnTier1Individual",                                    limit: 65535
    t.text     "TEHBDedInnTier1FamilyPerPerson",                               limit: 65535
    t.text     "TEHBDedInnTier1FamilyPerGroup",                                limit: 65535
    t.text     "TEHBDedInnTier1Coinsurance",                                   limit: 65535
    t.text     "TEHBDedInnTier2Individual",                                    limit: 65535
    t.text     "TEHBDedInnTier2FamilyPerPerson",                               limit: 65535
    t.text     "TEHBDedInnTier2FamilyPerGroup",                                limit: 65535
    t.text     "TEHBDedInnTier2Coinsurance",                                   limit: 65535
    t.text     "TEHBDedOutOfNetIndividual",                                    limit: 65535
    t.text     "TEHBDedOutOfNetFamilyPerPerson",                               limit: 65535
    t.text     "TEHBDedOutOfNetFamilyPerGroup",                                limit: 65535
    t.text     "TEHBDedCombInnOonIndividual",                                  limit: 65535
    t.text     "TEHBDedCombInnOonFamilyPerPerson",                             limit: 65535
    t.text     "TEHBDedCombInnOonFamilyPerGroup",                              limit: 65535
    t.text     "IsHSAEligible",                                                limit: 65535
    t.text     "HSAOrHRAEmployerContribution",                                 limit: 65535
    t.text     "HSAOrHRAEmployerContributionAmount",                           limit: 65535
    t.text     "URLForSummaryofBenefitsCoverage",                              limit: 65535
    t.text     "PlanBrochure",                                                 limit: 65535
    t.text     "RowNumber",                                                    limit: 65535
    t.datetime "created_at",                                                                 null: false
    t.datetime "updated_at",                                                                 null: false
    t.index ["NetworkId"], name: "index_plans_on_NetworkId", length: { NetworkId: 255 }, using: :btree
  end

  create_table "qualities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "IssuerID",                                                       limit: 65535
    t.text     "PlanID",                                                         limit: 65535
    t.text     "GlobalRatingValue",                                              limit: 65535
    t.text     "EnrolleeExperienceRatingValue",                                  limit: 65535
    t.text     "PlanEfficiencyAffordabilityManagementRatingValue",               limit: 65535
    t.text     "ClinicalQualityManagementRatingValue",                           limit: 65535
    t.text     "NotRatedReason_GlobalRatingDesc",                                limit: 65535
    t.text     "NotRatedReason_EnrolleeExperienceRatingDesc",                    limit: 65535
    t.text     "NotRatedReason_PlanEfficiencyAffordabilityManagementRatingDesc", limit: 65535
    t.text     "NotRatedReason_ClinicalQualityManagementRatingDesc",             limit: 65535
    t.datetime "created_at",                                                                   null: false
    t.datetime "updated_at",                                                                   null: false
    t.index ["PlanID"], name: "index_qualities_on_PlanID", length: { PlanID: 255 }, using: :btree
  end

  create_table "rates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "BusinessYear",                              limit: 65535
    t.text     "StateCode",                                 limit: 65535
    t.text     "IssuerId",                                  limit: 65535
    t.text     "SourceName",                                limit: 65535
    t.text     "VersionNum",                                limit: 65535
    t.datetime "ImportDate"
    t.text     "IssuerId2",                                 limit: 65535
    t.text     "FederalTIN",                                limit: 65535
    t.date     "RateEffectiveDate"
    t.date     "RateExpirationDate"
    t.text     "PlanId",                                    limit: 65535
    t.text     "RatingAreaId",                              limit: 65535
    t.text     "Tobacco",                                   limit: 65535
    t.text     "Age",                                       limit: 65535
    t.text     "IndividualRate",                            limit: 65535
    t.text     "IndividualTobaccoRate",                     limit: 65535
    t.text     "Couple",                                    limit: 65535
    t.text     "PrimarySubscriberAndOneDependent",          limit: 65535
    t.text     "PrimarySubscriberAndTwoDependents",         limit: 65535
    t.text     "PrimarySubscriberAndThreeOrMoreDependents", limit: 65535
    t.text     "CoupleAndOneDependent",                     limit: 65535
    t.text     "CoupleAndTwoDependents",                    limit: 65535
    t.text     "CoupleAndThreeOrMoreDependents",            limit: 65535
    t.text     "RowNumber",                                 limit: 65535
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.index ["FederalTIN"], name: "index_rates_on_FederalTIN", length: { FederalTIN: 255 }, using: :btree
    t.index ["PlanId"], name: "index_rates_on_PlanID", length: { PlanId: 255 }, using: :btree
  end

  create_table "serviceareas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "BusinessYear",               limit: 65535
    t.text     "StateCode",                  limit: 65535
    t.text     "IssuerId",                   limit: 65535
    t.text     "SourceName",                 limit: 65535
    t.datetime "ImportDate"
    t.text     "ServiceAreaId",              limit: 65535
    t.text     "ServiceAreaName",            limit: 65535
    t.text     "CoverEntireState",           limit: 65535
    t.text     "County",                     limit: 65535
    t.text     "PartialCounty",              limit: 65535
    t.text     "ZipCodes",                   limit: 65535
    t.text     "PartialCountyJustification", limit: 65535
    t.text     "MarketCoverage",             limit: 65535
    t.text     "DentalOnlyPlan",             limit: 65535
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "transparencies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "State",                              limit: 65535
    t.text     "IssuerName",                         limit: 65535
    t.text     "IssuerID",                           limit: 65535
    t.text     "IssuerDBAIfApplicable",              limit: 65535
    t.text     "URLClaimsPolicies",                  limit: 65535
    t.text     "NumberOfClaims2015",                 limit: 65535
    t.text     "NumberOfClaimsDenials",              limit: 65535
    t.text     "NumberOfInternalAppealsFiled",       limit: 65535
    t.text     "NumberOfInternalAppealsOverturned",  limit: 65535
    t.text     "PercentOfInternalAppealsOverturned", limit: 65535
    t.text     "NumberOfExternalAppealsFiled",       limit: 65535
    t.text     "NumberOfExternalAppealsOverturned",  limit: 65535
    t.text     "PercentOfExternalAppealsOverturned", limit: 65535
    t.text     "FinancialInformation",               limit: 65535
    t.text     "EnrollmentData",                     limit: 65535
    t.text     "DisenrollmentData",                  limit: 65535
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "zipmappings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "FULLZIP"
    t.string   "ZIP"
    t.string   "STATE_CODE"
    t.string   "COUNTY"
    t.float    "RES_RATIO",   limit: 24
    t.float    "BUS_RATIO",   limit: 24
    t.float    "OTH_RATIO",   limit: 24
    t.float    "TOT_RATIO",   limit: 24
    t.string   "COUNTY_NAME"
    t.string   "RATING_AREA"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
