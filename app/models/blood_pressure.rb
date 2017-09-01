class BloodPressure < ActiveRecord::Base
    validates :patient_id, :presence => true
    validates :systolic, :presence => true
    validates :diastolic, :presence => true
    belongs_to :patient
end
