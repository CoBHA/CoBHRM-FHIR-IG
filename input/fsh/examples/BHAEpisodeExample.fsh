
Instance: BHAEpisodeOfCareExampleBH 
InstanceOf: BHAEpisodeOfCare
Title: "Example Episode"
Description: "Example Episode of Care record for a BHA service/admission"
Usage: #example
* meta.lastUpdated = "2024-01-01T12:00:00Z"
* patient = Reference(Patient/BHAClientExample) "Emma Jones"
* status = #finished
* type = BHADiagnosisTypeCS#MH
* diagnosis[+].condition = Reference(Condition/BHAEpisodeDiagnosisExample) "Mental Health Diagnosis"
* diagnosis[=].role = 	http://terminology.hl7.org/CodeSystem/diagnosis-role#AD
* managingOrganization = Reference(Organization/BHAOrganizationExample) "Community Health Clinic"
* managingOrganization.identifier.value = "1234567893"
* managingOrganization.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* period.start = "2024-01-01"
* period.end = "2024-01-15"

// Example EpisodeOfCare for SUD program
Instance: BHAEpisodeOfCareExampleSUD
InstanceOf: BHAEpisodeOfCare
Title: "Example Episode of Care for SUD Program"
Description: "Example Episode of Care resource for a substance use disorder treatment episode for a BHA client. This resource is referenced in the BHASubstanceUseDisorderQuestionnaireResponseExample."
* meta.lastUpdated = "2024-01-01T12:00:00Z"
* status = #finished
* statusHistory[+].status = #active
* statusHistory[=].period.start = "2024-01-01"
* statusHistory[+].status = #finished
* statusHistory[=].period.start = "2024-01-01"
* statusHistory[=].period.end = "2024-01-15"
* type = BHADiagnosisTypeCS#SUD
* diagnosis[+].condition = Reference(Condition/BHAEpisodeDiagnosisExampleSUD) "Substance Use Disorder Diagnosis"
* diagnosis[=].role = 	http://terminology.hl7.org/CodeSystem/diagnosis-role#AD
* patient = Reference(Patient/BHAClientExample) "Emma Jones"
* managingOrganization = Reference(Organization/BHAOrganizationExample) "Community Health Clinic"
* managingOrganization.identifier.value = "1234567893"
* managingOrganization.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* period.start = "2024-01-01"
* period.end = "2024-01-15"

// Example EpisodeOfCare for services for a pregnant client, This is not a BHA specific episode.
Instance: EpisodeOfCareExamplePG
InstanceOf: EpisodeOfCare
Title: "Example Episode of Care for Pregnant Client"
Description: "Example Episode of Care resource for a pregnant client receiving BH services. This resource is referenced in the BHASCBabyQuestionnaireResponseExample and BHASCPregnancyQuestionnaireResponseExample."
* meta.lastUpdated = "2024-01-01T12:00:00Z"
* status = #finished
* statusHistory[+].status = #active
* statusHistory[=].period.start = "2024-01-01"
* statusHistory[+].status = #finished
* statusHistory[=].period.start = "2024-01-01"
* statusHistory[=].period.end = "2024-01-15"
* type = http://terminology.hl7.org/CodeSystem/episodeofcare-type#cacp
* diagnosis[+].condition = Reference(Condition/PregnancyConditionExample) "Pregnancy Diagnosis"
* diagnosis[=].role = 	http://terminology.hl7.org/CodeSystem/diagnosis-role#AD
* patient = Reference(Patient/BHAClientExample) "Emma Jones"
* managingOrganization = Reference(Organization/BHAOrganizationExample) "Community Health Clinic"
* managingOrganization.identifier.value = "1234567893"
* managingOrganization.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* period.start = "2024-01-01"
* period.end = "2024-01-15"

Instance: PregnancyConditionExample
InstanceOf: $us-core-diagnosis
Title: "Example Pregnancy Condition"
Description: "Example Condition resource representing a pregnancy diagnosis, used in the EpisodeOfCareExamplePG to illustrate a non-BHA episode of care for a pregnant client receiving BH services."
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code = http://snomed.info/sct#77386006 "Pregnant"
* subject = Reference(Patient/BHAClientExample) "Emma Jones"
