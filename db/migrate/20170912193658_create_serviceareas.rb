class CreateServiceareas < ActiveRecord::Migration[5.0]
  def change
    create_table :serviceareas do |t|
      t.text :BusinessYear
      t.text :StateCode
      t.text :IssuerId
      t.text :SourceName
      t.datetime :ImportDate
      t.text :ServiceAreaId
      t.text :ServiceAreaName
      t.text :CoverEntireState
      t.text :County
      t.text :PartialCounty
      t.text :ZipCodes
      t.text :PartialCountyJustification
      t.text :MarketCoverage
      t.text :DentalOnlyPlan

      t.timestamps
    end
  end
end
