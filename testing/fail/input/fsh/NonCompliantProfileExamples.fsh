// Negative profile-test fixtures for CoBHRM.
// These are valid base FHIR resources that intentionally fail CoBHRM profile constraints.

Instance: FailClientMissingRequiredProfileFields
InstanceOf: Patient
Title: "Fail Patient: valid base resource, non-compliant with BHAClient"
Description: "Declares bha-client profile but omits BHAClient-required identifier/name/address/extension slices."
* meta.profile[+] = "http://bha.colorado.gov/fhir/bha-ig/StructureDefinition/bha-client"
* active = true
* gender = #unknown

Instance: FailOrganizationMissingNPI
InstanceOf: Organization
Title: "Fail Organization: valid base resource, non-compliant with BHAOrganization"
Description: "Declares bha-organization profile but does not provide the required NPI identifier slice."
* meta.profile[+] = "http://bha.colorado.gov/fhir/bha-ig/StructureDefinition/bha-organization"
* active = true
* name = "No NPI Organization"
* identifier[+].system = "http://example.org/org-id"
* identifier[=].value = "ORG-123"

Instance: FailEpisodeOfCareMissingRequiredElements
InstanceOf: EpisodeOfCare
Title: "Fail EpisodeOfCare: valid base resource, non-compliant with BHAEpisodeOfCare"
Description: "Declares bha-episodeOfCare profile but omits profile-required type, diagnosis, managingOrganization, and meta.lastUpdated."
* meta.profile[+] = "http://bha.colorado.gov/fhir/bha-ig/StructureDefinition/bha-episodeOfCare"
* status = #active
* patient = Reference(Patient/FailClientMissingRequiredProfileFields)
* period.start = "2026-01-15"

Instance: FailEncounterMissingRequiredElements
InstanceOf: Encounter
Title: "Fail Encounter: valid base resource, non-compliant with BHAEncounter"
Description: "Declares bha-encounter profile but omits required period.end, episodeOfCare slice, serviceProvider, and actionType extension."
* meta.profile[+] = "http://bha.colorado.gov/fhir/bha-ig/StructureDefinition/bha-encounter"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(Patient/FailClientMissingRequiredProfileFields)
* period.start = "2026-01-20T09:00:00-07:00"

Instance: FailConditionDiagnosisProfile
InstanceOf: Condition
Title: "Fail Condition: valid base resource, non-compliant with BHAEpisodeDiagnosis"
Description: "Declares BHAEpisodeDiagnosis profile but provides too few category repetitions and no required BHA service-identifier coding slice."
* meta.profile[+] = "http://bha.colorado.gov/fhir/bha-ig/StructureDefinition/BHAEpisodeDiagnosis"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* code.text = "Behavioral health diagnosis text only"
* category[+].coding[+].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[=].coding[=].code = #encounter-diagnosis
* subject = Reference(Patient/FailClientMissingRequiredProfileFields)

Instance: FailEpisodeOfCareInvalidTypeCode
InstanceOf: EpisodeOfCare
Title: "Fail EpisodeOfCare: invalid required value-set code"
Description: "Declares bha-episodeOfCare profile with an invalid type code not in BHADiagnosisTypeVS."
* meta.profile[+] = "http://bha.colorado.gov/fhir/bha-ig/StructureDefinition/bha-episodeOfCare"
* meta.lastUpdated = "2026-01-21T10:10:00Z"
* status = #active
* type[+].coding[+].system = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-diagnosis-type-cs"
* type[=].coding[=].code = #INVALID
* patient = Reference(Patient/FailClientMissingRequiredProfileFields)
* diagnosis[+].condition = Reference(Condition/FailConditionDiagnosisProfile)
* managingOrganization = Reference(Organization/FailOrganizationMissingNPI)
* managingOrganization.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* managingOrganization.identifier.value = "1234567890"
* period.start = "2026-01-21"

Instance: FailQuestionnaireResponseTypeMismatch
InstanceOf: QuestionnaireResponse
Title: "Fail QuestionnaireResponse: answer type mismatch"
Description: "QuestionnaireResponse answers do not match Questionnaire item types (lastUpdated expects dateTime but receives string)."
* status = #completed
* questionnaire = "http://bha.colorado.gov/fhir/bha-ig/Questionnaire/BHAAdmissionQuestionnaire"
* subject = Reference(Patient/FailClientMissingRequiredProfileFields)
* item[+].linkId = "lastUpdated"
* item[=].answer[+].valueString = "not-a-dateTime"

Instance: FailQuestionnaireResponseGrosslyBad
InstanceOf: QuestionnaireResponse
Title: "Fail QuestionnaireResponse: grossly non-compliant"
Description: "Deliberately includes multiple answer-type mismatches, wrong linkId content, and unresolved references."
* status = #completed
* questionnaire = "http://bha.colorado.gov/fhir/bha-ig/Questionnaire/BHADiagnosisQuestionnaire"
* subject = Reference(Patient/DoesNotExist)
* item[+].linkId = "lastUpdated"
* item[=].answer[+].valueString = "yesterday"
* item[+].linkId = "SMI_SED_STATUS"
* item[=].answer[+].valueInteger = 99
* item[+].linkId = "episodeOfCare"
* item[=].answer[+].valueCoding.system = "http://example.org/not-a-reference"
* item[=].answer[=].valueCoding.code = #X
* item[+].linkId = "diagnosis"
* item[=].answer[+].valueBoolean = true
* item[+].linkId = "NOT_A_QUESTIONNAIRE_ITEM"
* item[=].answer[+].valueString = "extra item"

Instance: FailQuestionnaireResponseSingleElementNonCompliant
InstanceOf: QuestionnaireResponse
Title: "Fail QuestionnaireResponse: one non-compliant element"
Description: "Near-valid response where exactly one answer uses the wrong type (SMI_SED_STATUS uses string instead of coding)."
* status = #completed
* questionnaire = "http://bha.colorado.gov/fhir/bha-ig/Questionnaire/BHADiagnosisQuestionnaire"
* subject = Reference(Patient/FailClientMissingRequiredProfileFields)
* authored = "2026-01-22T14:30:00Z"
* item[+].linkId = "lastUpdated"
* item[=].answer[+].valueDateTime = "2026-01-22T14:30:00Z"
* item[+].linkId = "SMI_SED_STATUS"
* item[=].answer[+].valueString = "SMI"
* item[+].linkId = "episodeOfCare"
* item[=].answer[+].valueReference = Reference(EpisodeOfCare/FailEpisodeOfCareInvalidTypeCode)
* item[+].linkId = "diagnosis"
* item[=].answer[+].valueReference = Reference(Condition/FailConditionDiagnosisProfile)

Instance: FailEncounterUnresolvableReferences
InstanceOf: Encounter
Title: "Fail Encounter: unresolved references"
Description: "Declares bha-encounter profile and includes required elements, but references Patient/Organization/EpisodeOfCare resources that do not exist."
* meta.profile[+] = "http://bha.colorado.gov/fhir/bha-ig/StructureDefinition/bha-encounter"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(Patient/DoesNotExist)
* episodeOfCare[+] = Reference(EpisodeOfCare/DoesNotExist)
* period.start = "2026-01-20T09:00:00-07:00"
* period.end = "2026-01-20T10:00:00-07:00"
* serviceProvider = Reference(Organization/DoesNotExist)
* extension[+].url = "http://bha.colorado.gov/fhir/bha-ig/StructureDefinition/bha-action-type"
* extension[=].valueCodeableConcept.coding[+].system = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-action-type-cs"
* extension[=].valueCodeableConcept.coding[=].code = #01
* extension[=].valueCodeableConcept.coding[=].display = "Admission"

Instance: FailDuplicateClientA
InstanceOf: Patient
Title: "Fail duplicate logical client A"
Description: "One of two Patient resources sharing the same SSN but conflicting demographics."
* active = true
* identifier[+].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[=].value = "999-88-7777"
* name[+].family = "Duplicate"
* name[=].given[+] = "Alpha"
* gender = #male
* birthDate = "1981-07-10"

Instance: FailDuplicateClientB
InstanceOf: Patient
Title: "Fail duplicate logical client B"
Description: "Second Patient resource for the same SSN with conflicting demographics."
* active = true
* identifier[+].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[=].value = "999-88-7777"
* name[+].family = "Duplicate"
* name[=].given[+] = "Bravo"
* gender = #female
* birthDate = "1995-03-04"

Instance: FailDuplicateClientBundle
InstanceOf: Bundle
Title: "Fail Bundle: duplicate/conflicting client identifiers"
Description: "Bundle contains two Patient resources with the same identifier but conflicting demographics."
* type = #collection
* entry[+].resource = FailDuplicateClientA
* entry[+].resource = FailDuplicateClientB
