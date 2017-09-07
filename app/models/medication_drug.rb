class MedicationDrug < ActiveRecord::Base
    # belongs_to :medication
    # belongs_to :drug
    has_many :medication
    has_many :drug
    validates :medication_id, :presence => true
    validates :drug_id, :presence => true
    validates :drugMg, :presence => true
    validates :drugMl, :presence => true
end
