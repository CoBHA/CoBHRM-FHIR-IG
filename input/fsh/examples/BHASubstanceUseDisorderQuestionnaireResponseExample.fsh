Instance: BHASubstanceUseDisorderQuestionnaireResponseExample
//InstanceOf: QuestionnaireResponse
InstanceOf: $us-core-questionnaireresponse
Title: "Example Substance Use Disorder Questionnaire Responses"
Description: "Example Responses to Substance Use Disorder Questionnaire Questions"
Usage: #example
* questionnaire = Canonical(BHASubstanceUseDisorderQuestionnaire)
* status = #completed
* subject = Reference(Patient/example) "Mickey Mouse"
* authored = "2025-10-28T18:30:40-07:00"
//* author = Reference(Practitioner/practitioner-1)
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-10-28T18:30:40-07:00"
* item[+].linkId = "ASAM_LEVEL_OF_CARE"
* item[=].text = "ASAM Level of Care"
* item[=].answer.valueCoding = BHAASAMLevelOfCareCS#3.1
* item[+].linkId = "PRIMARY_SUBSTANCE_USE"
* item[=].text = "Primary Substance Use"
* item[=].answer.valueCoding = BHASubstanceUseCS#1
* item[+].linkId = "PRIMARY_LAST_USED_30_DAYS"
* item[=].text = "Times Used Primary Substance in Last 30 Days"
* item[=].answer.valueInteger = 3
* item[+].linkId = "PRIMARY_ROUTE_OF_USE"
* item[=].text = "Route of Use of Primary Substances"
* item[=].answer.valueCoding = BHASubstanceUseRouteOfAdministrationCS#1
* item[+].linkId = "PRIMARY_START_AGE"
* item[=].text = "Age of First Use of Primary Substances"
* item[=].answer.valueInteger = 28
* item[+].linkId = "SECONDARY_SUBSTANCE_USE"
* item[=].text = "Secondary Substance Use"
* item[=].answer.valueCoding = BHASubstanceUseCS#6
* item[+].linkId = "SECONDARY_LAST_USED_30_DAYS"
* item[=].text = "Times Used Secondary Substance in Last 30 Days"
* item[=].answer.valueInteger = 4
* item[+].linkId = "SECONDARY_ROUTE_OF_USE"
* item[=].text = "Route of Use of Secondary Substances"
* item[=].answer.valueCoding = BHASubstanceUseRouteOfAdministrationCS#3
* item[+].linkId = "SECONDARY_START_AGE"
* item[=].text = "Age of First Use of Secondary Substances"
* item[=].answer.valueInteger = 28
* item[+].linkId = "TERTIARY_SUBSTANCE_USE"
* item[=].text = "Tertiary Substance Use"
* item[=].answer.valueCoding = BHASubstanceUseCS#10
* item[+].linkId = "TERTIARY_LAST_USED_30_DAYS"
* item[=].text = "Times Used Tertiary Substance in Last 30 Days"
* item[=].answer.valueInteger = 2
* item[+].linkId = "TERTIARY_ROUTE_OF_USE"
* item[=].text = "Route of Use of Tertiary Substance"
* item[=].answer.valueCoding = BHASubstanceUseRouteOfAdministrationCS#1
* item[+].linkId = "TERTIARY_START_AGE"
* item[=].text = "Age of First Use of Tertiary Substance"
* item[=].answer.valueInteger = 29
