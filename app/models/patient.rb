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
    def meds
        str = ""
        DrugAdministration.where(patient_id: self.id).each do |da|
            # str = str + da.quantity.to_s + " "
            puts da
            str = str + "pid: " + da.patient_id.to_s + "<br>"
            str = str + "quantity: " + da.quantity.to_s
            # MedicationDrug.where(medication_id: da.medication_id).each do |md|
            #     str = str + md.drugMg.to_s + " " + md.drugMl.to_s + " "
            #     Drug.where(id: md.drug_id).each do |dr|
            #          str = str + dr.drug
            #     end
            # end
            str = str + "<br>" + "<br>"
        end
        # puts str
        return str
        # return "test"
    end
end
