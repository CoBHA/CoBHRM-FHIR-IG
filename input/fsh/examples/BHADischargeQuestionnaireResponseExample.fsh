Instance: BHADischargeQuestionnaireResponseExample
//InstanceOf: QuestionnaireResponse
InstanceOf: $us-core-questionnaireresponse
Title: "Example Discharge Questionnaire Responses"
Description: "Example Responses to Discharge Questionnaire Questions"
Usage: #example
* questionnaire = Canonical(BHADischargeQuestionnaire)
* status = #completed
* subject = Reference(Patient/example) "Mickey Mouse"
* authored = "2025-10-28T18:30:40-07:00"
//* author = Reference(Practitioner/practitioner-1)
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-10-28T18:30:40-07:00"
* item[+].linkId = "END_OF_TREATMENT_REASON"
* item[=].text = "End of Treatment Reason"
* item[=].answer.valueCoding = BHAEndOfTreatmentReasonCS#2
* item[+].linkId = "ARRESTS_PAST_30_DAYS"
* item[=].text = "Arrests in Past 30 Days"
* item[=].answer.valueInteger = 3
* item[+].linkId = "EMPLOYMENT_STATUS"
* item[=].text = "Employment Status"
* item[=].answer.valueCoding = BHAEmploymentStatusCS#01
* item[+].linkId = "LIVING_SITUATION"
* item[=].text = "Living Situation"
* item[=].answer.valueCoding = BHALivingSituationCS#1
* item[+].linkId = "SELF_HELP_ATTENDANCE"
* item[=].text = "Self Help Attendance / Peer Support Attendance (Last 30 days at discharge)"
* item[=].answer.valueInteger = 0
* item[+].linkId = "EDUCATION_LEVEL"
* item[=].text = "Education Level"
* item[=].answer.valueCoding = BHAEducationLevelCS#14
* item[+].linkId = "SCHOOL_ATTENDANCE_STATUS"
* item[=].text = "School Attendance Status (in the previous 3 months)"
* item[=].answer.valueCoding = BHASchoolAttendanceStatusCS#03
* item[+].linkId = "LEGAL_STATUS"
* item[=].text = "Legal Status"
* item[=].answer.valueCoding = BHALegalStatusCS#02
