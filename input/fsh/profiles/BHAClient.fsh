Profile: BHAClient
Parent: $us-core-patient
Id: bha-client
Title: "Colorado BHA Client Profile"
Description: "Ths profile specifies the mandatory and must support data elements for capturing demographic information 
for Colorado BHA clients in order to support the BHA's annual reporting requirements."
* meta.lastUpdated MS

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

// BHASO Client ID - not expected to come from clinic
// * identifier contains clientId 1..1 MS
// * identifier[clientId].type = http://terminology.hl7.org/CodeSystem/v2-0203#PI
// * identifier[clientId].value 1..1 MS
// * identifier[clientId] ^short = "The client's BHASO Client ID (10 characters max)"

// Colorado PEAK state ID / universal ID
* identifier contains STATE_IDENTIFIER 1..1 MS
* identifier[STATE_IDENTIFIER].type 1..1 MS
* identifier[STATE_IDENTIFIER].type = http://terminology.hl7.org/CodeSystem/v2-0203#MA
* identifier[STATE_IDENTIFIER].value 1..1 MS
* identifier[STATE_IDENTIFIER] ^short = "The client's Colorado PEAK State ID / Universal ID"

// BHA Identifier (data conversion only)
* identifier contains BHA_IDENTIFIER 0..1 MS
* identifier[BHA_IDENTIFIER].type 1..1 MS
* identifier[BHA_IDENTIFIER].type = http://terminology.hl7.org/CodeSystem/v2-0203#AN
* identifier[BHA_IDENTIFIER].value 1..1 MS
* identifier[BHA_IDENTIFIER] ^short = "BHA Identifier (data conversion only)"

// Social Security number
* identifier contains SSN 1..1 MS
* identifier[SSN].system 1..1 MS
* identifier[SSN].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[SSN].value 1..1 MS
* identifier[SSN].type 1..1 MS
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

Mapping: BHAClient-Mapping
Source: BHAClient
Target: "https://coloradobehavioralhealthadministration.mintlify.app/"
Title: "Mapping from CO BHA CoBHRM to BHA Client (Patient) Profile"
* -> "CoBHA Client"
* meta.lastUpdated -> "Client: Effective Date"
* identifier[STATE_IDENTIFIER] -> "Client: Colorado PEAK State ID / Universal ID"
* identifier[BHA_IDENTIFIER] -> "Client: BHA Identifier"
* identifier[SSN] -> "Client: Social Security Number"
* birthDate -> "Client: DOB"
* name.family -> "Client: Last Name"
* name.given -> "Client: First Name"
* name.given -> "Client: Middle Name"
* name.suffix -> "Client: Name Suffix"
* address.line -> "Client: Last known address line 1"
* address.line -> "Client: Last known address line 2"
* address.city -> "Client: Last Known city"
* address.postalCode -> "Client: Zip Code of Residence"
* address.district -> "Client: County of Residence"
* extension[bharace] -> "Client: Race Codes"
* extension[ethnicity] -> "Client: Ethnicity"
* extension[USVeteranStatus] -> "Client: Veteran Status"
* communication.language -> "Client: Household Language"
* extension[birthsex] -> "Client: Sex at Birth"
* extension[genderIdentity] -> "Client: Gender Identity"




