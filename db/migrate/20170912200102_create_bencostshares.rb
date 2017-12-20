class CreateBencostshares < ActiveRecord::Migration[5.0]
  def change
    create_table :bencostshares do |t|
      t.text :BusinessYear
      t.text :StateCode
      t.text :IssuerId
      t.text :SourceName
      t.text :VersionNum
      t.datetime :ImportDate
      t.text :IssuerId2
      t.text :StateCode2
      t.text :StandardComponentId
      t.text :PlanId
      t.text :BenefitName
      t.text :CopayInnTier1
      t.text :CopayInnTier2
      t.text :CopayOutofNet
      t.text :CoinsInnTier1
      t.text :CoinsInnTier2
      t.text :CoinsOutofNet
      t.text :IsEHB
      t.text :IsStateMandate
      t.text :IsCovered
      t.text :QuantLimitOnSvc
      t.text :LimitQty
      t.text :LimitUnit
      t.text :MinimumStay
      t.text :Exclusions
      t.text :Explanation
      t.text :EHBVarReason
      t.text :IsSubjtoDedTier1
      t.text :IsSubjtoDedTier2
      t.text :IsExclFromInnMOOP
      t.text :IsExclFromOonMOOP
      t.text :RowNumber

      t.timestamps
    end
    
    add_index :bencostshares, :PlanID, :length => 255
    add_index :bencostshares, :StandardComponentID, :length => 255
    add_foreign_key :bencostshares, :plans, :length => 255
    
  end
end
