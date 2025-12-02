
Instance: BHAServiceExample
InstanceOf: BHAService
Description: "Example EpisodeOfCare record for a BHA service"

Usage: #example
* meta.profile = "/StructureDefinition-bha-service.html"
// * status = #final
// Required Identifiers (1..* MS)
//* identifier[BHASOEncounterId].type = #BHASOID
* identifier[BHASOEncounterId].type.coding[0].system = "http://bha.colorado.gov/fhir/test/CodeSystem/bha-encounter-id-type-cs"
* identifier[BHASOEncounterId].type.coding[0].code = #BHASOID
* identifier[BHASOEncounterId].value = "111"
* identifier[BHASOEncounterId].system = "http://bha.colorado.gov/fhir/test/CodeSystem/bha-encounter-id-type-cs" 

* patient = Reference(Patient/BHAClientExample) "Emma Jones"
* status = #finished
* type[+]
* type[=].coding.system = "http://bha.colorado.gov/fhir/test/CodeSystem/bha-service-identifier-cs"
* type[=].coding.code = #01
* type[=].coding.display = "Ambulatory Medical Withdrawal Management"
