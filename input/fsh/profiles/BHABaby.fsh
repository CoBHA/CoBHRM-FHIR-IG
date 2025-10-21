Profile: BHABaby
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id: bha-baby
Title: "Colorado BHA Special Connections-Baby Profile"
Description: "Client profile for BHA CCAR reporting with required demographics"

// Required demographics
// NOTE: Race, Ethnicity, and BirthSex should be restored to 1..1 when I can debug the example Client 
* name ^short = "A name associated with the baby."
* name.given 1..*
* name.family 1..1
* birthDate 1..1 MS
* gender 1..1 MS
* deceasedBoolean 1..1 MS
* extension[birthsex] 1..1
