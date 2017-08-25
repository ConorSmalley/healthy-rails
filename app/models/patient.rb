class Patient < ActiveRecord::Base
    has_many :temperatures
    has_many :pulses
    has_many :vlood_pressures
    belongs_to :blood_group, foreign_key: "bloodgroup_id"
    def fullname
        "#{firstName} #{surname}"
    end
end
