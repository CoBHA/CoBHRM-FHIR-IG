Instance: BHAAdmissionQuestionnaire
InstanceOf: $sdc-questionnaire
//Id: bha-admission-questionnaire
Title: "BHA Admission Questionnaire"
Description: "Behavioral Health Administration admission questionnaire for collecting patient demographic, clinical, and administrative information"
Usage: #definition 

* url = "http://bha.colorado.gov/fhir/bha-ig/Questionnaire/BHAAdmissionQuestionnaire"
* version = "1.0.0"
* name = "BHAAdmissionQuestionnaire"
* title = "BHA Admission Questionnaire"
* status = #active
* subjectType = #Patient
* date = "2025-12-13"
* publisher = "Colorado Behavioral Health Administration"
* description = "Questionnaire used during admission process to collect demographic, social, clinical, and administrative information from patients entering behavioral health services"

// Contact and Appointment Information Section
* item[0].linkId = "FIRST_CONTACT_DATE"
* item[=].text = "Date of First Contact"
* item[=].type = #date
* item[=].required = true

* item[+].linkId = "FIRST_APPOINTMENT_OFFERED_DATE"
* item[=].text = "Date of First Appointment Offered"
* item[=].type = #date
* item[=].required = true

// Clinical Information Section
* item[+].linkId = "MEDICATION_ASSISTED_OPIOID_THERAPY"
* item[=].text = "Medication Assisted Opioid Therapy"
* item[=].type = #boolean
* item[=].required = true

* item[+].linkId = "REFERRAL_SOURCE"
* item[=].text = "Referral Source"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAReferralSourceVS)

* item[+].linkId = "ARRESTS_PAST_30_DAYS"
* item[=].text = "Arrests in Past 30 Days"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 30

// Employment and Financial Information Section
* item[+].linkId = "EMPLOYMENT_STATUS"
* item[=].text = "Employment Status"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAEmploymentStatusVS)

* item[+].linkId = "MARITAL_STATUS"
* item[=].text = "Marital Status"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAMaritalStatusVS)

* item[+].linkId = "LIVING_SITUATION"
* item[=].text = "Living Situation"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHALivingSituationVS)

* item[+].linkId = "MONTHLY_INCOME"
* item[=].text = "Monthly Income"
* item[=].type = #decimal
* item[=].required = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension[=].valueCoding = urn:iso:std:iso:4217#USD
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueDecimal = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueDecimal = 9999

* item[+].linkId = "PRIMARY_INCOME_SOURCE"
* item[=].text = "Primary Source of income/support for client (or for client's parent if client >18 years of age)"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAIncomeSourceVS)

// Pregnancy and Maternal Health Section
* item[+].linkId = "PREGNANCY_STATUS"
* item[=].text = "Pregnancy Status"
* item[=].type = #boolean
* item[=].required = true

* item[+].linkId = "WITHIN_1_YEAR_POSTPARTUM_STATUS"
* item[=].text = "Within 1 Year Postpartum Status"
* item[=].type = #boolean
* item[=].required = true

// Program Enrollment Section
* item[+].linkId = "SPECIAL_CONNECTIONS_ENROLLMENT"
* item[=].text = "Enrollment in Special Connections"
* item[=].type = #boolean
* item[=].required = true

* item[+].linkId = "ACT_ENROLLMENT"
* item[=].text = "Enrollment in ACT?"
* item[=].type = #boolean
* item[=].required = true

* item[+].linkId = "ASCENT_ENROLLMENT"
* item[=].text = "Enrollment in Ascent (FEP)?"
* item[=].type = #boolean
* item[=].required = true

// Family and Support Section
* item[+].linkId = "NUMBER_DEPENDENT_CHILDREN"
* item[=].text = "Number of Dependent Children"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 99

* item[+].linkId = "SELF_HELP_ATTENDANCE"
* item[=].text = "Self Help Attendance (Last 30 days at admission)/ Peer Support Attendance"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 30

// Treatment History Section
* item[+].linkId = "TOTAL_SUBSTANCE_USE_PRIOR_TREATMENT"
* item[=].text = "Substance Use Prior Treatment (Total Lifetime admissions)"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 30

* item[+].linkId = "PSYCHIATRIC_HOSPITAL_ADMISSION"
* item[=].text = "Psychiatric Hospital Admission (Last 30 days)"
* item[=].type = #boolean
* item[=].required = true

// Legal Status Section
* item[+].linkId = "LEGAL_STATUS"
* item[=].text = "Legal Status"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHALegalStatusVS)

* item[+].linkId = "INVOLUNTARY_COMMITMENT_REASON"
* item[=].text = "Involuntary Commitment Reason"
* item[=].type = #choice
// TODO: there is no way to model conditionally required in FHIR; instead, this makes it required but guides the user to only show the question in certain conditions. verify approach with BHA.
* item[=].required = true
* item[=].enableWhen[0].question = "LEGAL_STATUS"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = BHALegalStatusCS#04 "72-hour evaluation and treatment"
* item[=].enableWhen[+].question = "LEGAL_STATUS"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = BHALegalStatusCS#05 "Short-term certification"
* item[=].enableWhen[+].question = "LEGAL_STATUS"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = BHALegalStatusCS#06 "Long-term certification"
* item[=].enableWhen[+].question = "LEGAL_STATUS"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = BHALegalStatusCS#09 "Emergency/Involuntary Alcohol/Drug Commitment"
* item[=].enableBehavior = #any
* item[=].answerValueSet = Canonical(BHAInvoluntaryCommitmentReasonVS)

* item[+].linkId = "CRIMINAL_JUSTICE_INVOLVEMENT"
* item[=].text = "Criminal Justice Involvement"
* item[=].type = #boolean
* item[=].required = false

// Education Section
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

// Recent Healthcare Utilization Section
* item[+].linkId = "PSYCHIATRIC_ER_VISIT_6_MONTHS"
* item[=].text = "Visit to Psychiatric ER in last 6 months"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 99

// TODO: actual rule is to make this required = true and enableWhen based on specific disability codes ('deaf/hearing loss', 'blind/vision loss') or if the household language is set to a value from appendix a; not implemented because both of those questions are on the client file, meaning they'd potentially be on a separate questionnaire
* item[+].linkId = "COMMUNICATION_ACCOMMODATIONS"
* item[=].text = "Communication Accommodations"
* item[=].type = #boolean
* item[=].required = false
