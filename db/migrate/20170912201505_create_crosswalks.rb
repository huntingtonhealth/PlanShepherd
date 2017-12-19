class CreateCrosswalks < ActiveRecord::Migration[5.0]
  def change
    create_table :crosswalks do |t|
      t.text :State
      t.text :DentalPlan
      t.text :PlanID_2016
      t.text :IssuerID_2016
      t.text :MultistatePlan_2016
      t.text :MetalLevel_2016
      t.text :ChildAdultOnly_2016
      t.text :FIPSCode
      t.text :ZipCode
      t.text :CrosswalkLevel
      t.text :ReasonForCrosswalk
      t.text :PlanID_2017
      t.text :IssuerID_2017
      t.text :MultistatePlan_2017
      t.text :MetalLevel_2017
      t.text :ChildAdultOnly_2017
      t.text :AgeOffPlanID_2017
      t.text :IssuerID_AgeOff2017
      t.text :MultistatePlan_AgeOff2017
      t.text :MetalLevel_AgeOff2017
      t.text :ChildAdultOnly_AgeOff2017

      t.timestamps
    end
    
    add_index :crosswalks, :PlanID_2017
    add_foreign_key :crosswalks, :plans
    
  end
end
