class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstName
      t.string :surname

      t.timestamps null: false
    end
  end
end
