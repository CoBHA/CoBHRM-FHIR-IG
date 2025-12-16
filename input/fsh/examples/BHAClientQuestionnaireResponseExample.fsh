Instance: BHAClientrQuestionnaireResponseExample
InstanceOf: QuestionnaireResponse
Title: "Example BHA Client Questionnaire Responses"
Description: "Example Responses to BHA Client Questionnaire Questions"

Usage: #example
// * meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-questionnaireresponse"
* questionnaire = Canonical(BHAAdmissionQuestionnaire)
* status = #completed
* subject = Reference(Patient/example) "Mickey Mouse"
* authored = "2025-10-28T18:30:40-07:00"
// * author = Reference(Practitioner/practitioner-1)
* item[0].linkId = "MEDICAID_ID"
* item[=].text = "Colorado PEAK State ID / Universal ID (MEDICAID ID)"
* item[=].answer.valueString = "X000001"
* item[+].linkId = "TRAILS_ID"
* item[=].text = "Trails Identifier"
* item[=].answer.valueString = "1234567890"
* item[+].linkId = "CCAR_ID"
* item[=].text = "CCAR Identifier (data conversion)"
* item[=].answer.valueString = "1234567890"
* item[+].linkId = "DACODS_ID"
* item[=].text = "DACODS Identifier (data conversion)"
* item[=].answer.valueString = "1234567890"
* item[+].linkId = "CHILD_WELFARE_INVOLVEMENT"
* item[=].text = "Child Welfare Involvement"
* item[=].answer.valueBoolean = false
* item[+].linkId = "DISABILITY_CODES"
* item[=].text = "Disability Code(s)"
* item[=].answer.valueCoding = BHADisabilityCodesCS#07
* item[=].answer[+].valueCoding = BHADisabilityCodesCS#08
* item[=].answer[+].valueCoding = BHADisabilityCodesCS#16