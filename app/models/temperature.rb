class Temperature < ActiveRecord::Base
    validates :patient_id, :presence => true
    validates :temperature, :presence => true
    belongs_to :patient
end
