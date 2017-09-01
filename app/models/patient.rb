class Patient < ActiveRecord::Base
    has_many :temperatures
    has_many :pulses
    has_many :blood_pressures
    belongs_to :blood_group, foreign_key: "bloodgroup_id"
    has_many :drug_administrations
    def fullname
        "#{title}. #{firstName} #{surname}"
    end
    def OD
        str = "ERR"
        return str
    end
    def medOD
        str = ""
        Drug.all.each do |drug|
            drugmg=0
            str = str + drug.drug
            DrugAdministration.where(patient_id: self.id).each do |da|
                Medication.where(id: da.medication_id).each do |m|
                    MedicationDrug.where(medication_id: m.id, drug_id: drug.id).each do |md|
                        drugmg = drugmg + (da.quantity * (md.drugMg / md.drugMl))
                    end
                end
            end
            str = str + " " + drugmg.to_s + " mg"
            str = str + "<br>"
        end
        return str
    end
    def medHistory
        str = ""
        DrugAdministration.where(patient_id: self.id).each do |da|
            str = str + da.dt.to_s + "<br>"
            str = str + da.quantity.to_s + " x "
            Medication.where(id: da.medication_id).each do |med|
                str = str + " " + Medication.find(med.id).formulatedName + "<br>" #med.medication
                MedicationDrug.where(medication_id: med.id).each do |md|
                    str = str + (da.quantity * md.drugMg).to_s + "Mg (" + da.quantity.to_s + " x " + md.drugMg.to_s + "Mg "
                    Drug.where(id: md.drug_id).each do |d|
                        str = str + d.drug + ")<br>"
                    end
                end
            end
            str = str + "<br>"
        end
        return str
    end
end
