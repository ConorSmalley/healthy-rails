class DrugAdministration < ActiveRecord::Base
    belongs_to :patient
    belongs_to :medication
    validates :patient_id, :presence => true
    validates :medication_id, :presence => true
    validates :quantity, :presence => true
end
