Instance: BHAClientExample
InstanceOf: BHAClient
Title: "Example BHA Client"
Description: "Example Client"
* meta.lastUpdated = "2024-06-01T12:00:00Z" // Effective date for the client record, used for reporting and determining which version of the IG applies to this client
// Optional Identifiers (1..* MS)
// * identifier[clientId].type = http://terminology.hl7.org/CodeSystem/v2-0203#PI
// * identifier[clientId].value = "C123456789"
// * identifier[clientId].system = "http://bha.colorado.gov/identifiers/client-id" 

* identifier[STATE_IDENTIFIER].type = BHAClientIdentifierTypeCS#STATE_IDENTIFIER
* identifier[STATE_IDENTIFIER].system = "urn:oid:2.16.840.1.113883.4.3.8" // https://terminology.hl7.org/7.1.0/en/NamingSystem-ColoradoDLN.html
* identifier[STATE_IDENTIFIER].value = "9876543210"

* identifier[SSN].type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
* identifier[SSN].value = "111-11-1111"
* identifier[SSN].system = "http://hl7.org/fhir/sid/us-ssn" 


// Demographics
* name[officialName] 
  * use = #official
  * family = "Jones"
  * given[0] = "Emma"
  * given[1] = "Nora"
  * suffix[0] = "Jr"

* birthDate = "1980-05-15" 
* gender = #female 
* address[home]
* address[home].line[+] = "123 Main St"
* address[home].line[+] = "Suite 300"
* address[home].city = "Denver"
* address[home].state = "CO"
* address[home].postalCode = "80205" 
* address[home].district = #01 "Adams" 
* address[home].period.start = "2023-01-01"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M

// Required Extensions (1..1)
//* extension[race].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2028-9 
* extension[race].extension[text].valueString = "Asian"

//* extension[bharace].valueCodeableConcept = BHARaceCS#02 "Asian"

//* extension[ethnicity].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[ethnicity].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 
* extension[ethnicity].extension[text].valueString = "Not Hispanic or Latino"

//* extension[birthsex].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[birthsex].valueCode = #F // Code for Female

//* extension[USVeteranStatus].url = "http://hl7.org/fhir/us/military-service/StructureDefinition/military-service-veteran-status"
* extension[USVeteranStatus].valueBoolean = true



* communication.language = urn:ietf:bcp:47#es "Spanish"
* communication.language.text = "Spanish"
* communication.preferred = true


