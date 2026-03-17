Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type

Instance: BHAOrganizationExample
InstanceOf: BHAOrganization
Title: "Example Organization"
Description: "Example Organization record for a BHA clinic."

Usage: #example

//* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1234567893"

* active = true
* type = $organization-type#prov
* type.text = "Provider"
* name = "Community Health Clinic"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 555-555-5555"
* telecom[+].system = #email
* telecom[=].value = "hq@chc.example.org"
* address.line = "100 Hope Place"
* address.city = "Denver"
* address.state = "CO"
* address.postalCode = "11111"
* address.country = "USA"