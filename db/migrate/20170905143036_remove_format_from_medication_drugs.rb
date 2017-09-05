class RemoveFormatFromMedicationDrugs < ActiveRecord::Migration
  def change
    remove_column :medication_drugs, :format, :string
  end
end
