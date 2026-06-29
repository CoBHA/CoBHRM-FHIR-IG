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

Instance: AllOfExampleEmma
InstanceOf: Bundle
Title: "All of Emma data"
Description: "This bundle contains all of the FHIR Resources for Patient Emma (Emma Jones)."
Usage: #example
* type = #batch
* entry[+].resource = BHAOrganizationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/BHAOrganizationExample"
* entry[=].fullUrl = "http://example.org/fhir/Organization/BHAOrganizationExample"
* entry[+].resource = BHAClientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/BHAClientExample"
* entry[=].fullUrl = "http://example.org/fhir/Patient/BHAClientExample"
* entry[+].resource = BHAClientQuestionnaireResponseExample
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHAClientQuestionnaireResponseExample"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHAClientQuestionnaireResponseExample"
* entry[+].resource = BHAEpisodeOfCareExampleBH
* entry[=].request.method = #PUT
* entry[=].request.url = "EpisodeOfCare/BHAEpisodeOfCareExampleBH"
* entry[=].fullUrl = "http://example.org/fhir/EpisodeOfCare/BHAEpisodeOfCareExampleBH"
* entry[+].resource = BHAEpisodeDiagnosisExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/BHAEpisodeDiagnosisExample"
* entry[=].fullUrl = "http://example.org/fhir/Condition/BHAEpisodeDiagnosisExample"
* entry[+].resource = BHAEpisodeDiagnosisExample2
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/BHAEpisodeDiagnosisExample2"
* entry[=].fullUrl = "http://example.org/fhir/Condition/BHAEpisodeDiagnosisExample2"
* entry[+].resource = BHAAdmissionQuestionnaireResponseExample
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHAAdmissionQuestionnaireResponseExample"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHAAdmissionQuestionnaireResponseExample"
* entry[+].resource = BHADiagnosisQuestionnaireResponseExample
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHADiagnosisQuestionnaireResponseExample"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHADiagnosisQuestionnaireResponseExample"
* entry[+].resource = BHADischargeQuestionnaireResponseExample
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHADischargeQuestionnaireResponseExample"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHADischargeQuestionnaireResponseExample"
* entry[+].resource = BHAEpisodeOfCareExampleSUD
* entry[=].request.method = #PUT
* entry[=].request.url = "EpisodeOfCare/BHAEpisodeOfCareExampleSUD"
* entry[=].fullUrl = "http://example.org/fhir/EpisodeOfCare/BHAEpisodeOfCareExampleSUD"
* entry[+].resource = BHAEpisodeDiagnosisExampleSUD
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/BHAEpisodeDiagnosisExampleSUD"
* entry[=].fullUrl = "http://example.org/fhir/Condition/BHAEpisodeDiagnosisExampleSUD"
* entry[+].resource = BHASubstanceUseDisorderQuestionnaireResponseExample
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHASubstanceUseDisorderQuestionnaireResponseExample"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHASubstanceUseDisorderQuestionnaireResponseExample"
* entry[+].resource = EpisodeOfCareExamplePG
* entry[=].request.method = #PUT
* entry[=].request.url = "EpisodeOfCare/EpisodeOfCareExamplePG"
* entry[=].fullUrl = "http://example.org/fhir/EpisodeOfCare/EpisodeOfCareExamplePG"
* entry[+].resource = PregnancyConditionExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/PregnancyConditionExample"
* entry[=].fullUrl = "http://example.org/fhir/Condition/PregnancyConditionExample"
* entry[+].resource = BHASCPregnancyQuestionnaireResponseExample
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHASCPregnancyQuestionnaireResponseExample"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHASCPregnancyQuestionnaireResponseExample"
* entry[+].resource = BHASCBabyQuestionnaireResponseExample
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHASCBabyQuestionnaireResponseExample"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHASCBabyQuestionnaireResponseExample"
* entry[+].resource = BHASCBabyQuestionnaireResponseResourceExample
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHASCBabyQuestionnaireResponseResourceExample"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHASCBabyQuestionnaireResponseResourceExample"
* entry[+].resource = BabyPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/BabyPatientExample"
* entry[=].fullUrl = "http://example.org/fhir/Patient/BabyPatientExample"
* entry[+].resource = BHASCBabyNoQuestionnaireResponseExample
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHASCBabyNoQuestionnaireResponseExample"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHASCBabyNoQuestionnaireResponseExample"
* entry[+].resource = BHAObservationPregnancyStatusExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/BHAObservationPregnancyStatusExample"
* entry[=].fullUrl = "http://example.org/fhir/Observation/BHAObservationPregnancyStatusExample"


