Instance: BHASCBabyQuestionnaireResponseExample
//InstanceOf: QuestionnaireResponse
InstanceOf: $us-core-questionnaireresponse
Title: "Example SC Baby Questionnaire Responses"
Description: "Example Responses to Special Connections Baby Questionnaire Questions"
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
* item[=].answer.valueBoolean = true
* item[+].linkId = "DOB"
* item[=].text = "Baby Date of Birth"
* item[=].answer.valueDate = "2025-06-20"
* item[+].linkId = "WEIGHT_LBS"
* item[=].text = "Baby Weight Pounds"
* item[=].answer.valueDecimal = 6
* item[+].linkId = "WEIGHT_OZ"
* item[=].text = "Baby Weight Ounces"
* item[=].answer.valueDecimal = 2
* item[+].linkId = "LAST_NAME"
* item[=].text = "Baby Last Name"
* item[=].answer.valueString = "White"
* item[+].linkId = "FIRST_NAME"
* item[=].text = "Baby First Name"
* item[=].answer.valueString = "Crystal"
* item[+].linkId = "MIDDLE_NAME_INITIAL"
* item[=].text = "Baby Middle Name or Initial"
* item[=].answer.valueString = "Snow"
* item[+].linkId = "SEX_AT_BIRTH"
* item[=].text = "Baby Sex at Birth"
* item[=].answer.valueCoding.system = "http://hl7.org/fhir/administrative-gender"
* item[=].answer.valueCoding.code = #female
