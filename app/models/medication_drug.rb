class MedicationDrug < ActiveRecord::Base
    # belongs_to :medication
    # belongs_to :drug
    has_many :medication
    has_many :drug
end
