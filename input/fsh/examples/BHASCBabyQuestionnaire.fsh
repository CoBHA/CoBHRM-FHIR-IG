Instance: BHASCBabyQuestionnaire
InstanceOf: $sdc-questionnaire
//Id: bha-sc-baby-questionnaire
Title: "BHA Special Connections Baby Questionnaire"
Description: "Behavioral Health Administration Special Connections baby questionnaire for collecting information about a baby born to a person enrolled in the Special Connections program"
Usage: #definition 

* url = "http://bha.colorado.gov/fhir/bha-ig/Questionnaire/BHASCBabyQuestionnaire"
* version = "1.0.0"
* name = "BHASCBabyQuestionnaire"
* title = "BHA Special Connections Baby Questionnaire"
* status = #active
* subjectType = #Patient
* date = "2025-12-17"
* publisher = "Colorado Behavioral Health Administration"
* description = "Behavioral Health Administration Special Connections baby questionnaire for collecting information about a baby born to a person enrolled in the Special Connections program"


* item[0].linkId = "LIVE_BIRTH"
* item[=].text = "Live Birth"
* item[=].type = #boolean
* item[=].required = true

* item[+].linkId = "DOB"
* item[=].text = "Baby Date of Birth"
* item[=].type = #date
* item[=].required = true

* item[+].linkId = "WEIGHT_LBS"
* item[=].text = "Baby Weight Pounds"
* item[=].type = #decimal
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension[=].valueCoding.system = "http://unitsofmeasure.org"
* item[=].extension[=].valueCoding.code = #[lb_av]

* item[+].linkId = "WEIGHT_OZ"
* item[=].text = "Baby Weight Ounces"
* item[=].type = #decimal
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension[=].valueCoding.system = "http://unitsofmeasure.org"
* item[=].extension[=].valueCoding.code = #[oz_av]

* item[+].linkId = "LAST_NAME"
* item[=].text = "Baby Last Name"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "FIRST_NAME"
* item[=].text = "Baby First Name"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "MIDDLE_NAME_INITIAL"
* item[=].text = "Baby Middle Name or Initial"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "SEX_AT_BIRTH"
* item[=].text = "Baby Sex at Birth"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
