Instance: BHASubstanceUseDisorderQuestionnaire
InstanceOf: $sdc-questionnaire
//Id: bha-substance-use-disorder-questionnaire
Title: "BHA Substance Use Disorder Questionnaire"
Description: "Behavioral Health Administration substance use disorder questionnaire for collecting substance use information from a person receiving behavioral health services"
Usage: #definition 

* url = "http://bha.colorado.gov/fhir/bha-ig/Questionnaire/BHASubstanceUseDisorderQuestionnaire"
* version = "1.0.0"
* name = "BHASubstanceUseDisorderQuestionnaire"
* title = "BHA Substance Use Disorder Questionnaire"
* status = #active
* subjectType = #Patient
* date = "2025-12-17"
* publisher = "Colorado Behavioral Health Administration"
* description = "Behavioral Health Administration substance use disorder questionnaire for collecting substance use information from a person receiving behavioral health services"

//todo: add narrative guidance somewhere of the rule that the ASAM level of care must match the provider's ASAM level of care in LADDERS
* item[0].linkId = "ASAM_LEVEL_OF_CARE"
* item[=].text = "ASAM Level of Care"
* item[=].type = #choice
* item[=].required = false
* item[=].answerValueSet = Canonical(BHAASAMLevelOfCareVS)

* item[+].linkId = "PRIMARY_SUBSTANCE_USE"
* item[=].text = "Primary Substance Use"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHASubstanceUsePrimaryVS)

* item[+].linkId = "PRIMARY_LAST_USED_30_DAYS"
* item[=].text = "Times Used Primary Substance in Last 30 Days"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 30
// required when PRIMARY_SUBSTANCE_USE is not none
* item[=].enableWhen[0].question = "PRIMARY_SUBSTANCE_USE"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding = BHASubstanceUseCS#0

* item[+].linkId = "PRIMARY_ROUTE_OF_USE"
* item[=].text = "Route of Use of Primary Substances"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHASubstanceUseRouteOfAdministrationVS)
// required when PRIMARY_SUBSTANCE_USE is not none
* item[=].enableWhen[0].question = "PRIMARY_SUBSTANCE_USE"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding = BHASubstanceUseCS#0

* item[+].linkId = "PRIMARY_START_AGE"
* item[=].text = "Age of First Use of Primary Substances"
* item[=].type = #integer
* item[=].required = true
// required when PRIMARY_SUBSTANCE_USE is not none
* item[=].enableWhen[0].question = "PRIMARY_SUBSTANCE_USE"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding = BHASubstanceUseCS#0

* item[+].linkId = "SECONDARY_SUBSTANCE_USE"
* item[=].text = "Secondary Substance Use"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHASubstanceUseSecondaryTertiaryVS)

* item[+].linkId = "SECONDARY_LAST_USED_30_DAYS"
* item[=].text = "Times Used Secondary Substance in Last 30 Days"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 30
// required when SECONDARY_SUBSTANCE_USE is not none
* item[=].enableWhen[0].question = "SECONDARY_SUBSTANCE_USE"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding = BHASubstanceUseCS#0

* item[+].linkId = "SECONDARY_ROUTE_OF_USE"
* item[=].text = "Route of Use of Secondary Substances"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHASubstanceUseRouteOfAdministrationVS)
// required when SECONDARY_SUBSTANCE_USE is not none
* item[=].enableWhen[0].question = "SECONDARY_SUBSTANCE_USE"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding = BHASubstanceUseCS#0

* item[+].linkId = "SECONDARY_START_AGE"
* item[=].text = "Age of First Use of Secondary Substances"
* item[=].type = #integer
* item[=].required = true
// required when SECONDARY_SUBSTANCE_USE is not none
* item[=].enableWhen[0].question = "SECONDARY_SUBSTANCE_USE"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding = BHASubstanceUseCS#0

* item[+].linkId = "TERTIARY_SUBSTANCE_USE"
* item[=].text = "Tertiary Substance Use"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHASubstanceUseSecondaryTertiaryVS)

* item[+].linkId = "TERTIARY_LAST_USED_30_DAYS"
* item[=].text = "Times Used Tertiary Substance in Last 30 Days"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 30
// required when TERTIARY_SUBSTANCE_USE is not none
* item[=].enableWhen[0].question = "TERTIARY_SUBSTANCE_USE"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding = BHASubstanceUseCS#0

* item[+].linkId = "TERTIARY_ROUTE_OF_USE"
* item[=].text = "Route of Use of Tertiary Substance"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHASubstanceUseRouteOfAdministrationVS)
// required when TERTIARY_SUBSTANCE_USE is not none
* item[=].enableWhen[0].question = "TERTIARY_SUBSTANCE_USE"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding = BHASubstanceUseCS#0

* item[+].linkId = "TERTIARY_START_AGE"
* item[=].text = "Age of First Use of Tertiary Substance"
* item[=].type = #integer
* item[=].required = true
// required when TERTIARY_SUBSTANCE_USE is not none
* item[=].enableWhen[0].question = "TERTIARY_SUBSTANCE_USE"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding = BHASubstanceUseCS#0
