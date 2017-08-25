json.extract! patient, :id, :firstName, :surname, :created_at, :updated_at
json.url patient_url(patient, format: :json)
