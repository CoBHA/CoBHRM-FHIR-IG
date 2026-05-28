/*
Instance: BHAServiceQuestionnaireResponseExample
InstanceOf: $us-core-questionnaireresponse
Title: "Example BHA Service Questionnaire Responses"
Description: "Example Responses to BHA Service Questionnaire Questions"
Usage: #example
* questionnaire = Canonical(BHAServiceQuestionnaire)
* status = #completed
* subject = Reference(Patient/BHAClientExample) "Emma Jones"
* authored = "2026-05-15T09:45:00-07:00"
//* author = Reference(Practitioner/practitioner-1)
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2026-05-15T09:45:00-07:00"
* item[+].linkId = "BHASO_ADMISSION_IDENTIFIER"
* item[=].text = "BHASO ADMISSION Identifier"
* item[=].answer.valueString = "BHASO-ADMIT-000123"
* item[+].linkId = "EFFECTIVE_DATE"
* item[=].text = "Effective Date"
* item[=].answer.valueDate = "2026-05-15"
* item[+].linkId = "CREATED_DATE"
* item[=].text = "Created Date"
* item[=].answer.valueDateTime = "2026-05-15T09:00:00-07:00"
* item[+].linkId = "CREATED_BY"
* item[=].text = "Created By"
* item[=].answer.valueString = "system.user@example.org"
* item[+].linkId = "LAST_UPDATED_DATE"
* item[=].text = "Last Updated Date"
* item[=].answer.valueDateTime = "2026-05-15T09:45:00-07:00"
*/