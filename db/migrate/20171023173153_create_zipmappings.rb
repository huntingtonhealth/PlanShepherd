class CreateZipmappings < ActiveRecord::Migration[5.0]
  def change
    create_table :zipmappings do |t|
      t.string :FULLZIP
      t.string :ZIP
      t.string :STATE_CODE
      t.string :COUNTY
      t.float :RES_RATIO
      t.float :BUS_RATIO
      t.float :OTH_RATIO
      t.float :TOT_RATIO
      t.string :COUNTY_NAME
      t.string :RATING_AREA

      t.timestamps
    end
  end
end
