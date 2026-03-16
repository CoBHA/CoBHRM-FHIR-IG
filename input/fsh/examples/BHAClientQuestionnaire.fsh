Instance: BHAClientQuestionnaire
InstanceOf: $sdc-questionnaire
//Id: bha-client-questionnaire
Title: "BHA Client Questionnaire"
Description: "Behavioral Health Administration client questionnaire for collecting patient demographic, clinical, and administrative information"
Usage: #definition 

* url = "http://bha.colorado.gov/fhir/bha-ig/Questionnaire/BHAClientQuestionnaire"
* version = "1.0.0"
* name = "BHAClientQuestionnaire"
* title = "BHA Client Questionnaire"
* status = #active
* subjectType = #Patient
* date = "2025-12-17"
* publisher = "Colorado Behavioral Health Administration"
* description = "Questionnaire used during a behavioral health episode of care to collect demographic and administrative information from patients receiving behavioral health services"

//todo: add narrative guidance about when this is required. From UDM: "2. Must be provided if client will be paid using government dollars and has enrolled through PEAK. If crisis situation then must have Universal ID"
* item[0].linkId = "PEAK_ID"
* item[=].text = "Colorado PEAK State ID / Universal ID (MEDICAID ID)"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "CCAR_ID"
* item[=].text = "CCAR Identifier (data conversion)"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "DACODS_ID"
* item[=].text = "DACODS Identifier (data conversion)"
* item[=].type = #string
* item[=].required = false

* item[+].linkId = "CHILD_WELFARE_INVOLVEMENT"
* item[=].text = "Child Welfare Involvement"
* item[=].type = #boolean
* item[=].required = false

// conditionally required based on child welfare involvement
* item[+].linkId = "TRAILS_ID"
* item[=].text = "Trails Identifier"
* item[=].type = #string
* item[=].required = true
* item[=].enableWhen[0].question = "CHILD_WELFARE_INVOLVEMENT"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerBoolean = true

* item[+].linkId = "DISABILITY_CODES"
* item[=].text = "Disability Code(s)"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHADisabilityCodesVS)
* item[=].repeats = true // enables multiple answers
