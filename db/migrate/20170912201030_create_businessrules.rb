class CreateBusinessrules < ActiveRecord::Migration[5.0]
  def change
    create_table :businessrules do |t|
      t.text :BusinessYear
      t.text :StateCode
      t.text :IssuerId
      t.text :SourceName
      t.text :VersionNum
      t.datetime :ImportDate
      t.text :IssuerId2
      t.text :TIN
      t.text :ProductId
      t.text :StandardComponentId
      t.text :EnrolleeContractRateDeterminationRule
      t.text :TwoParentFamilyMaxDependentsRule
      t.text :SingleParentFamilyMaxDependentsRule
      t.text :DependentMaximumAgRule
      t.text :ChildrenOnlyContractMaxChildrenRule
      t.text :DomesticPartnerAsSpouseIndicator
      t.text :SameSexPartnerAsSpouseIndicator
      t.text :AgeDeterminationRule
      t.text :MinimumTobaccoFreeMonthsRule
      t.text :CohabitationRule
      t.text :RowNumber
      t.text :MarketCoverage
      t.text :DentalOnlyPlan

      t.timestamps
    end
    
    add_index :businessrules, :PlanID, :length => 255
    add_index :businessrules, :StandardComponentID, :length => 255
    add_index :businessrules, :TIN, :length => 255
    add_foreign_key :businessrules, :plans, :length => 255
    
  end
end
