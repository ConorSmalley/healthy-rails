# healthy-rails
healthy-rails is health based web app build using Ruby on Rails (not that you'd have ever guessed that :stuck_out_tongue_winking_eye:)

[![Code Climate](https://codeclimate.com/github/ConorSmalley/healthy-rails/badges/gpa.svg)](https://codeclimate.com/github/ConorSmalley/healthy-rails) 
[![Build Status](https://travis-ci.org/ConorSmalley/healthy-rails.png?branch=master)](https://travis-ci.org/ConorSmalley/healthy-rails)
[![Inline docs](http://inch-ci.org/github/ConorSmalley/healthy-rails.svg?branch=master)](http://inch-ci.org/github/ConorSmalley/healthy-rails)

## Database Info
### Class Tables
Class | Table
--- | ---
Patient | patients
Temperature | temperatures
Pulse | pulses
BloodPressure | blood_pressures
Medication | medications
Drug | drugs
MedicationDrug | medication_drugs
DrugAdministration | drug_administrations

#### Patient

field | name in model | type
--- | --- | ---
id | id | integer
First Name | firstName | string
Surname | surname | string
Gender | gender | string
Blood Group | bloodgroup_id | integer

##### temperatures
field | name in model | type
--- | --- | ---
id | id | integer
Temperature | temperature | decimal
timestamp | dt | DateTime

##### pulses

field | name in model | type
--- | --- | ---
id | id | integer
Pulse | pulse | integer
timestamp | dt | DateTime

##### blood pressures
field | name in model | type
--- | --- | ---
id | id | integer
Systolic | systolic | integer
Diastolic | diastolic | integer
timestamp | dt | DateTime