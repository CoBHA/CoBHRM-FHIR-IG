Instance: BHAClientExampleSouth
InstanceOf: BHAClient
Title: "Example BHA Client South"
Description: "Example client in the south region"
* meta.lastUpdated = "2025-05-10T08:00:00Z"
* identifier[STATE_IDENTIFIER].type = BHAClientIdentifierTypeCS#STATE_IDENTIFIER
* identifier[STATE_IDENTIFIER].system = "urn:oid:2.16.840.1.113883.4.3.8"
* identifier[STATE_IDENTIFIER].value = "1234567894"
* identifier[SSN].type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
* identifier[SSN].value = "444-44-4444"
* identifier[SSN].system = "http://hl7.org/fhir/sid/us-ssn"
* name[officialName]
  * use = #official
  * family = "Torres"
  * given[0] = "Gabriela"
  * given[1] = "Mar"
* birthDate = "1991-12-05"
* gender = #female
* address[home]
* address[home].line[+] = "1720 West 7th St"
* address[home].city = "Pueblo"
* address[home].state = "CO"
* address[home].postalCode = "81003"
* address[home].district = #52 "Pueblo"
* address[home].period.start = "2021-11-01"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#D
* extension[race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2054-5
* extension[race].extension[text].valueString = "Black or African American"
* extension[ethnicity].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2
* extension[ethnicity].extension[text].valueString = "Hispanic or Latino"
* extension[birthsex].valueCode = #F
* extension[USVeteranStatus].valueBoolean = false
* communication.language = urn:ietf:bcp:47#es "Spanish"
* communication.language.text = "Spanish"
* communication.preferred = true

Instance: BHAEpisodeOfCareExampleSouthBH
InstanceOf: BHAEpisodeOfCare
Title: "Example Episode of Care for Mental Health - Mental Health South"
Description: "Example EpisodeOfCare resource for a mental health treatment episode spanning the pregnancy timeframe."
Usage: #example
* meta.lastUpdated = "2025-01-10T09:00:00Z"
* patient = Reference(Patient/BHAClientExampleSouth) "Gabriela Torres"
* status = #finished
* type = BHADiagnosisTypeCS#MH
* diagnosis[+].condition = Reference(Condition/BHAEpisodeDiagnosisExampleSouthBH) "Mental Health Diagnosis"
* diagnosis[=].role = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD
* managingOrganization = Reference(Organization/BHAOrganizationExample) "Community Health Clinic"
* managingOrganization.identifier.value = "1234567893"
* managingOrganization.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* period.start = "2025-01-10"
* period.end = "2025-12-15"

Instance: BHAEpisodeDiagnosisExampleSouthBH
InstanceOf: BHAEpisodeDiagnosis
Title: "Example BHA Episode Diagnosis - Mental Health South"
Description: "Example Condition for the mental health EpisodeOfCare used by the south patient example."
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category[diagnosisType] = BHADiagnosisTypeCS#MH
* code.coding[BHAServiceIdentifier] = BHAServiceIdentifierCS#17 "Mental Health Outpatient"
* code.coding[billing][+] = http://hl7.org/fhir/sid/icd-10-cm#F99 "Mental disorder, not otherwise specified"
* code.coding[billing][+] = http://www.ama-assn.org/go/cpt#90837
* subject = Reference(Patient/BHAClientExampleSouth) "Gabriela Torres"

Instance: BHAAdmissionQuestionnaireResponseExampleSouth
InstanceOf: $us-core-questionnaireresponse
Title: "Example BHA Admission Questionnaire Responses South"
Description: "Example admission responses for the south mental health client example"
Usage: #example
* questionnaire = Canonical(BHAAdmissionQuestionnaire)
* status = #completed
* subject = Reference(Patient/BHAClientExampleSouth) "Gabriela Torres"
* authored = "2025-01-10T09:00:00Z"
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-01-10T09:00:00Z"
* item[+].linkId = "SERVICE_IDENTIFIER"
* item[=].text = "Service Identifier"
* item[=].answer.valueCoding = BHAServiceIdentifierCS#17 "Mental Health Outpatient"
* item[+].linkId = "FIRST_CONTACT_DATE"
* item[=].text = "Date of First Contact"
* item[=].answer.valueDate = "2025-01-10"
* item[+].linkId = "FIRST_APPOINTMENT_OFFERED_DATE"
* item[=].text = "Date of First Appointment Offered"
* item[=].answer.valueDate = "2025-01-14"
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
* item[=].answer.valueDecimal = 1800
* item[+].linkId = "PRIMARY_INCOME_SOURCE"
* item[=].text = "Primary Source of income/support for client (or for client's parent if client >18 years of age)"
* item[=].answer.valueCoding = BHAIncomeSourceCS#1
* item[+].linkId = "PREGNANCY_STATUS"
* item[=].text = "Pregnancy Status"
* item[=].answer.valueBoolean = true
* item[+].linkId = "WITHIN_1_YEAR_POSTPARTUM_STATUS"
* item[=].text = "Within 1 Year Postpartum Status"
* item[=].answer.valueBoolean = false
* item[+].linkId = "SPECIAL_CONNECTIONS_ENROLLMENT"
* item[=].text = "Enrollment in Special Connections"
* item[=].answer.valueBoolean = true
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
* item[=].answer.valueInteger = 1
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
* item[=].answer.valueReference = Reference(BHAEpisodeOfCareExampleSouthBH)
* item[+].linkId = "diagnosis"
* item[=].text = "Diagnosis Information"
* item[=].answer[+].valueReference = Reference(BHAEpisodeDiagnosisExampleSouthBH) "Mental disorder, not otherwise specified"

Instance: BHADischargeQuestionnaireResponseExampleSouth
InstanceOf: $us-core-questionnaireresponse
Title: "Example Discharge Questionnaire Responses South"
Description: "Example discharge responses for the south mental health client example"
Usage: #example
* questionnaire = Canonical(BHADischargeQuestionnaire)
* status = #completed
* subject = Reference(Patient/BHAClientExampleSouth) "Gabriela Torres"
* authored = "2025-12-15T16:30:00Z"
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-12-15T16:30:00Z"
* item[+].linkId = "DATE_OF_LAST_CONTACT"
* item[=].text = "Date of Last Contact"
* item[=].answer.valueDateTime = "2025-12-15T15:30:00Z"
* item[+].linkId = "DISCHARGE_DATE"
* item[=].text = "Discharge Date"
* item[=].answer.valueDateTime = "2025-12-15T16:30:00Z"
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
* item[=].answer.valueCoding = BHALivingSituationCS#2
* item[+].linkId = "SELF_HELP_ATTENDANCE"
* item[=].text = "Self Help Attendance / Peer Support Attendance (Last 30 days at discharge)"
* item[=].answer.valueInteger = 2
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
* item[=].answer.valueReference = Reference(BHAEpisodeOfCareExampleSouthBH)
* item[+].linkId = "diagnosis"
* item[=].text = "Diagnosis Information"
* item[=].answer[+].valueReference = Reference(BHAEpisodeDiagnosisExampleSouthBH) "Mental disorder, not otherwise specified"

Instance: BHASCPregnancyQuestionnaireResponseExampleSouth
InstanceOf: $us-core-questionnaireresponse
Title: "Example SC Pregnancy and Postpartum Risk Screening Questionnaire Responses South"
Description: "Example responses to the Special Connections pregnancy and postpartum risk screening questionnaire within a BHA mental health episode of care."
Usage: #example
* questionnaire = Canonical(BHASCPregnancyPostpartumRiskQuestionnaire)
* status = #completed
* subject = Reference(Patient/BHAClientExampleSouth) "Gabriela Torres"
* authored = "2025-06-15T08:00:00Z"
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-06-15T08:00:00Z"
* item[+].linkId = "EVALUATION_DATE"
* item[=].text = "Evaluation Date"
* item[=].answer.valueDate = "2025-06-15"
* item[+].linkId = "PREGNANCY_POSTPARTUM_STATUS"
* item[=].text = "Pregnancy/Postpartum Status"
* item[=].answer.valueCoding = BHAPregnancyPostpartumCS#03
* item[+].linkId = "PREGNANCY_POSTPARTUM_CARE_STATUS"
* item[=].text = "Pregnancy/Postpartum Care Status"
* item[=].answer.valueCoding = BHAPregnancyPostpartumCareStatusCS#01
* item[+].linkId = "DRUG_ALCOHOL_TREATMENT_ACCESS"
* item[=].text = "Access to other drug/alcohol treatment"
* item[=].answer.valueCoding = BHAAccessToOtherTreatmentCS#02
* item[+].linkId = "FAMILY_SOCIAL_SUPPORT"
* item[=].text = "Family/Social Support"
* item[=].answer.valueCoding = BHAFamilySocialSupportCS#01
* item[+].linkId = "FAMILY_SUD_HISTORY"
* item[=].text = "Family substance use disorder history"
* item[=].answer.valueCoding = BHAFamilySubstanceUseDisorderCS#05
* item[+].linkId = "FAMILY_SUD_CURRENT"
* item[=].text = "Family substance use disorder current"
* item[=].answer.valueCoding = BHAFamilySubstanceUseDisorderCS#04
* item[+].linkId = "DRUG_USING_PARTNER"
* item[=].text = "Drug using partner"
* item[=].answer.valueCoding = BHADrugUsingPartnerCS#01
* item[+].linkId = "HIV_RISK"
* item[=].text = "HIV Risk"
* item[=].answer.valueCoding = BHAHIVRiskCS#01
* item[+].linkId = "HOME_STABILITY_SAFETY"
* item[=].text = "Home Stability and Safety"
* item[=].answer.valueCoding = BHAHomeStabilitySafetyCS#01
* item[+].linkId = "PERSONAL_SAFETY"
* item[=].text = "Personal Safety"
* item[=].answer.valueCoding = BHAPersonalSafetyCS#02
* item[+].linkId = "PRIOR_CRIMINAL_RECORD"
* item[=].text = "Prior Criminal Record"
* item[=].answer.valueCoding = BHAPriorCriminalRecordCS#02
* item[+].linkId = "MENTAL_HEALTH_HISTORY"
* item[=].text = "Mental Health History"
* item[=].answer.valueCoding = BHAMentalHealthHistoryCS#01
* item[+].linkId = "PRIOR_ALCOHOL_DRUG_TREATMENT"
* item[=].text = "Prior alcohol/drug treatment"
* item[=].answer.valueCoding = BHAPriorAlcoholDrugTreatmentCS#03
* item[+].linkId = "CHILDREN_LIVING_WITH_CLIENT"
* item[=].text = "Children Living in home with you"
* item[=].answer.valueBoolean = true
* item[+].linkId = "CHILDREN_AGES_LIVING_WITH_CLIENT"
* item[=].text = "Children Ages living in home with you"
* item[=].answer.valueCoding = BHAChildrenAgesLivingInHomeCS#01
* item[+].linkId = "episodeOfCare"
* item[=].text = "Episode of Care Information"
* item[=].answer.valueReference = Reference(BHAEpisodeOfCareExampleSouthBH)

Instance: BHASCBabyQuestionnaireResponseExampleSouth
InstanceOf: $us-core-questionnaireresponse
Title: "Example SC Baby Questionnaire Responses South"
Description: "Example responses to the Special Connections baby questionnaire for the south region client"
Usage: #example
* questionnaire = Canonical(BHASCBabyQuestionnaire)
* status = #completed
* subject = Reference(Patient/BHAClientExampleSouth) "Gabriela Torres"
* authored = "2025-09-20T18:30:40-07:00"
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-09-20T18:30:40-07:00"
* item[+].linkId = "LIVE_BIRTH"
* item[=].text = "Live Birth"
* item[=].answer.valueBoolean = true
* item[+].linkId = "DOB"
* item[=].text = "Baby Date of Birth"
* item[=].answer.valueDate = "2025-09-20"
* item[+].linkId = "WEIGHT_LBS"
* item[=].text = "Baby Weight Pounds"
* item[=].answer.valueDecimal = 7
* item[+].linkId = "WEIGHT_OZ"
* item[=].text = "Baby Weight Ounces"
* item[=].answer.valueDecimal = 3
* item[+].linkId = "LAST_NAME"
* item[=].text = "Baby Last Name"
* item[=].answer.valueString = "Torres"
* item[+].linkId = "FIRST_NAME"
* item[=].text = "Baby First Name"
* item[=].answer.valueString = "Mateo"
* item[+].linkId = "MIDDLE_NAME_INITIAL"
* item[=].text = "Baby Middle Name or Initial"
* item[=].answer.valueString = "A"
* item[+].linkId = "SEX_AT_BIRTH"
* item[=].text = "Baby Sex at Birth"
* item[=].answer.valueCoding.system = "http://hl7.org/fhir/administrative-gender"
* item[=].answer.valueCoding.code = #male
* item[+].linkId = "Baby_Patient_Reference"
* item[=].text = "Reference to the Baby's Patient Resource"
* item[=].answer.valueReference = Reference(BabyPatientExampleSouth)
* item[+].linkId = "episodeOfCare"
* item[=].text = "Episode of Care Information"
* item[=].answer.valueReference = Reference(BHAEpisodeOfCareExampleSouthBH)

Instance: BabyPatientExampleSouth
InstanceOf: $us-core-patient
Title: "Example Baby Patient Resource South"
Description: "Example Patient Resource for a baby born to Gabriela Torres."
* meta.lastUpdated =  "2025-09-20T18:30:40-07:00"
* identifier[+].use = #usual
* identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[=].system = "http://hospital.example.org"
* identifier[=].value = "789012"
* active = true
* name[+].family = "Torres"
* name[=].given[+] = "Mateo"
* birthDate = "2025-09-20"
* gender = #male
* extension[birthsex].valueCode = http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#M

Instance: AllOfExampleSouth
InstanceOf: Bundle
Title: "All of South data"
Description: "This bundle contains all of the FHIR Resources for Patient South (Gabriela Torres)."
Usage: #example
* type = #batch
* entry[+].resource = BHAClientExampleSouth
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/BHAClientExampleSouth"
* entry[=].fullUrl = "http://example.org/fhir/Patient/BHAClientExampleSouth"
* entry[+].resource = BHAEpisodeOfCareExampleSouthBH
* entry[=].request.method = #PUT
* entry[=].request.url = "EpisodeOfCare/BHAEpisodeOfCareExampleSouthBH"
* entry[=].fullUrl = "http://example.org/fhir/EpisodeOfCare/BHAEpisodeOfCareExampleSouthBH"
* entry[+].resource = BHAEpisodeDiagnosisExampleSouthBH
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/BHAEpisodeDiagnosisExampleSouthBH"
* entry[=].fullUrl = "http://example.org/fhir/Condition/BHAEpisodeDiagnosisExampleSouthBH"
* entry[+].resource = BHAAdmissionQuestionnaireResponseExampleSouth
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHAAdmissionQuestionnaireResponseExampleSouth"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHAAdmissionQuestionnaireResponseExampleSouth"
* entry[+].resource = BHADischargeQuestionnaireResponseExampleSouth
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHADischargeQuestionnaireResponseExampleSouth"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHADischargeQuestionnaireResponseExampleSouth"
* entry[+].resource = BHASCPregnancyQuestionnaireResponseExampleSouth
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHASCPregnancyQuestionnaireResponseExampleSouth"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHASCPregnancyQuestionnaireResponseExampleSouth"
* entry[+].resource = BHASCBabyQuestionnaireResponseExampleSouth
* entry[=].request.method = #PUT
* entry[=].request.url = "QuestionnaireResponse/BHASCBabyQuestionnaireResponseExampleSouth"
* entry[=].fullUrl = "http://example.org/fhir/QuestionnaireResponse/BHASCBabyQuestionnaireResponseExampleSouth"
* entry[+].resource = BabyPatientExampleSouth
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/BabyPatientExampleSouth"
* entry[=].fullUrl = "http://example.org/fhir/Patient/BabyPatientExampleSouth"
