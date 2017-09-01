class AddQuantityToDrugAdministration < ActiveRecord::Migration
  def change
    add_column :drug_administrations, :quantity, :decimal
  end
end
