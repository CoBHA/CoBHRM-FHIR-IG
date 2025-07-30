Profile: BHAPatient
Parent: Patient
Id: bha-patient
Title: "BHA Patient Profile"
Description: "Patient profile for BHA CCAR reporting with required demographics"

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

// Client ID - required
* identifier contains clientId 1..1 MS
* identifier[clientId].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[clientId].value 1..1 MS
* identifier[clientId] ^short = "BHA Client ID (10 characters max)"

// Medicaid ID when applicable  
* identifier contains medicaidId 0..1 MS
* identifier[medicaidId].type = http://terminology.hl7.org/CodeSystem/v2-0203#MA
* identifier[medicaidId].value 1..1 MS
* identifier[medicaidId] ^short = "Medicaid ID (X999999 format)"

// Required demographics
* name 1..* MS
* birthDate 1..1 MS
* gender 1..1 MS

// Extension for ethnicity (Hispanic/Latino)
* extension contains BHAEthnicity named ethnicity 1..1 MS

// Address for county determination
* address 0..* MS
* address.postalCode MS
* address.state MS
