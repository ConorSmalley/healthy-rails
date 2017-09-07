class MedicationDrug < ActiveRecord::Base
    # belongs_to :medication
    # belongs_to :drug
    has_many :medication
    has_many :drug
    validates :medication, :presence => true
    validates :drug, :presence => true
    validates :drugMg, :presence => true
    validates :drugMl, :presence => true
end
