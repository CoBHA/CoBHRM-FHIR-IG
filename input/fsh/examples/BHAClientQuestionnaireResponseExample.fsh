Instance: BHAClientQuestionnaireResponseExample
InstanceOf: $us-core-questionnaireresponse
Title: "Example BHA Client Questionnaire Responses"
Description: "Example Responses to BHA Client Questionnaire Questions"

Usage: #example
// * meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-questionnaireresponse"
* questionnaire = Canonical(BHAClientQuestionnaire)
* status = #completed
* subject = Reference(BHAClientExample)
* authored = "2025-10-28T18:30:40-07:00"
// * author = Reference(Practitioner/practitioner-1)
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-10-28T18:30:40-07:00"
* item[+].linkId = "CHILD_WELFARE_INVOLVEMENT"
* item[=].text = "Child Welfare Involvement"
* item[=].answer.valueBoolean = true
* item[+].linkId = "TRAILS_IDENTIFIER"
* item[=].text = "Trails Identifier"
* item[=].answer.valueString = "1234567890"
* item[+].linkId = "DISABILITY_CODES"
* item[=].text = "Disability Code(s)"
* item[=].answer.valueCoding = BHADisabilityCodesCS#07
* item[=].answer[+].valueCoding = BHADisabilityCodesCS#08
* item[=].answer[+].valueCoding = BHADisabilityCodesCS#16
