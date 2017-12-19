class CreateNetworks < ActiveRecord::Migration[5.0]
  def change
    create_table :networks do |t|
      t.text :BusinessYear
      t.text :StateCode
      t.text :IssuerId
      t.text :SourceName
      t.datetime :ImportDate
      t.text :NetworkName
      t.text :NetworkId
      t.text :NetworkURL
      t.text :MarketCoverage
      t.text :DentalOnlyPlan

      t.timestamps
    end
  end
end
