Instance: BHAServiceIdentifierVS
InstanceOf: ValueSet
Title: "ValueSet for BHA Service Identifier Codes"
Description: "Service identifiers for BHA services/admissions"
Usage: #definition
* id = "bha-service-identifier-vs"
* name = "BHAServiceIdentifierVS"
* title = "ValueSet for BHA Service Identifier Codes"
* description = "Service identifiers for BHA services/admissions"
* status = #active
* experimental = false
* compose.include[+].system = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-service-identifier-cs"
* compose.include[=].filter[+].property = #concept
* compose.include[=].filter[=].op = #is-not-a
* compose.include[=].filter[=].value = "Retired"