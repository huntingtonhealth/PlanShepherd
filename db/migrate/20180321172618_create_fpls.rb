class CreateFpls < ActiveRecord::Migration[5.0]
  def change
    create_table :fpls do |t|
      t.text :nindivs
      t.text :contiguous
      t.text :alaska
      t.text :hawaii
      t.text :year

      t.timestamps
    end
  end
end
