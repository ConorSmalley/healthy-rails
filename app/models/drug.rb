class Drug < ActiveRecord::Base
    # has_many :medication_drugs
    belongs_to :medication_drugs
    validates :drug, :presence => true
end
