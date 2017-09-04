class Patient < ActiveRecord::Base
    has_many :temperatures
    has_many :pulses
    has_many :blood_pressures
    belongs_to :blood_group, foreign_key: "bloodgroup_id"
    has_many :drug_administrations
    def fullname
        "#{title}. #{firstName} #{surname}"
    end
    def info
        str = ""
        if isOD.length > 0
            str = str + '<p class="text-center text-danger">Overdosing on ' + isOD[0..(isOD.length - 3)] + '</p>'
        else
        end
        return str
    end
    def drugs
        return "drugs"
    end
    def medOD
        str = ""
        str = str + '<div class="row border"><div class="col-md-4">Drug</div><div class="col-md-4">24Hr Dose</div><div class="col-md-4">Dosage/Hour</div></div>'
        Drug.all.each do |drug|
            drugmg24 = 0
            
            DrugAdministration.where(patient_id: self.id, dt: ((DateTime.now-24.hours)..DateTime.now)).each do |da|
                Medication.where(id: da.medication_id).each do |m|
                    MedicationDrug.where(medication_id: m.id, drug_id: drug.id).each do |md|
                        drugmg24 = drugmg24 + (da.quantity * (md.drugMg / md.drugMl))
                    end
                end
            end
            if drugmg24 == 0
            else
                str = str + '<div class="row border">'
                str = str + '<div class="col-md-4">' + drug.drug + '</div>'
                str = str + '<div class="col-md-4'
                if drug.adult24HourDose.present?
                    if (drugmg24.to_i) < (drug.adult24HourDose.to_i)
                        str = str + " text-success"
                    else
                        str = str + " text-danger"
                    end
                else
                end
                # (drug.adult24HourDose.present? & (drug.adult24HourDose <= drugmg) ?  'text-danger' : '' )
                str = str + '">'#24 hour dose
                str = str + " " + drugmg24.to_s + " mg" + (drug.adult24HourDose.present? ? " / " + drug.adult24HourDose.to_s + " mg" : "")
                str = str + "</div>"
                str = str + '<div class="col-md-4">'
                str = str + "</div>"
                str = str + "</div>"
            end
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
    def test
        query = <<-SQL
          SELECT patients.*,
          FROM  patients
        SQL
        self.find_by_sql(query)
    end
    def isOD
        str = ""
        Drug.all.each do |drug|
            drugmg24 = 0
            
            DrugAdministration.where(patient_id: self.id, dt: ((DateTime.now-24.hours)..DateTime.now)).each do |da|
                Medication.where(id: da.medication_id).each do |m|
                    MedicationDrug.where(medication_id: m.id, drug_id: drug.id).each do |md|
                        drugmg24 = drugmg24 + (da.quantity * (md.drugMg / md.drugMl))
                    end
                end
            end
            if drugmg24 == 0
            else
                if drug.adult24HourDose.present?
                    if (drugmg24.to_i) < (drug.adult24HourDose.to_i)
                    else
                        str = str + drug.drug + ", "
                    end
                else
                end
            end
        end
        return str
    end
end