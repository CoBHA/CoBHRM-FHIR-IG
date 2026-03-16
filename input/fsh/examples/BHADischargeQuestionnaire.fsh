Instance: BHADischargeQuestionnaire
InstanceOf: $sdc-questionnaire
//Id: bha-discharge-questionnaire
Title: "BHA Discharge Questionnaire"
Description: "Behavioral Health Administration discharge questionnaire for collecting patient demographic, clinical, and administrative information during discharge process"
Usage: #definition 

* url = "http://bha.colorado.gov/fhir/bha-ig/Questionnaire/BHADischargeQuestionnaire"
* version = "1.0.0"
* name = "BHADischargeQuestionnaire"
* title = "BHA Discharge Questionnaire"
* status = #active
* subjectType = #Patient
* date = "2025-12-17"
* publisher = "Colorado Behavioral Health Administration"
* description = "Questionnaire used to collect demographic and administrative information from patients being discharged from behavioral health services"

* item[0].linkId = "END_OF_TREATMENT_REASON"
* item[=].text = "End of Treatment Reason"
* item[=].type = #choice
* item[=].required = false
* item[=].answerValueSet = Canonical(BHAEndOfTreatmentReasonVS)

* item[+].linkId = "ARRESTS_PAST_30_DAYS"
* item[=].text = "Arrests in Past 30 Days"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 30

* item[+].linkId = "EMPLOYMENT_STATUS"
* item[=].text = "Employment Status"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAEmploymentStatusVS)

* item[+].linkId = "LIVING_SITUATION"
* item[=].text = "Living Situation"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHALivingSituationVS)

* item[+].linkId = "SELF_HELP_ATTENDANCE"
* item[=].text = "Self Help Attendance / Peer Support Attendance (Last 30 days at discharge)"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 30

* item[+].linkId = "EDUCATION_LEVEL"
* item[=].text = "Education Level"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAEducationLevelVS)

* item[+].linkId = "SCHOOL_ATTENDANCE_STATUS"
* item[=].text = "School Attendance Status (in the previous 3 months)"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHASchoolAttendanceStatusVS)

* item[+].linkId = "LEGAL_STATUS"
* item[=].text = "Legal Status"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHALegalStatusVS)
