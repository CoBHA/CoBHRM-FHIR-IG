Instance: BHAAdmissionQuestionnaireResponseExample
//InstanceOf: QuestionnaireResponse
InstanceOf: $us-core-questionnaireresponse
Title: "Example BHA Admission Questionnaire Responses"
Description: "Example Responses to BHA Admission Questionnaire Questions"
Usage: #example
* questionnaire = Canonical(BHAAdmissionQuestionnaire)
* status = #completed
* subject = Reference(Patient/example) "Mickey Mouse"
* authored = "2025-10-28T18:30:40-07:00"
// * author = Reference(Practitioner/practitioner-1)
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-10-28T18:30:40-07:00"
* item[+].linkId = "FIRST_CONTACT_DATE"
* item[=].text = "Date of First Contact"
* item[=].answer.valueDate = "2025-07-01"
* item[+].linkId = "FIRST_APPOINTMENT_OFFERED_DATE"
* item[=].text = "Date of First Appointment Offered"
* item[=].answer.valueDate = "2025-07-15"
* item[+].linkId = "MEDICATION_ASSISTED_OPIOID_THERAPY"
* item[=].text = "Medication Assisted Opioid Therapy"
* item[=].answer.valueBoolean = true
* item[+].linkId = "REFERRAL_SOURCE"
* item[=].text = "Referral Source"
* item[=].answer.valueCoding = BHAReferralSourceCS#1
* item[+].linkId = "ARRESTS_PAST_30_DAYS"
* item[=].text = "Arrests in Past 30 Days"
* item[=].answer.valueInteger = 1
* item[+].linkId = "EMPLOYMENT_STATUS"
* item[=].text = "Employment Status"
* item[=].answer.valueCoding = BHAEmploymentStatusCS#01
* item[+].linkId = "MARITAL_STATUS"
* item[=].text = "Marital Status"
* item[=].answer.valueCoding = BHAMaritalStatusCS#01
* item[+].linkId = "LIVING_SITUATION"
* item[=].text = "Living Situation"
* item[=].answer.valueCoding = BHALivingSituationCS#1
* item[+].linkId = "MONTHLY_INCOME"
* item[=].text = "Monthly Income"
* item[=].answer.valueDecimal = 999
* item[+].linkId = "PRIMARY_INCOME_SOURCE"
* item[=].text = "Primary Source of income/support for client (or for client's parent if client >18 years of age)"
* item[=].answer.valueCoding = BHAIncomeSourceCS#2
* item[+].linkId = "PREGNANCY_STATUS"
* item[=].text = "Pregnancy Status"
* item[=].answer.valueBoolean = false
* item[+].linkId = "WITHIN_1_YEAR_POSTPARTUM_STATUS"
* item[=].text = "Within 1 Year Postpartum Status"
* item[=].answer.valueBoolean = false
* item[+].linkId = "SPECIAL_CONNECTIONS_ENROLLMENT"
* item[=].text = "Enrollment in Special Connections"
* item[=].answer.valueBoolean = false
* item[+].linkId = "ACT_ENROLLMENT"
* item[=].text = "Enrollment in ACT?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "ASCENT_ENROLLMENT"
* item[=].text = "Enrollment in Ascent (FEP)?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "NUMBER_DEPENDENT_CHILDREN"
* item[=].text = "Number of Dependent Children"
* item[=].answer.valueInteger = 0
* item[+].linkId = "SELF_HELP_ATTENDANCE"
* item[=].text = "Self Help Attendance (Last 30 days at admission)/ Peer Support Attendance"
* item[=].answer.valueInteger = 0
* item[+].linkId = "TOTAL_SUBSTANCE_USE_PRIOR_TREATMENT"
* item[=].text = "Substance Use Prior Treatment (Total Lifetime admissions)"
* item[=].answer.valueInteger = 9
* item[+].linkId = "PSYCHIATRIC_HOSPITAL_ADMISSION"
* item[=].text = "Psychiatric Hospital Admission (Last 30 days)"
* item[=].answer.valueBoolean = true
* item[+].linkId = "LEGAL_STATUS"
* item[=].text = "Legal Status"
* item[=].answer.valueCoding = BHALegalStatusCS#02
* item[+].linkId = "CRIMINAL_JUSTICE_INVOLVEMENT"
* item[=].text = "Criminal Justice Involvement"
* item[=].answer.valueBoolean = false
* item[+].linkId = "EDUCATION_LEVEL"
* item[=].text = "Education Level"
* item[=].answer.valueCoding = BHAEducationLevelCS#14
* item[+].linkId = "SCHOOL_ATTENDANCE_STATUS"
* item[=].text = "School Attendance Status (in the previous 3 months)"
* item[=].answer.valueCoding = BHASchoolAttendanceStatusCS#03
* item[+].linkId = "PSYCHIATRIC_ER_VISIT_6_MONTHS"
* item[=].text = "Visit to Psychiatric ER in last 6 months"
* item[=].answer.valueInteger = 0
* item[+].linkId = "COMMUNICATION_ACCOMMODATIONS"
* item[=].text = "Communication Accommodations"
* item[=].answer.valueBoolean = true
