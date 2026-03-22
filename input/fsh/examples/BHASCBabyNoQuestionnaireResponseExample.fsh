Instance: BHASCBabyNoQuestionnaireResponseExample
//InstanceOf: QuestionnaireResponse
InstanceOf: $us-core-questionnaireresponse
Title: "Example SC no Baby Questionnaire Responses"
Description: "Example Responses to Special Connections Baby Questionnaire Questions, where there was a stillbirth."
Usage: #example
* questionnaire = Canonical(BHASCBabyQuestionnaire)
* status = #completed
* subject = Reference(Patient/example) "Minnie Mouse"
* authored = "2025-10-28T18:30:40-07:00"
//* author = Reference(Practitioner/practitioner-1)
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-10-28T18:30:40-07:00"
* item[+].linkId = "LIVE_BIRTH"
* item[=].text = "Live Birth"
* item[=].answer.valueBoolean = false
