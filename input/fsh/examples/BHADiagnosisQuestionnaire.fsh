Instance: BHADiagnosisQuestionnaire
InstanceOf: $sdc-questionnaire
//Id: bha-diagnosis-questionnaire
Title: "BHA Diagnosis Questionnaire"
Description: "Behavioral Health Administration diagnosis questionnaire for collecting patient clinical information during a behavioral health episode of care"
Usage: #definition 

* url = "http://bha.colorado.gov/fhir/bha-ig/Questionnaire/BHADiagnosisQuestionnaire"
* version = "1.0.0"
* name = "BHADiagnosisQuestionnaire"
* title = "BHA Diagnosis Questionnaire"
* status = #active
* subjectType = #Patient
* date = "2025-12-17"
* publisher = "Colorado Behavioral Health Administration"
* description = "Questionnaire used during a behavioral health episode of care to collect severity information about a mental health or substance use diagnosis"

//todo: consider how to implement restrictions for mh diagnoses only. possibly two questionnaire structures, where mh questionnaire excludes unknown and not collected from value set.
* item[0].linkId = "SMI_SED_STATUS"
* item[=].text = "SMI/SED Status"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHASMISEDStatusVS)
