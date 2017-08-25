class AddBloodgroupIdToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :bloodgroup_id, :integer
  end
end
