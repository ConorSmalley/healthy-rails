class BloodGroup < ActiveRecord::Base
    validates :bloodgroup, :presence => true
    has_many :patients
end
