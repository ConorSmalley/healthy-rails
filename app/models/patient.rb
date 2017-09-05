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
        return str
    end

    def drugsIn24Hours
        str = ""
        # SELECT 
        #     drugs.drug,
        #     sum(medication_drugs.drugMg / medication_drugs.drugMl) as 'tst'
        # FROM 
        # drug_administrations 
        # inner join medications on drug_administrations.medication_id = medications.id
        # inner join medication_drugs on medication.id = medication_drugs.medication_id
        # inner join drugs on medication_drugs.drug_id = drugs.id
        # where drug_administrations.dt >= 'start'
        # group by
        # drugs.drug
        abc = DrugAdministration.select(
          [
            Drug.arel_table[:drug], Arel::Nodes::NamedFunction.new(
              'sum', [
                MedicationDrug.arel_table[:drugMg] / MedicationDrug.arel_table[:drugMl] * DrugAdministration.arel_table[:quantity]
              ]
            ).as('tst')
          ]
        # ).where(DrugAdministration.arel_table[:dt].gteq(DateTime.now-24.hours)).joins(
        ).where(DrugAdministration.arel_table[:dt].gteq($strt)).where(DrugAdministration.arel_table[:dt].lteq($endd)).joins(
          DrugAdministration.arel_table.join(Medication.arel_table).on(
            DrugAdministration.arel_table[:medication_id].eq(Medication.arel_table[:id])
          ).join_sources
        ).joins(
          DrugAdministration.arel_table.join(MedicationDrug.arel_table).on(
            Medication.arel_table[:id].eq(MedicationDrug.arel_table[:medication_id])
          ).join_sources
        ).joins(
          DrugAdministration.arel_table.join(Drug.arel_table).on(
            MedicationDrug.arel_table[:drug_id].eq(Drug.arel_table[:id])
          ).join_sources
        ).group(Drug.arel_table[:drug])

        abc.each do |da|
            # puts "med " + da.medication.medication
            str = str + da.drug + " " + da.tst.to_s  + "Mg<br>"
        end
        return str
    end
    def medHistory
        str = ""
        DrugAdministration.where(patient_id: self.id, dt: $strt..$endd).each do |da|
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