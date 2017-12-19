class CreateTransparencies < ActiveRecord::Migration[5.0]
  def change
    create_table :transparencies do |t|
      t.text :State
      t.text :IssuerName
      t.text :IssuerID
      t.text :IssuerDBAIfApplicable
      t.text :URLClaimsPolicies
      t.text :NumberOfClaims2015
      t.text :NumberOfClaimsDenials
      t.text :NumberOfInternalAppealsFiled
      t.text :NumberOfInternalAppealsOverturned
      t.text :PercentOfInternalAppealsOverturned
      t.text :NumberOfExternalAppealsFiled
      t.text :NumberOfExternalAppealsOverturned
      t.text :PercentOfExternalAppealsOverturned
      t.text :FinancialInformation
      t.text :EnrollmentData
      t.text :DisenrollmentData

      t.timestamps
    end
  end
end
