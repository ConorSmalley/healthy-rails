BloodGroup.create!([
  {bloodgroup: "A+"},
  {bloodgroup: "A-"},
  {bloodgroup: "B+"},
  {bloodgroup: "B-"},
  {bloodgroup: "AB+"},
  {bloodgroup: "AB-"},
  {bloodgroup: "O+"},
  {bloodgroup: "O-"}
])
BloodPressure.create!([
  {patient_id: 1, systolic: 120, diastolic: 75, dt: "2017-08-30 14:31:00"}
])
Drug.create!([
  {drug: "Paracetamol"},
  {drug: "Ibuprofen"},
  {drug: "Codeine"},
  {drug: "Loperamide Hydrochloride"}
])
DrugAdministration.create!([
  {patient_id: 1, medication_id: 4, dt: "2017-08-31 14:38:00", quantity: "2.0"},
  {patient_id: 2, medication_id: 1, dt: "2017-08-31 15:45:00", quantity: "2.0"},
  {patient_id: 1, medication_id: 2, dt: "2017-09-01 13:05:00", quantity: "2.0"},
  {patient_id: 1, medication_id: 5, dt: "2017-09-01 13:06:00", quantity: "1.0"},
  {patient_id: 1, medication_id: 2, dt: "2017-09-01 14:44:00", quantity: "8.0"},
  {patient_id: 1, medication_id: 1, dt: "2017-09-01 14:50:00", quantity: "4.0"},
  {patient_id: 2, medication_id: 3, dt: "2017-09-01 15:00:00", quantity: "10.0"},
  {patient_id: 1, medication_id: 1, dt: "2017-09-01 15:31:00", quantity: "12.0"},
  {patient_id: 1, medication_id: 1, dt: "2017-09-04 21:00:00", quantity: "2.0"},
  {patient_id: 3, medication_id: 6, dt: "2017-09-05 14:26:00", quantity: "10.0"},
  {patient_id: 3, medication_id: 3, dt: "2017-09-05 14:36:00", quantity: "5.0"},
  {patient_id: 3, medication_id: 4, dt: "2017-09-05 14:41:00", quantity: "1.0"},
  {patient_id: 3, medication_id: 7, dt: "2017-09-05 15:30:00", quantity: "7.5"}
])
Medication.create!([
  {medication: "Ibuprofen", format: "Tablet"},
  {medication: "Co-Codamol", format: "Tablet"},
  {medication: "Loperamide", format: "Tablet"},
  {medication: "Co-Codamol", format: "Tablet"},
  {medication: "Paracetamol", format: "Tablet"},
  {medication: "Paracetamol", format: "Liquid"},
  {medication: "Ibuprofen", format: "Liquid"}
])
MedicationDrug.create!([
  {medication_id: 1, drug_id: 2, drugMg: 200, drugMl: 1},
  {medication_id: 2, drug_id: 3, drugMg: 8, drugMl: 1},
  {medication_id: 2, drug_id: 1, drugMg: 500, drugMl: 1},
  {medication_id: 3, drug_id: 4, drugMg: 2, drugMl: 1},
  {medication_id: 4, drug_id: 3, drugMg: 12, drugMl: 1},
  {medication_id: 4, drug_id: 1, drugMg: 500, drugMl: 1},
  {medication_id: 5, drug_id: 1, drugMg: 500, drugMl: 1},
  {medication_id: 6, drug_id: 1, drugMg: 120, drugMl: 5},
  {medication_id: 7, drug_id: 2, drugMg: 100, drugMl: 5}
])
Patient.create!([
  {firstName: "Conor", surname: "Smalley", bloodgroup_id: 5, title: "Mr", gender: "Male"},
  {firstName: "Lauren", surname: "Camm", bloodgroup_id: 7, title: "Miss", gender: "Female"},
  {firstName: "Isabel", surname: "Smalley", bloodgroup_id: nil, title: "Miss", gender: "Female"}
])
Pulse.create!([
  {patient_id: 1, pulse: 54, dt: "2017-08-30 10:41:00"},
  {patient_id: 2, pulse: 99, dt: "2017-08-30 10:50:00"},
  {patient_id: 1, pulse: 59, dt: "2017-08-30 10:58:00"},
  {patient_id: 1, pulse: 58, dt: "2017-08-30 12:14:00"},
  {patient_id: 1, pulse: 106, dt: "2017-08-30 12:38:00"},
  {patient_id: 1, pulse: 106, dt: "2017-08-30 12:38:00"},
  {patient_id: 1, pulse: 12, dt: "2017-08-30 12:41:00"},
  {patient_id: 1, pulse: 69, dt: "2017-08-30 13:57:00"},
  {patient_id: 1, pulse: 81, dt: "2017-08-30 14:12:00"},
  {patient_id: 1, pulse: 63, dt: "2017-08-31 14:41:00"},
  {patient_id: 1, pulse: 62, dt: "2017-09-01 11:43:00"},
  {patient_id: 1, pulse: 62, dt: "2017-09-01 13:31:00"},
  {patient_id: 1, pulse: 67, dt: "2017-09-05 13:49:00"},
  {patient_id: 1, pulse: 60, dt: "2017-09-05 15:31:00"},
  {patient_id: 1, pulse: 170, dt: "2016-11-05 15:32:00"}
])
Temperature.create!([
  {patient_id: 1, temperature: "37.0", dt: "2017-08-30 11:00:00"},
  {patient_id: 1, temperature: "90.0", dt: "2017-08-30 12:35:00"},
  {patient_id: 1, temperature: "37.9", dt: "2017-08-30 14:30:00"},
  {patient_id: 1, temperature: "45.0", dt: "2017-09-01 13:25:00"},
  {patient_id: 1, temperature: "38.1", dt: "2017-09-05 15:30:00"}
])
