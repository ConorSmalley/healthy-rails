class CreateMedicationDrugs < ActiveRecord::Migration
  def change
    create_table :medication_drugs do |t|
      t.integer :medication_id
      t.integer :drug_id
      t.integer :drugMg
      t.integer :drugMl
      t.string :format

      t.timestamps null: false
    end
  end
end
