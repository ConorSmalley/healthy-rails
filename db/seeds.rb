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
  {drug: "Codeine Phosphate"},
  {drug: "Loperamide Hydrochloride"},
  {drug: "Citalopram Hydrobromide"},
  {drug: "Sodium Alginate"},
  {drug: "Magnesium Alginate"}
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
  {patient_id: 3, medication_id: 7, dt: "2017-09-05 15:30:00", quantity: "7.5"},
  {patient_id: 1, medication_id: 7, dt: "2017-09-06 11:39:00", quantity: "15.0"},
  {patient_id: 2, medication_id: 8, dt: "2017-09-06 19:45:00", quantity: "1.0"},
  {patient_id: 2, medication_id: 8, dt: "2017-09-07 01:40:00", quantity: "1.0"},
  {patient_id: 2, medication_id: 8, dt: "2017-09-07 09:00:00", quantity: "1.0"},
  {patient_id: 2, medication_id: 5, dt: "2017-09-07 09:00:00", quantity: "2.0"},
  {patient_id: 1, medication_id: 5, dt: "2017-09-07 19:21:00", quantity: "4.0"},
  {patient_id: 2, medication_id: 9, dt: "2017-09-08 10:15:00", quantity: "1.0"},
  {patient_id: 3, medication_id: 10, dt: "2017-09-10 08:30:00", quantity: "2.0"}
])
Medication.create!([
  {medication: "Ibuprofen", format: "Tablet"},
  {medication: "Co-Codamol", format: "Tablet"},
  {medication: "Loperamide", format: "Tablet"},
  {medication: "Co-Codamol", format: "Tablet"},
  {medication: "Paracetamol", format: "Tablet"},
  {medication: "Paracetamol", format: "Liquid"},
  {medication: "Ibuprofen", format: "Liquid"},
  {medication: "Codeine Phosphate", format: "Tablet"},
  {medication: "Citalopram", format: "Tablet"},
  {medication: "Gavisgon Infant", format: "Powder"}
])
MedicationDrug.create!([
  {medication_id: 1, drug_id: 2, drugMg: "200.0", drugMl: "1.0"},
  {medication_id: 2, drug_id: 3, drugMg: "8.0", drugMl: "1.0"},
  {medication_id: 2, drug_id: 1, drugMg: "500.0", drugMl: "1.0"},
  {medication_id: 3, drug_id: 4, drugMg: "2.0", drugMl: "1.0"},
  {medication_id: 4, drug_id: 3, drugMg: "12.0", drugMl: "1.0"},
  {medication_id: 4, drug_id: 1, drugMg: "500.0", drugMl: "1.0"},
  {medication_id: 5, drug_id: 1, drugMg: "500.0", drugMl: "1.0"},
  {medication_id: 6, drug_id: 1, drugMg: "120.0", drugMl: "5.0"},
  {medication_id: 7, drug_id: 2, drugMg: "100.0", drugMl: "5.0"},
  {medication_id: 8, drug_id: 3, drugMg: "30.0", drugMl: "1.0"},
  {medication_id: 9, drug_id: 5, drugMg: "20.0", drugMl: "1.0"},
  {medication_id: 10, drug_id: 6, drugMg: "225.0", drugMl: "1.0"},
  {medication_id: 10, drug_id: 7, drugMg: "87.5", drugMl: "1.0"}
])
Patient.create!([
  {firstName: "Conor", surname: "Smalley", bloodgroup_id: 5, title: "Mr", gender: "Male"},
  {firstName: "Lauren", surname: "Camm", bloodgroup_id: 7, title: "Miss", gender: "Female"},
  {firstName: "Isabel", surname: "Smalley", bloodgroup_id: nil, title: "Miss", gender: "Female"},
  {firstName: "Andrew", surname: "Smalley", bloodgroup_id: nil, title: "Mr", gender: "Male"},
  {firstName: "Amanda", surname: "Smalley", bloodgroup_id: nil, title: "Mrs", gender: "Female"}
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
  {patient_id: 1, pulse: 170, dt: "2016-11-05 15:32:00"},
  {patient_id: 1, pulse: 55, dt: "2017-09-06 11:39:00"},
  {patient_id: 1, pulse: 65, dt: "2017-09-06 12:37:00"},
  {patient_id: 1, pulse: 68, dt: "2017-09-06 18:49:00"},
  {patient_id: 1, pulse: 61, dt: "2017-09-07 10:22:00"},
  {patient_id: 1, pulse: 71, dt: "2017-09-07 12:14:00"},
  {patient_id: 1, pulse: 78, dt: "2017-09-07 19:10:00"},
  {patient_id: 1, pulse: 70, dt: "2017-09-08 08:00:00"},
  {patient_id: 3, pulse: 113, dt: "2017-09-10 14:25:00"}
])
Temperature.create!([
  {patient_id: 1, temperature: "37.0", dt: "2017-08-30 11:00:00"},
  {patient_id: 1, temperature: "90.0", dt: "2017-08-30 12:35:00"},
  {patient_id: 1, temperature: "37.9", dt: "2017-08-30 14:30:00"},
  {patient_id: 1, temperature: "45.0", dt: "2017-09-01 13:25:00"},
  {patient_id: 1, temperature: "38.1", dt: "2017-09-05 15:30:00"},
  {patient_id: 3, temperature: "35.8", dt: "2017-09-10 14:07:00"},
  {patient_id: 3, temperature: "36.3", dt: "2017-09-10 14:23:00"},
  {patient_id: 3, temperature: "36.4", dt: "2017-09-10 14:41:00"}
])
