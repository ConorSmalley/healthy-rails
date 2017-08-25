class CreateBloodGroups < ActiveRecord::Migration
  def change
    create_table :blood_groups do |t|
      t.string :bloodgroup

      t.timestamps null: false
    end
  end
end
