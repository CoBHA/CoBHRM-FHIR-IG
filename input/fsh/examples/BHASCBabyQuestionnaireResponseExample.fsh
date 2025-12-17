Instance: BHASCBabyQuestionnaireResponseExample
InstanceOf: QuestionnaireResponse
Title: "Example SC Baby Questionnaire Responses"
Description: "Example Responses to Special Connections Baby Questionnaire Questions"

Usage: #example
// * meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-questionnaireresponse"
* questionnaire = Canonical(BHASCBabyQuestionnaire)
* status = #completed
* subject = Reference(Patient/example) "Mickey Mouse"
* authored = "2025-10-28T18:30:40-07:00"
//* author = Reference(Practitioner/practitioner-1)
* item[0].linkId = "LIVE_BIRTH"
* item[=].text = "Live Birth"
* item[=].answer.valueBoolean = true
* item[+].linkId = "DOB"
* item[=].text = "Baby Date of Birth"
* item[=].answer.valueDate = "2025-06-20"
* item[+].linkId = "WEIGHT_LBS"
* item[=].text = "Baby Weight Pounds"
* item[=].answer.valueQuantity.value = 6
* item[=].answer.valueQuantity.unit = "lb"
* item[=].answer.valueQuantity.system = "http://unitsofmeasure.org"
* item[=].answer.valueQuantity.code = #[lb_av]
* item[+].linkId = "WEIGHT_OZ"
* item[=].text = "Baby Weight Ounces"
* item[=].answer.valueQuantity.value = 2
* item[=].answer.valueQuantity.unit = "oz"
* item[=].answer.valueQuantity.system = "http://unitsofmeasure.org"
* item[=].answer.valueQuantity.code = #[oz_av]
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
