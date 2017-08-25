class CreatePulses < ActiveRecord::Migration
  def change
    create_table :pulses do |t|
      t.integer :patient_id
      t.integer :pulse
      t.datetime :dt

      t.timestamps null: false
    end
  end
end
