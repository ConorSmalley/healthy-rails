class CreateBloodPressures < ActiveRecord::Migration
  def change
    create_table :blood_pressures do |t|
      t.integer :patient_id
      t.integer :systolic
      t.integer :diastolic
      t.datetime :dt

      t.timestamps null: false
    end
  end
end
