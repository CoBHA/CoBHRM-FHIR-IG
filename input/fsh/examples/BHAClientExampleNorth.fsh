Instance: BHAClientExampleNorth
InstanceOf: BHAClient
Title: "Example BHA Client North"
Description: "Example client in the north region"
* meta.lastUpdated = "2025-02-18T10:15:00Z"
* identifier[STATE_IDENTIFIER].type = BHAClientIdentifierTypeCS#STATE_IDENTIFIER
* identifier[STATE_IDENTIFIER].system = "urn:oid:2.16.840.1.113883.4.3.8"
* identifier[STATE_IDENTIFIER].value = "1234567892"
* identifier[SSN].type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
* identifier[SSN].value = "222-22-2222"
* identifier[SSN].system = "http://hl7.org/fhir/sid/us-ssn"
* name[officialName]
  * use = #official
  * family = "Martinez"
  * given[0] = "Sofia"
  * given[1] = "Elena"
* birthDate = "1987-04-22"
* gender = #female
* address[home]
* address[home].line[+] = "4500 E Colfax Ave"
* address[home].city = "Denver"
* address[home].state = "CO"
* address[home].postalCode = "80220"
* address[home].district = #17 "Denver"
* address[home].period.start = "2024-04-01"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#S
* extension[race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3
* extension[race].extension[text].valueString = "White"
* extension[ethnicity].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5
* extension[ethnicity].extension[text].valueString = "Not Hispanic or Latino"
* extension[birthsex].valueCode = #F
* extension[USVeteranStatus].valueBoolean = false
* communication.language = urn:ietf:bcp:47#en "English"
* communication.language.text = "English"
* communication.preferred = true

Instance: BHAEpisodeOfCareExampleNorthSUD
InstanceOf: BHAEpisodeOfCare
Title: "Example Episode of Care for Substance Use Disorder"
Description: "Example EpisodeOfCare resource for a substance use disorder treatment episode spanning multiple encounters."
Usage: #example
* meta.lastUpdated = "2025-02-18T10:15:00Z"
* patient = Reference(Patient/BHAClientExampleNorth) "Sofia Martinez"
* status = #finished
* type = BHADiagnosisTypeCS#SUD
* diagnosis[+].condition = Reference(Condition/BHAEpisodeDiagnosisExampleNorthSUD) "Substance Use Disorder Diagnosis"
* diagnosis[=].role = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD
* managingOrganization = Reference(Organization/BHAOrganizationExample) "Community Health Clinic"
* managingOrganization.identifier.value = "1234567893"
* managingOrganization.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* period.start = "2023-06-01"
* period.end = "2025-02-18"

Instance: BHAEpisodeDiagnosisExampleNorthSUD
InstanceOf: BHAEpisodeDiagnosis
Title: "Example BHA Episode Diagnosis - Substance Use Disorder North"
Description: "Example Condition for the substance use disorder EpisodeOfCare used by the north patient example."
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category[diagnosisType] = BHADiagnosisTypeCS#SUD
* code.coding[BHAServiceIdentifier] = BHAServiceIdentifierCS#09 "SUD Intensive Outpatient (IOP)"
* code.coding[billing][+] = http://hl7.org/fhir/sid/icd-10-cm#F19.20
* code.coding[billing][+] = http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H0015
* subject = Reference(Patient/BHAClientExampleNorth) "Sofia Martinez"

Instance: BHAAdmissionQuestionnaireResponseExampleNorth
InstanceOf: $us-core-questionnaireresponse
Title: "Example BHA Admission Questionnaire Responses North"
Description: "Example admission responses for the north substance use disorder client example"
Usage: #example
* questionnaire = Canonical(BHAAdmissionQuestionnaire)
* status = #completed
* subject = Reference(Patient/BHAClientExampleNorth) "Sofia Martinez"
* authored = "2025-02-18T10:15:00Z"
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-02-18T10:15:00Z"
* item[+].linkId = "SERVICE_IDENTIFIER"
* item[=].text = "Service Identifier"
* item[=].answer.valueCoding = BHAServiceIdentifierCS#09 "SUD Intensive Outpatient (IOP)"
* item[+].linkId = "FIRST_CONTACT_DATE"
* item[=].text = "Date of First Contact"
* item[=].answer.valueDate = "2023-06-01"
* item[+].linkId = "FIRST_APPOINTMENT_OFFERED_DATE"
* item[=].text = "Date of First Appointment Offered"
* item[=].answer.valueDate = "2023-06-05"
* item[+].linkId = "MEDICATION_ASSISTED_THERAPY"
* item[=].text = "Medication Assisted Therapy"
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
* item[+].linkId = "LIVING_SITUATION"
* item[=].text = "Living Situation"
* item[=].answer.valueCoding = BHALivingSituationCS#1
* item[+].linkId = "MONTHLY_INCOME"
* item[=].text = "Monthly Income"
* item[=].answer.valueDecimal = 1200
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
* item[=].answer.valueInteger = 4
* item[+].linkId = "TOTAL_SUBSTANCE_USE_PRIOR_TREATMENT"
* item[=].text = "Substance Use Prior Treatment (Total Lifetime admissions)"
* item[=].answer.valueInteger = 2
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
* item[=].answer.valueReference = Reference(BHAEpisodeOfCareExampleNorthSUD)
* item[+].linkId = "diagnosis"
* item[=].text = "Diagnosis Information"
* item[=].answer[+].valueReference = Reference(BHAEpisodeDiagnosisExampleNorthSUD) "Other psychoactive substance dependence, uncomplicated"

Instance: BHASubstanceUseDisorderQuestionnaireResponseExampleNorth
InstanceOf: $us-core-questionnaireresponse
Title: "Example Substance Use Disorder Questionnaire Responses North"
Description: "Example responses to the Substance Use Disorder Questionnaire for the north client example"
Usage: #example
* questionnaire = Canonical(BHASubstanceUseDisorderQuestionnaire)
* status = #completed
* subject = Reference(Patient/BHAClientExampleNorth) "Sofia Martinez"
* authored = "2025-02-18T10:15:00Z"
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-02-18T10:15:00Z"
* item[+].linkId = "ASAM_LEVEL_OF_CARE"
* item[=].text = "ASAM Level of Care: the ASAM Level of Care must match the LADDERS Provider/Clinic's ASAM Level of Care"
* item[=].answer.valueCoding = BHAASAMLevelOfCareCS#2.1
* item[+].linkId = "PRIMARY_SUBSTANCE_USE"
* item[=].text = "Primary Substance Use"
* item[=].answer.valueCoding = BHASubstanceUseCS#1
* item[+].linkId = "PRIMARY_LAST_USED_30_DAYS"
* item[=].text = "Times Used Primary Substance in Last 30 Days"
* item[=].answer.valueInteger = 3
* item[+].linkId = "PRIMARY_ROUTE_OF_USE"
* item[=].text = "Route of Use of Primary Substances"
* item[=].answer.valueCoding = BHASubstanceUseRouteOfAdministrationCS#1
* item[+].linkId = "PRIMARY_START_AGE"
* item[=].text = "Age of First Use of Primary Substances"
* item[=].answer.valueInteger = 28
* item[+].linkId = "SECONDARY_SUBSTANCE_USE"
* item[=].text = "Secondary Substance Use"
* item[=].answer.valueCoding = BHASubstanceUseCS#6
* item[+].linkId = "SECONDARY_LAST_USED_30_DAYS"
* item[=].text = "Times Used Secondary Substance in Last 30 Days"
* item[=].answer.valueInteger = 4
* item[+].linkId = "SECONDARY_ROUTE_OF_USE"
* item[=].text = "Route of Use of Secondary Substances"
* item[=].answer.valueCoding = BHASubstanceUseRouteOfAdministrationCS#3
* item[+].linkId = "SECONDARY_START_AGE"
* item[=].text = "Age of First Use of Secondary Substances"
* item[=].answer.valueInteger = 28
* item[+].linkId = "TERTIARY_SUBSTANCE_USE"
* item[=].text = "Tertiary Substance Use"
* item[=].answer.valueCoding = BHASubstanceUseCS#10
* item[+].linkId = "TERTIARY_LAST_USED_30_DAYS"
* item[=].text = "Times Used Tertiary Substance in Last 30 Days"
* item[=].answer.valueInteger = 2
* item[+].linkId = "TERTIARY_ROUTE_OF_USE"
* item[=].text = "Route of Use of Tertiary Substance"
* item[=].answer.valueCoding = BHASubstanceUseRouteOfAdministrationCS#1
* item[+].linkId = "TERTIARY_START_AGE"
* item[=].text = "Age of First Use of Tertiary Substance"
* item[=].answer.valueInteger = 29
* item[+].linkId = "episodeOfCare"
* item[=].text = "Episode of Care Information"
* item[=].answer.valueReference = Reference(BHAEpisodeOfCareExampleNorthSUD)

Instance: BHADischargeQuestionnaireResponseExampleNorth
InstanceOf: $us-core-questionnaireresponse
Title: "Example Discharge Questionnaire Responses North"
Description: "Example discharge responses for the north substance use disorder client example"
Usage: #example
* questionnaire = Canonical(BHADischargeQuestionnaire)
* status = #completed
* subject = Reference(Patient/BHAClientExampleNorth) "Sofia Martinez"
* authored = "2025-02-18T18:00:00Z"
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-02-18T18:00:00Z"
* item[+].linkId = "DATE_OF_LAST_CONTACT"
* item[=].text = "Date of Last Contact"
* item[=].answer.valueDateTime = "2025-02-18T16:45:00Z"
* item[+].linkId = "DISCHARGE_DATE"
* item[=].text = "Discharge Date"
* item[=].answer.valueDateTime = "2025-02-18T18:00:00Z"
* item[+].linkId = "DISCHARGE_TYPE"
* item[=].text = "Discharge Type"
* item[=].answer.valueCoding = BHADischargeTypeCS#01
* item[+].linkId = "END_OF_TREATMENT_REASON"
* item[=].text = "End of Treatment Reason"
* item[=].answer.valueCoding = BHAEndOfTreatmentReasonCS#2
* item[+].linkId = "ARRESTS_PAST_30_DAYS"
* item[=].text = "Arrests in Past 30 Days"
* item[=].answer.valueInteger = 1
* item[+].linkId = "EMPLOYMENT_STATUS"
* item[=].text = "Employment Status"
* item[=].answer.valueCoding = BHAEmploymentStatusCS#01
* item[+].linkId = "LIVING_SITUATION"
* item[=].text = "Living Situation"
* item[=].answer.valueCoding = BHALivingSituationCS#1
* item[+].linkId = "SELF_HELP_ATTENDANCE"
* item[=].text = "Self Help Attendance / Peer Support Attendance (Last 30 days at discharge)"
* item[=].answer.valueInteger = 3
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
* item[=].answer.valueReference = Reference(BHAEpisodeOfCareExampleNorthSUD)
* item[+].linkId = "diagnosis"
* item[=].text = "Diagnosis Information"
* item[=].answer[+].valueReference = Reference(BHAEpisodeDiagnosisExampleNorthSUD) "Other psychoactive substance dependence, uncomplicated"

Instance: AllOfExampleNorth
InstanceOf: Bundle
Title: "All of North data"
Description: "This bundle contains all of the FHIR Resources for Patient North (Sofia Martinez)."
Usage: #example
* type = #batch
* entry[+].resource = BHAClientExampleNorth
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/BHAClientExampleNorth"
* entry[=].fullUrl = "http://example.org/fhir/Patient/BHAClientExampleNorth"
* entry[+].resource = BHAEpisodeOfCareExampleNorthSUD
* entry[=].request.method = #PUT
* entry[=].request.url = "EpisodeOfCare/BHAEpisodeOfCareExampleNorthSUD"
* entry[=].fullUrl = "http://example.org/fhir/EpisodeOfCare/BHAEpisodeOfCareExampleNorthSUD"
* entry[+].resource = BHAEpisodeDiagnosisExampleNorthSUD
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/BHAEpisodeDiagnosisExampleNorthSUD"
* entry[=].fullUrl = "http://example.org/fhir/Condition/BHAEpisodeDiagnosisExampleNorthSUD"
* entry[+].resource = BHAAdmissionQuestionnaireResponseExampleNorth
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHAAdmissionQuestionnaireResponseExampleNorth"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHAAdmissionQuestionnaireResponseExampleNorth"
* entry[+].resource = BHASubstanceUseDisorderQuestionnaireResponseExampleNorth
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHASubstanceUseDisorderQuestionnaireResponseExampleNorth"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHASubstanceUseDisorderQuestionnaireResponseExampleNorth"
* entry[+].resource = BHADischargeQuestionnaireResponseExampleNorth
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHADischargeQuestionnaireResponseExampleNorth"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHADischargeQuestionnaireResponseExampleNorth"
