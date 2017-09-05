class RemoveAdult24HourDoseFromDrugs < ActiveRecord::Migration
  def change
    remove_column :drugs, :adult24HourDose, :integer
    remove_column :drugs, :otherDose, :integer
    remove_column :drugs, :otherDoseHours, :integer
  end
end
