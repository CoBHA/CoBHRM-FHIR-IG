Profile: BHAClient
Parent: $us-core-patient
Id: bha-client
Title: "Colorado BHA Client Profile"
Description: "Ths profile specifies the mandatory and must support data elements for capturing demographic information 
for Colorado BHA clients in order to support the BHA's annual reporting requirements."

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

// BHASO Client ID - not expected to come from clinic
// * identifier contains clientId 1..1 MS
// * identifier[clientId].type = http://terminology.hl7.org/CodeSystem/v2-0203#PI
// * identifier[clientId].value 1..1 MS
// * identifier[clientId] ^short = "The client's BHASO Client ID (10 characters max)"

// Colorado PEAK state ID when applicable  
// * identifier contains PEAKID 0..1 MS
// * identifier[PEAKID].type = http://terminology.hl7.org/CodeSystem/v2-0203#PI
// * identifier[PEAKID].value 1..1 MS
// * identifier[PEAKID] ^short = "The client's PEAK ID (X999999 format)"

// Social Security number when applicable  
* identifier contains SSN 0..1 MS
* identifier[SSN].system 1..1 MS
* identifier[SSN].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[SSN].value 1..1 MS
* identifier[SSN].type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
* identifier[SSN] ^short = "The client's Social Security number"

// Required demographics
// NOTE: Race, Ethnicity, and BirthSex should be restored to 1..1 when I can debug the example Client 
* name 1..* MS
* name ^short = "A name associated with the Client."
* birthDate 1..1 MS
* gender 1..1 MS
//* extension[race] 0..1
//* extension[ethnicity] 0..1
//* extension[birthsex] 0..1
* extension contains BHARace named bharace 1..1
* extension[bharace] ^short = "BHA race code"

// Extension for ethnicity (Hispanic/Latino)
//* extension contains BHAEthnicity named ethnicity 1..1 MS
// Address for county determination
* address MS
* address.postalCode 1..1 MS
* address.district 1..1 MS
* address.district from BHACountiesVS 
* maritalStatus 1..1 MS
* extension contains http://hl7.org/fhir/us/military-service/StructureDefinition/military-service-veteran-status named USVeteranStatus 0..1 MS
