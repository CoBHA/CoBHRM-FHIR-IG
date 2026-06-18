Instance: BHAClientExampleCentral
InstanceOf: BHAClient
Title: "Example BHA Client Central"
Description: "Example client in the central region"
* meta.lastUpdated = "2025-03-03T09:30:00Z"
* identifier[STATE_IDENTIFIER].type = BHAClientIdentifierTypeCS#STATE_IDENTIFIER
* identifier[STATE_IDENTIFIER].system = "urn:oid:2.16.840.1.113883.4.3.8"
* identifier[STATE_IDENTIFIER].value = "1234567893"
* identifier[SSN].type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
* identifier[SSN].value = "333-33-3333"
* identifier[SSN].system = "http://hl7.org/fhir/sid/us-ssn"
* name[officialName]
  * use = #official
  * family = "Patel"
  * given[0] = "Arjun"
* birthDate = "1974-10-09"
* gender = #male
* address[home]
* address[home].line[+] = "8200 South Broadway"
* address[home].city = "Littleton"
* address[home].state = "CO"
* address[home].postalCode = "80122"
* address[home].district = #03 "Arapahoe"
* address[home].period.start = "2022-09-15"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M
* extension[race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2028-9
* extension[race].extension[text].valueString = "Asian"
* extension[ethnicity].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5
* extension[ethnicity].extension[text].valueString = "Not Hispanic or Latino"
* extension[birthsex].valueCode = #M
* communication.language = urn:ietf:bcp:47#en "English"
* communication.language.text = "English"
* communication.preferred = true

Instance: BHAEpisodeOfCareExampleCentralBH
InstanceOf: BHAEpisodeOfCare
Title: "Example Episode of Care for Mental Health - Mental Health Central"
Description: "Example EpisodeOfCare resource for a mental health treatment episode spanning multiple encounters."
Usage: #example
* meta.lastUpdated = "2025-03-03T09:30:00Z"
* patient = Reference(Patient/BHAClientExampleCentral) "Arjun Patel"
* status = #finished
* type = BHADiagnosisTypeCS#MH
* diagnosis[+].condition = Reference(Condition/BHAEpisodeDiagnosisExampleCentralBH) "Mental Health Diagnosis"
* diagnosis[=].role = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD
* managingOrganization = Reference(Organization/BHAOrganizationExample) "Community Health Clinic"
* managingOrganization.identifier.value = "1234567893"
* managingOrganization.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* period.start = "2023-01-15"
* period.end = "2025-03-03"

Instance: BHAEpisodeDiagnosisExampleCentralBH
InstanceOf: BHAEpisodeDiagnosis
Title: "Example BHA Episode Diagnosis - Mental Health Central"
Description: "Example Condition for the mental health EpisodeOfCare used by the central patient example."
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category[diagnosisType] = BHADiagnosisTypeCS#MH
* code.coding[BHAServiceIdentifier] = BHAServiceIdentifierCS#17 "Mental Health Outpatient"
* code.coding[billing][+] = http://hl7.org/fhir/sid/icd-10-cm#F99 "Mental disorder, not otherwise specified"
* code.coding[billing][+] = http://www.ama-assn.org/go/cpt#90837
* subject = Reference(Patient/BHAClientExampleCentral) "Arjun Patel"

Instance: BHAAdmissionQuestionnaireResponseExampleCentral
InstanceOf: $us-core-questionnaireresponse
Title: "Example BHA Admission Questionnaire Responses Central"
Description: "Example admission responses for the central mental health client example"
Usage: #example
* questionnaire = Canonical(BHAAdmissionQuestionnaire)
* status = #completed
* subject = Reference(Patient/BHAClientExampleCentral) "Arjun Patel"
* authored = "2025-03-03T09:30:00Z"
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-03-03T09:30:00Z"
* item[+].linkId = "SERVICE_IDENTIFIER"
* item[=].text = "Service Identifier"
* item[=].answer.valueCoding = BHAServiceIdentifierCS#17 "Mental Health Outpatient"
* item[+].linkId = "FIRST_CONTACT_DATE"
* item[=].text = "Date of First Contact"
* item[=].answer.valueDate = "2023-01-15"
* item[+].linkId = "FIRST_APPOINTMENT_OFFERED_DATE"
* item[=].text = "Date of First Appointment Offered"
* item[=].answer.valueDate = "2023-01-20"
* item[+].linkId = "MEDICATION_ASSISTED_THERAPY"
* item[=].text = "Medication Assisted Therapy"
* item[=].answer.valueBoolean = false
* item[+].linkId = "REFERRAL_SOURCE"
* item[=].text = "Referral Source"
* item[=].answer.valueCoding = BHAReferralSourceCS#1
* item[+].linkId = "ARRESTS_PAST_30_DAYS"
* item[=].text = "Arrests in Past 30 Days"
* item[=].answer.valueInteger = 0
* item[+].linkId = "EMPLOYMENT_STATUS"
* item[=].text = "Employment Status"
* item[=].answer.valueCoding = BHAEmploymentStatusCS#02
* item[+].linkId = "LIVING_SITUATION"
* item[=].text = "Living Situation"
* item[=].answer.valueCoding = BHALivingSituationCS#2
* item[+].linkId = "MONTHLY_INCOME"
* item[=].text = "Monthly Income"
* item[=].answer.valueDecimal = 2800
* item[+].linkId = "PRIMARY_INCOME_SOURCE"
* item[=].text = "Primary Source of income/support for client (or for client's parent if client >18 years of age)"
* item[=].answer.valueCoding = BHAIncomeSourceCS#1
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
* item[=].answer.valueInteger = 2
* item[+].linkId = "TOTAL_SUBSTANCE_USE_PRIOR_TREATMENT"
* item[=].text = "Substance Use Prior Treatment (Total Lifetime admissions)"
* item[=].answer.valueInteger = 0
* item[+].linkId = "PSYCHIATRIC_HOSPITAL_ADMISSION"
* item[=].text = "Psychiatric Hospital Admission (Last 30 days)"
* item[=].answer.valueBoolean = false
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
* item[=].answer.valueBoolean = false
* item[+].linkId = "episodeOfCare"
* item[=].text = "Episode of Care Information"
* item[=].answer.valueReference = Reference(BHAEpisodeOfCareExampleCentralBH)
* item[+].linkId = "diagnosis"
* item[=].text = "Diagnosis Information"
* item[=].answer[+].valueReference = Reference(BHAEpisodeDiagnosisExampleCentralBH) "Mental disorder, not otherwise specified"

Instance: BHADischargeQuestionnaireResponseExampleCentral
InstanceOf: $us-core-questionnaireresponse
Title: "Example Discharge Questionnaire Responses Central"
Description: "Example discharge responses for the central mental health client example"
Usage: #example
* questionnaire = Canonical(BHADischargeQuestionnaire)
* status = #completed
* subject = Reference(Patient/BHAClientExampleCentral) "Arjun Patel"
* authored = "2025-03-03T17:00:00Z"
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-03-03T17:00:00Z"
* item[+].linkId = "DATE_OF_LAST_CONTACT"
* item[=].text = "Date of Last Contact"
* item[=].answer.valueDateTime = "2025-03-03T16:30:00Z"
* item[+].linkId = "DISCHARGE_DATE"
* item[=].text = "Discharge Date"
* item[=].answer.valueDateTime = "2025-03-03T17:00:00Z"
* item[+].linkId = "DISCHARGE_TYPE"
* item[=].text = "Discharge Type"
* item[=].answer.valueCoding = BHADischargeTypeCS#01
* item[+].linkId = "END_OF_TREATMENT_REASON"
* item[=].text = "End of Treatment Reason"
* item[=].answer.valueCoding = BHAEndOfTreatmentReasonCS#2
* item[+].linkId = "ARRESTS_PAST_30_DAYS"
* item[=].text = "Arrests in Past 30 Days"
* item[=].answer.valueInteger = 0
* item[+].linkId = "EMPLOYMENT_STATUS"
* item[=].text = "Employment Status"
* item[=].answer.valueCoding = BHAEmploymentStatusCS#01
* item[+].linkId = "LIVING_SITUATION"
* item[=].text = "Living Situation"
* item[=].answer.valueCoding = BHALivingSituationCS#1
* item[+].linkId = "SELF_HELP_ATTENDANCE"
* item[=].text = "Self Help Attendance / Peer Support Attendance (Last 30 days at discharge)"
* item[=].answer.valueInteger = 1
* item[+].linkId = "EDUCATION_LEVEL"
* item[=].text = "Education Level"
* item[=].answer.valueCoding = BHAEducationLevelCS#14
* item[+].linkId = "SCHOOL_ATTENDANCE_STATUS"
* item[=].text = "School Attendance Status (in the previous 3 months)"
* item[=].answer.valueCoding = BHASchoolAttendanceStatusCS#03
* item[+].linkId = "LEGAL_STATUS"
* item[=].text = "Legal Status"
* item[=].answer.valueCoding = BHALegalStatusCS#02
* item[+].linkId = "episodeOfCare"
* item[=].text = "Episode of Care Information"
* item[=].answer.valueReference = Reference(BHAEpisodeOfCareExampleCentralBH)
* item[+].linkId = "diagnosis"
* item[=].text = "Diagnosis Information"
* item[=].answer[+].valueReference = Reference(BHAEpisodeDiagnosisExampleCentralBH) "Mental disorder, not otherwise specified"

Instance: AllOfExampleCentral
InstanceOf: Bundle
Title: "All of Central data"
Description: "This bundle contains all of the FHIR Resources for Patient Central (Arjun Patel)."
Usage: #example
* type = #batch
* entry[+].resource = BHAClientExampleCentral
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/BHAClientExampleCentral"
* entry[=].fullUrl = "http://example.org/fhir/Patient/BHAClientExampleCentral"
* entry[+].resource = BHAEpisodeOfCareExampleCentralBH
* entry[=].request.method = #PUT
* entry[=].request.url = "EpisodeOfCare/BHAEpisodeOfCareExampleCentralBH"
* entry[=].fullUrl = "http://example.org/fhir/EpisodeOfCare/BHAEpisodeOfCareExampleCentralBH"
* entry[+].resource = BHAEpisodeDiagnosisExampleCentralBH
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/BHAEpisodeDiagnosisExampleCentralBH"
* entry[=].fullUrl = "http://example.org/fhir/Condition/BHAEpisodeDiagnosisExampleCentralBH"
* entry[+].resource = BHAAdmissionQuestionnaireResponseExampleCentral
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHAAdmissionQuestionnaireResponseExampleCentral"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHAAdmissionQuestionnaireResponseExampleCentral"
* entry[+].resource = BHADischargeQuestionnaireResponseExampleCentral
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHADischargeQuestionnaireResponseExampleCentral"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHADischargeQuestionnaireResponseExampleCentral"
