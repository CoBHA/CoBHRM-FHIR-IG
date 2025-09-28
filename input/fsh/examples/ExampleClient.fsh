Instance: BHAClientExample
InstanceOf: BHAClient
Title: "Example BHA Client"
Description: "Example Client"

// Required Identifiers (1..* MS)
* identifier[0]
  // BHASO Client ID (Required 1..1 MS)
  * id = "clientId"
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PI
  * value = "C123456789" // 10 characters max
  * system = "http://bha.colorado.gov/identifiers/client-id" // Required by US Core Patient

* identifier[+]
  // Social Security Number (Optional 0..1 MS - included for completeness)
  * id = "SSN"
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
  * value = "999887777" // SSN value
  * system = "http://hl7.org/fhir/sid/us-ssn"


// Demographics
* name[0] 
  * use = #official
  * family = "Jones"
  * given[0] = "Emma"

* birthDate = "1980-05-15" 
* gender = #female 1..1 

// Required Extensions (1..1)
* extension[race].url = http://hl7.org/fhir/us/core/StructureDefinition/us-core-race
* extension[race].extension[0].url = #ombCategory
* extension[race].extension[0].valueCoding = http://hl7.org/fhir/v3/Race#2028-9 "Asian" // Example OMB Category

* extension[ethnicity].url = http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity
* extension[ethnicity].extension[0].url = #ombCategory
* extension[ethnicity].extension[0].valueCoding = http://hl7.org/fhir/v3/Ethnicity#2186-5 "Not Hispanic or Latino" // Example OMB Category

* extension[birthsex].url = http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex
* extension[birthsex].valueCode = #F // Code for Female

// Required Address (1..1 MS)
* address[0]
  * use = #home
  * line[0] = "123 Main St"
  * city = "Denver"
  * state = "CO"
  * postalCode = "80205" 
  // address.district must be from BHACountiesVS
  * district = #01 "Adams" 
  * period.start = "2023-01-01"


//* identifier[clientId].value = "ABC1234567"
//* identifier[clientId].type = http://terminology.hl7.org/CodeSystem/v2-0203#PI

//* name.family = "Doe"
//* name.given = "Jane"
//* birthDate = "1985-06-15"
//* birthSex = #female
//* gender = #female
//* ethnicity = #2135-2
//* race = #2028-9

//* extension[ethnicity].valueCodeableConcept = BHAEthnicityCS#1 "Hispanic/Latino (Mexican)"

//* address.line = "123 Main St"
//* address.city = "Denver" 
//* address.state = "CO"
//* address.postalCode = "80202"
//* address.district = "01"
