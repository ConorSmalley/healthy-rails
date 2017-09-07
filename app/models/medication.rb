class Medication < ActiveRecord::Base
    # has_many :medication_drugs
    belongs_to :medication_drugs
    has_many :drug_administrations
    validates :medication, :presence => true
    validates :format, :presence => true
    def contains
        str = ""
        MedicationDrug.where(medication_id: self.id).each do |md|
            puts  md.drug_id
            str = str + md.drugMg.to_s + " mg " + (self.format == 'Liquid'? " / " + md.drugMl.to_s + " ml " : '')
            str = str + Drug.find(md.drug_id).drug + "/ "
        end
        # return str
        # return str[0..str.length-3]
        return str[0..-3]
    end
    
    def formulatedName
        "#{medication}(#{contains})"
    end
end


