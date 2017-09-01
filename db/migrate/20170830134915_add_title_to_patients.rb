class AddTitleToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :title, :string
  end
end
