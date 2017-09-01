class Medication < ActiveRecord::Base
    # has_many :medication_drugs
    belongs_to :medication_drugs
    has_many :drug_administrations
    def contains
        str = ""
        MedicationDrug.where(medication_id: self.id).each do |md|
            puts  md.drug_id
            str = str + md.drugMg.to_s + " mg " + Drug.find(md.drug_id).drug + "/ "
        end
        # return str
        # return str[0..str.length-3]
        return str[0..-3]
    end
    
    def formulatedName
        "#{medication}(#{contains})"
    end
end


