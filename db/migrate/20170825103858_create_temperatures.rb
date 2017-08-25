class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.integer :patient_id
      t.decimal :temperature
      t.datetime :dt

      t.timestamps null: false
    end
  end
end
