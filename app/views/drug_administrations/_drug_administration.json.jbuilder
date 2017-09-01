json.extract! drug_administration, :id, :patient_id, :medication_id, :dt, :created_at, :updated_at
json.url drug_administration_url(drug_administration, format: :json)
