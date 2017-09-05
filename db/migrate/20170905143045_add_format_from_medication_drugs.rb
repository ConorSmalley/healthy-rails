class AddFormatFromMedicationDrugs < ActiveRecord::Migration
  def change
    add_column :medications, :format, :string
  end
end
