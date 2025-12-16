
Instance: BHAEpisodeExample
InstanceOf: BHAEpisode
Title: "Example Episode"
Description: "Example Episode of Care record for a BHA service/admission"

Usage: #example

// * status = #final

// Optional BHASO Admission Identifier -- not expected from point of care systems
// * identifier[BHASOEpisodeId].type.coding[0].system = "http://bha.colorado.gov/fhir/test/CodeSystem/bha-episode-id-type-cs"
// * identifier[BHASOEpisodeId].type.coding[0].code = #BHASOID
// * identifier[BHASOEpisodeId].value = "111"
// * identifier[BHASOEpisodeId].system = "http://bha.colorado.gov/fhir/test/CodeSystem/bha-episode-id-type-cs" 

* patient = Reference(Patient/BHAClientExample) "Emma Jones"
* status = #finished
* type[+]
* type[=].coding.system = "http://bha.colorado.gov/fhir/test/CodeSystem/bha-episode-identifier-cs"
* type[=].coding.code = #01
* type[=].coding.display = "Ambulatory Medical Withdrawal Management"
* managingOrganization = Reference(Organization/BHAOrganizationExample) "Community Health Clinic"