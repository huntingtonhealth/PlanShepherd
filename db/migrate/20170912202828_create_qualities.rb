class CreateQualities < ActiveRecord::Migration[5.0]
  def change
    create_table :qualities do |t|
      t.text :IssuerID
      t.text :PlanID
      t.text :GlobalRatingValue
      t.text :EnrolleeExperienceRatingValue
      t.text :PlanEfficiencyAffordabilityManagementRatingValue
      t.text :ClinicalQualityManagementRatingValue
      t.text :NotRatedReason_GlobalRatingDesc
      t.text :NotRatedReason_EnrolleeExperienceRatingDesc
      t.text :NotRatedReason_PlanEfficiencyAffordabilityManagementRatingDesc
      t.text :NotRatedReason_ClinicalQualityManagementRatingDesc

      t.timestamps
    end
    
    add_index :qualities, :PlanID, :length => 255
    add_foreign_key :qualities, :plans, :length => 255
    
  end
end
