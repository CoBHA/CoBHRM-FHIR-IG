Profile: BHAClient
Parent: $us-core-patient
Id: bha-client
Title: "Colorado BHA Client Profile"
Description: "Ths profile specifies the mandatory and must support data elements for capturing demographic information 
for Colorado BHA clients in order to support the BHA's annual reporting requirements."
* meta.lastUpdated 1..1 MS

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
* identifier[STATE_IDENTIFIER].type = BHAClientIdentifierTypeCS#STATE_IDENTIFIER
* identifier[STATE_IDENTIFIER].value 1..1 MS
* identifier[STATE_IDENTIFIER] ^short = "The client's Colorado PEAK State ID / Universal ID"

// BHA Identifier (data conversion only)
* identifier contains BHA_IDENTIFIER 0..1 MS
* identifier[BHA_IDENTIFIER].type 1..1 MS
* identifier[BHA_IDENTIFIER].type = BHAClientIdentifierTypeCS#BHA_IDENTIFIER
* identifier[BHA_IDENTIFIER].value 1..1 MS
* identifier[BHA_IDENTIFIER] ^short = "BHA Identifier (data conversion only)"

// TRAILS ID - required if child welfare is 1
* identifier contains TRAILS_IDENTIFIER 0..1 MS
* identifier[TRAILS_IDENTIFIER].type 1..1 MS
* identifier[TRAILS_IDENTIFIER].type = BHAClientIdentifierTypeCS#TRAILS_IDENTIFIER
* identifier[TRAILS_IDENTIFIER].value 1..1 MS
* identifier[TRAILS_IDENTIFIER] ^short = "The client's TRAILS ID"

// VERATO ID
* identifier contains VERATO_IDENTIFIER 0..1 MS
* identifier[VERATO_IDENTIFIER].type 1..1 MS
* identifier[VERATO_IDENTIFIER].type = BHAClientIdentifierTypeCS#VERATO_IDENTIFIER
* identifier[VERATO_IDENTIFIER].value 1..1 MS
* identifier[VERATO_IDENTIFIER] ^short = "The client's VERATO ID"

// Social Security number
* identifier contains SSN 1..1 MS
* identifier[SSN].system 1..1 MS
* identifier[SSN].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[SSN].value 1..1 MS
* identifier[SSN].type 1..1 MS
* identifier[SSN].type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
* identifier[SSN] ^short = "The client's Social Security number"

// Required demographics

// Slice is on name, where a use of official is required, and must have last and first name.
* name 1..* MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name contains officialName 1..* MS
* name[officialName].use 1..1 MS
* name[officialName].use = #official
* name[officialName].family 1..1 MS
* name[officialName].given 1..* MS
* name[officialName].suffix 0..* MS
* name[officialName] ^short = "A name associated with the Client."

* birthDate 1..1 MS
* gender 1..1 MS
* extension[ethnicity] 1.. MS
* extension[birthsex] 1.. MS
* extension[genderIdentity] MS

* extension[race] 1.. MS // mapping between BHA race codes and us-core in BHAClientRaceCM
//* extension contains BHARace named bharace 1..1
//* extension[bharace] ^short = "BHA race code"

// Extension for ethnicity (Hispanic/Latino)
//* extension contains BHAEthnicity named ethnicity 1..1 MS

// slice on address for use home
// Address for county determination
* address 1..1 MS
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address contains home 1..1 MS
* address[home].use 1..1 MS
* address[home].use = #home
* address[home].district 1..1 MS
* address[home].district from BHACountiesVS 
* address[home].state 1..1 MS
* address[home].line MS
* address[home].city MS
* address[home].postalCode MS // required if county is not 77 or 99

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
* identifier[TRAILS_IDENTIFIER] -> "Client: TRAILS Identifier"
* identifier[VERATO_IDENTIFIER] -> "Client: VERATO Identifier"
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
* extension[race] -> "Client: Race Codes"
* extension[ethnicity] -> "Client: Ethnicity"
* extension[USVeteranStatus] -> "Client: Veteran Status"
* communication.language -> "Client: Household Language"
* extension[birthsex] -> "Client: Sex at Birth"
* extension[genderIdentity] -> "Client: Gender Identity"
* maritalStatus -> "Admission: Marital Status"




