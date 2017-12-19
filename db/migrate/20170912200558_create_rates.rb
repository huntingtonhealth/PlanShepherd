class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.text :BusinessYear
      t.text :StateCode
      t.text :IssuerId
      t.text :SourceName
      t.text :VersionNum
      t.datetime :ImportDate
      t.text :IssuerId2
      t.text :FederalTIN
      t.date :RateEffectiveDate
      t.date :RateExpirationDate
      t.text :PlanId
      t.text :RatingAreaId
      t.text :Tobacco
      t.text :Age
      t.text :IndividualRate
      t.text :IndividualTobaccoRate
      t.text :Couple
      t.text :PrimarySubscriberAndOneDependent
      t.text :PrimarySubscriberAndTwoDependents
      t.text :PrimarySubscriberAndThreeOrMoreDependents
      t.text :CoupleAndOneDependent
      t.text :CoupleAndTwoDependents
      t.text :CoupleAndThreeOrMoreDependents
      t.text :RowNumber

      t.timestamps
    end
    
    add_index :rates, :PlanID
    add_index :rates, :FederalTIN
    add_foreign_key :rates, :plans
    
  end
end
