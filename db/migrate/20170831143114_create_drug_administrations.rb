class CreateDrugAdministrations < ActiveRecord::Migration
  def change
    create_table :drug_administrations do |t|
      t.integer :patient_id
      t.integer :medication_id
      t.datetime :dt

      t.timestamps null: false
    end
  end
end
