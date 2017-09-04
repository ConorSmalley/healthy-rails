class AddAdult24HourDoseToDrug < ActiveRecord::Migration
  def change
    add_column :drugs, :adult24HourDose, :integer
    add_column :drugs, :otherDose, :integer
    add_column :drugs, :otherDoseHours, :integer
  end
end
