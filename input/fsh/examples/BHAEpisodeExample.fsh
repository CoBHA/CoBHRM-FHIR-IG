
Instance: BHAEpisodeExampleBH 
InstanceOf: BHAEpisodeOfCare
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
* type[=].coding = BHAEpisodeIdentifierCS#01 "Ambulatory Medical Withdrawal Management"
* managingOrganization = Reference(Organization/BHAOrganizationExample) "Community Health Clinic"

// Example EpisodeOfCare for SUD program
Instance: BHAEpisodeOfCareExampleSUD
InstanceOf: BHAEpisodeOfCare
Title: "Example Episode of Care for SUD Program"
Description: "Example Episode of Care resource for a substance use disorder treatment episode for a BHA client. This resource is referenced in the BHASubstanceUseDisorderQuestionnaireResponseExample."
* status = #finished
* statusHistory[+].status = #active
* statusHistory[=].period.start = "2024-01-01"
* statusHistory[+].status = #finished
* statusHistory[=].period.start = "2024-01-01"
* statusHistory[=].period.end = "2024-01-15"
* type[+] = BHAEpisodeIdentifierCS#07 "SUD Traditional Outpatient (OP and EOP))"
* patient = Reference(Patient/BHAClientExample) "Emma Jones"
* managingOrganization = Reference(Organization/BHAOrganizationExample) "Community Health Clinic"


// Example EpisodeOfCare for services for a pregnant client, This is not a BHA specific episode.
Instance: EpisodeOfCareExamplePG
InstanceOf: EpisodeOfCare
Title: "Example Episode of Care for Pregnant Client"
Description: "Example Episode of Care resource for a pregnant client receiving BH services. This resource is referenced in the BHASCBabyQuestionnaireResponseExample and BHASCPregnancyQuestionnaireResponseExample."
* status = #finished
* statusHistory[+].status = #active
* statusHistory[=].period.start = "2024-01-01"
* statusHistory[+].status = #finished
* statusHistory[=].period.start = "2024-01-01"
* statusHistory[=].period.end = "2024-01-15"
* type[+].text = "Pregnancy"
* patient = Reference(Patient/BHAClientExample) "Emma Jones"
* managingOrganization = Reference(Organization/BHAOrganizationExample) "Community Health Clinic"
