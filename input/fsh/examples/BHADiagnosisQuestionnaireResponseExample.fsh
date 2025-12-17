Instance: BHADiagnosisQuestionnaireResponseExample
InstanceOf: QuestionnaireResponse
Title: "Example Diagnosis Questionnaire Responses"
Description: "Example Responses to Diagnosis Questionnaire Questions"

Usage: #example
// * meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-questionnaireresponse"
* questionnaire = Canonical(BHADiagnosisQuestionnaire)
* status = #completed
* subject = Reference(Patient/example) "Mickey Mouse"
* authored = "2025-10-28T18:30:40-07:00"
//* author = Reference(Practitioner/practitioner-1)
* item[0].linkId = "SMI_SED_STATUS"
* item[=].text = "SMI/SED Status"
* item[=].answer.valueCoding = BHASMISEDStatusCS#1
