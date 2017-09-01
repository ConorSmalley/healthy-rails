class Pulse < ActiveRecord::Base
    validates :patient_id, :presence => true
    validates :pulse, :presence => true
    belongs_to :patient
end
