
BHA aims to leverage data interoperability capabilities already available in certified EHRs, in order to reduce 
the overall effort required for implementations of this IG. In cases where federal regulatory requirements for 
data exchange via FHIR are not sufficient for BHA reporting, this IG has identified FHIR resources and data elements 
that will effectively capture the required information and that we believe will have long-term value to Colorado providers 
and to technology implementers for this and other core healthcare use cases.

Specifically, the profiles in this IG are based on [US Core STU6]({{site.data.fhir.uscore}}/index.html) where possible. 
A notable exception is the BHA Service profile, which is based on the [FHIR R4 EpisodeOfCare resource](https://hl7.org/fhir/R4/episodeofcare.html).

### Relationship to the Colorado Behavioral Health Reporting Model (CoBHRM)

The Colorado Behavioral Health Reporting Model (CoBHRM) specifies the full data requirements for BHA reporting. This IG does *not*
cover the entirety of the CoBHRM. Instead, the specification provided here defines, in FHIR, the data elements that must be
captured at clinical sites to support BHA and SAMHSA reporting requirements.

#### Illustrative Example of Workflow and Reporting Milestones

<div>
<img src="workflow-episode-timeline.svg" caption="Illustrative Example of Workflow and Reporting Milestones" width="100%"/>
</div>

This IG does not prescribe how data is exchanged between clinical sites and Behavioral Health Administrative Service Organizations (BHASOs) or other intermediaries. BHASOs and other organizations involved in the reporting pipeline are encouraged to adopt, extend, or build upon these FHIR definitions to suit their specific integration workflows. See the [workflow page](workflow.html) for an illustrative example of how data might flow from clinical sites to BHA, and for the reporting milestones that would trigger the creation of FHIR resources as specified in this IG.

#### CoBHRM to FHIR Mapping

| CoBHRM File             | FHIR Profile or Questionnaire                                   |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Client                  | [CO BHA Client Profile](StructureDefinition-bha-client-mappings.html#other-mappings)                                                      |
| Client                  | [BHA Client Questionnaire](Questionnaire-BHAClientQuestionnaire.html)                                                                     |
| Client                  | [US Core Observation Sexual Orientation]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-sexual-orientation.html)       |
| Admission               | [CO BHA Episode Profile](StructureDefinition-bha-episodeOfCare-mappings.html#other-mappings)                                                    |
| Admission               | [BHA Admission Questionnaire](Questionnaire-BHAAdmissionQuestionnaire.html)                                                               |
| Admission               | [US Core Observation Pregnancy Status]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-pregnancystatus.html)            |
| Service                 | [BHA Service Questionnaire](Questionnaire-BHAServiceQuestionnaire.html)                                                                   |
| Discharge               | [CO BHA Episode Profile](StructureDefinition-bha-episodeOfCare-mappings.html#other-mappings)                                                    |
| Discharge               | [BHA Discharge Questionnaire](Questionnaire-BHADischargeQuestionnaire.html)                                                               |
| Diagnosis               | [CO BHA Episode Diagnosis Profile](StructureDefinition-BHAEpisodeDiagnosis-mappings.html#other-mappings)                                  |
| Diagnosis               | [CO BHA Episode Profile](StructureDefinition-bha-episodeOfCare-mappings.html#other-mappings)                                                    |
| Diagnosis               | [BHA Diagnosis Questionnaire](Questionnaire-BHADiagnosisQuestionnaire.html)                                                               |
| Substance Use Disorder  | [BHA Substance Use Disorder Questionnaire](Questionnaire-BHASubstanceUseDisorderQuestionnaire.html)                                       |
| SC Pregnancy/PostPartum | [BHA Special Connections Pregnancy/Postpartum Risk Screening Questionnaire](Questionnaire-BHASCPregnancyPostpartumRiskQuestionnaire.html) |
| SC Baby                 | [BHA SC Baby Questionnaire](Questionnaire-BHASCBabyQuestionnaire.html)                                                                    |
{: .grid}

##### Full Mapping

| CoBHRM File             | CoBHRM Field Name                                                            | FHIR Element shorthand
| ----------------------- | ---------------------------------------------------------------------------- | -------------------------------------------------------------------
| Client                  | Effective Date                                                               | Patient.meta.lastUpdated<br>BHAClientQuestionnaire:`lastUpdated`
| Client                  | Colorado PEAK State ID<br>/ Universal ID                                     | Patient.identifier[STATE_IDENTIFIER]
| Client                  | BHA Identifier                                                               | Patient.identifier[BHA_IDENTIFIER]
| Client                  | Trails Identifier                                                            | Patient.identifier[TRAILS_IDENTIFIER]<br>BHAClientQuestionnaire:`TRAILS_IDENTIFIER`
| Client                  | Verato Identifier                                                            | Patient.identifier[VERATO_IDENTIFIER]
| Client                  | DOB                                                                          | Patient.birthDate
| Client                  | Last Name                                                                    | Patient.name[officialName].family
| Client                  | First Name                                                                   | Patient.name[officialName].given
| Client                  | Middle Name/Initial                                                          | Patient.name[officialName].given
| Client                  | Name Suffix                                                                  | Patient.name[officialName].suffix
| Client                  | Social Security Number                                                       | Patient.identifier[SSN]
| Client                  | County of Residence                                                          | Patient.address[home].district
| Client                  | Zip Code of Residence                                                        | Patient.address[home].postalCode
| Client                  | Race Codes                                                                   | Patient.extension[race]<br>[BHAClientRaceCM](ConceptMap-BHAClientRaceCM.html)
| Client                  | Ethnicity                                                                    | Patient.extension[ethnicity]<br>[BHAEthnicityCM](ConceptMap-BHAClientEthnicityCM.html)
| Client                  | Household Language                                                           | Patient.communication.language<br>[BHAHouseholdLanguageCM](ConceptMap-BHAHouseholdLanguageCM.html)
| Client                  | Sex at Birth                                                                 | Patient.extension[birthsex]
| Client                  | Gender Identity                                                              | Patient.extension[genderIdentity]<br>[BHAGenderIdentityCM](ConceptMap-BHAGenderIdentityCM.html)
| Client                  | Sexual Orientation                                                           | [US Core Observation Sexual Orientation]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-sexual-orientation.html)
| Client                  | Child Welfare Involvement                                                    | BHAClientQuestionnaire:`CHILD_WELFARE_INVOLVEMENT`
| Client                  | Disability Code(s)                                                           | BHAClientQuestionnaire:`DISABILITY_CODES`
| Client                  | Veteran Status                                                               | Patient.extension[USVeteranStatus]
| Client                  | Last known address line 1                                                    | Patient.address[home].line
| Client                  | Last known address line 2                                                    | Patient.address[home].line
| Client                  | Last known city                                                              | Patient.address[home].city
| - - - - - - - - - - - - | - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  | - - - - - - - - - - - - - - |
| Admission               | Effective Date                                                               | EpisodeOfCare.meta.lastUpdated<br>BHAAdmissionQuestionnaire:`lastUpdated`
| Admission               | Admission Identifier                                                         | EpisodeOfCare.identifier[ADMISSION_IDENTIFIER]<br>BHAAdmissionQuestionnaire:`ADMISSION_IDENTIFIER`
| Admission               | NPI / BHE License Number                                                     | EpisodeOfCare.managingOrganization.identifier<br>BHAAdmissionQuestionnaire:`NPI`
| Admission               | Admission Date                                                               | EpisodeOfCare.period.start
| Admission               | Service Identifier                                                           | EpisodeOfCare.diagnosis.condition
| Admission               | Date of First Contact                                                        | BHAAdmissionQuestionnaire:`FIRST_CONTACT_DATE`
| Admission               | Date of First Appointment Offered                                            | BHAAdmissionQuestionnaire:`FIRST_APPOINTMENT_OFFERED_DATE`
| Admission               | Medication Assisted Therapy                                                  | BHAAdmissionQuestionnaire:`MEDICATION_ASSISTED_THERAPY`
| Admission               | Referral Source                                                              | BHAAdmissionQuestionnaire:`REFERRAL_SOURCE`
| Admission               | Arrests in Past 30 Days                                                      | BHAAdmissionQuestionnaire:`ARRESTS_PAST_30_DAYS`
| Admission               | Employment Status                                                            | BHAAdmissionQuestionnaire:`EMPLOYMENT_STATUS`
| Admission               | Marital Status                                                               | BHAAdmissionQuestionnaire:`MARITAL_STATUS`
| Admission               | Living Situation                                                             | BHAAdmissionQuestionnaire:`LIVING_SITUATION`
| Admission               | Monthly Income                                                               | BHAAdmissionQuestionnaire:`MONTHLY_INCOME`
| Admission               | Primary Source of income/support for client                                  | BHAAdmissionQuestionnaire:`PRIMARY_INCOME_SOURCE`
| Admission               | Pregnancy Status                                                             | BHAAdmissionQuestionnaire:`PREGNANCY_STATUS`
| Admission               | Within 1 Year Postpartum Status                                              | BHAAdmissionQuestionnaire:`WITHIN_1_YEAR_POSTPARTUM_STATUS`
| Admission               | Enrollment in Special Connections                                            | BHAAdmissionQuestionnaire:`SPECIAL_CONNECTIONS_ENROLLMENT`
| Admission               | Enrollment in ACT?                                                           | BHAAdmissionQuestionnaire:`ACT_ENROLLMENT`
| Admission               | Enrollment in Ascent (FEP)?                                                  | BHAAdmissionQuestionnaire:`ASCENT_ENROLLMENT`
| Admission               | Number of Dependent Children<br>                                             | BHAAdmissionQuestionnaire:`NUMBER_DEPENDENT_CHILDREN`
| Admission               | Self Help Attendance (Last 30 days at admission)/<br>Peer Support Attendance | BHAAdmissionQuestionnaire:`SELF_HELP_ATTENDANCE`
| Admission               | Substance Use Prior Treatment (Total Lifetime admissions)                    | BHAAdmissionQuestionnaire:`TOTAL_SUBSTANCE_USE_PRIOR_TREATMENT`
| Admission               | Psychiatric Hospital Admission (Last 30 days)                                | BHAAdmissionQuestionnaire:`PSYCHIATRIC_HOSPITAL_ADMISSION`
| Admission               | Legal Status                                                                 | BHAAdmissionQuestionnaire:`LEGAL_STATUS`
| Admission               | Involuntary Reason                                                           | BHAAdmissionQuestionnaire:`INVOLUNTARY_REASON`
| Admission               | Criminal Justice Involvement                                                 | BHAAdmissionQuestionnaire:`CRIMINAL_JUSTICE_INVOLVEMENT`
| Admission               | Education Level                                                              | BHAAdmissionQuestionnaire:`EDUCATION_LEVEL`
| Admission               | School Attendance Status (in the previous 3 months)                          | BHAAdmissionQuestionnaire:`SCHOOL_ATTENDANCE_STATUS`
| Admission               | Visit to Psychiatric ER in last 6 months                                     | BHAAdmissionQuestionnaire:`VISIT_TO_PSYCHIATRIC_ER`
| Admission               | Communication Accomodations                                                  | BHAAdmissionQuestionnaire:`COMMUNICATION_ACCOMODATIONS`
| - - - - - - - - - - - - | - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  | - - - - - - - - - - - - - - |
| Service                 | Record Type                                                                  | BHAAdmissionQuestionnaire:`RECORD_TYPE`
| Service                 | Transaction Type                                                             | BHAAdmissionQuestionnaire:`TRANSACTION_TYPE`
| Service                 | BHASO ADMISSION Identifier                                                   | BHAAdmissionQuestionnaire:`BHASO_ADMISSION_IDENTIFIER`
| Service                 | Effective Date                                                               | BHAAdmissionQuestionnaire:`EFFECTIVE_DATE`
| Service                 | Evidence Based Practice                                                      | BHAAdmissionQuestionnaire:`EVIDENCE_BASED_PRACTICE`
| Service                 | Program                                                                      | BHAAdmissionQuestionnaire:`PROGRAM`
| Service                 | Created Date                                                                 | QuestionnaireResponse:CREATED_DATE
| Service                 | Created By                                                                   | QuestionnaireResponse:CREATED_BY
| Service                 | Last Updated Date                                                            | QuestionnaireResponse:LAST_UPDATED_DATE
| - - - - - - - - - - - - | - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  | - - - - - - - - - - - - - - |
| Discharge               | Effective Date                                                               | QuestionnaireResponse.meta.lastUpdated
| Discharge               | Date of Last Contact                                                         | (TODO is this Encounter, or should it be a Questionnaire item? )
| Discharge               | Discharge Date                                                               | EpisodeOfCare.period.end
| Discharge               | Discharge Type / Status                                                      | EpisodeOfCare.status
| Discharge               | End of Treatment Reason                                                      | QuestionnaireResponse
| Discharge               | Arrests in Past 30 Days                                                      | QuestionnaireResponse
| Discharge               | Employment Status                                                            | QuestionnaireResponse
| Discharge               | Living Situation                                                             | QuestionnaireResponse
| Discharge               | Self Help Attendance/ Peer Support Attendance (Last 30 days at discharge)    | QuestionnaireResponse
| Discharge               | Education Level                                                              | QuestionnaireResponse
| Discharge               | School Attendance Status (in the previous 3 months)                          | QuestionnaireResponse
| Discharge               | Legal Status                                                                 | QuestionnaireResponse
| Diagnosis               | Effective Date                                                               | QuestionnaireResponse.meta.lastUpdated
| Diagnosis               | MH Diagnosis Identifier 1                                                    | EpisodeOfCare.diagnosis + EpisodeOfCare.diagnosis.role<br>OR EpisodeOfCare.diagnosis +<br>Condition.code + Condition.extension[diagnosisType]
| Diagnosis               | MH Diagnosis Identifier 2                                                    | EpisodeOfCare.diagnosis + EpisodeOfCare.diagnosis.role<br>OR EpisodeOfCare.diagnosis +<br>Condition.code + Condition.extension[diagnosisType]
| Diagnosis               | MH Diagnosis Identifier 3                                                    | EpisodeOfCare.diagnosis + EpisodeOfCare.diagnosis.role<br>OR EpisodeOfCare.diagnosis +<br>Condition.code + Condition.extension[diagnosisType]
| Diagnosis               | SUD Diagnosis Identifier                                                     | EpisodeOfCare.diagnosis + EpisodeOfCare.diagnosis.role<br>OR EpisodeOfCare.diagnosis +<br>Condition.code + Condition.extension[diagnosisType]
| Diagnosis               | SMI/SED Status                                                               | QuestionnaireResponse
| Substance Use Disorder  | Effective Date                                                               | QuestionnaireResponse.meta.lastUpdated
| Substance Use Disorder  | ASAM Level of Care                                                           | QuestionnaireResponse:ASAM_LEVEL_OF_CARE
| Substance Use Disorder  | Primary Substance Use                                                        | QuestionnaireResponse
| Substance Use Disorder  | Times Used Primary Substance in Last 30 Days                                 | QuestionnaireResponse
| Substance Use Disorder  | Route of Use of Primary Substances                                           | QuestionnaireResponse
| Substance Use Disorder  | Age of First Use of Primary Substances                                       | QuestionnaireResponse
| Substance Use Disorder  | Secondary Substance Use                                                      | QuestionnaireResponse
| Substance Use Disorder  | Times Used Secondary Substance in Last 30 Days                               | QuestionnaireResponse
| Substance Use Disorder  | Route of Use of Secondary Substances                                         | QuestionnaireResponse
| Substance Use Disorder  | Age of First Use of Secondary Substances                                     | QuestionnaireResponse
| Substance Use Disorder  | Tertiary Substance Use                                                       | QuestionnaireResponse
| Substance Use Disorder  | Times Used Tertiary Substance in Last 30 Days                                | QuestionnaireResponse
| Substance Use Disorder  | Route of Use of Tertiary Substances                                          | QuestionnaireResponse
| Substance Use Disorder  | Age of First Use of Tertiary Substances                                      | QuestionnaireResponse
| SC Pregnancy/PostPartum | Effective Date                                                               | QuestionnaireResponse.meta.lastUpdated
| SC Pregnancy/PostPartum | Evaluation Date                                                              | QuestionnaireResponse
| SC Pregnancy/PostPartum | Pregnancy/Postpartum Status                                                  | QuestionnaireResponse
| SC Pregnancy/PostPartum | Pregnancy/Postpartum Care Status                                             | QuestionnaireResponse
| SC Pregnancy/PostPartum | Access to other drug/alcohol treatment                                       | QuestionnaireResponse
| SC Pregnancy/PostPartum | Family/Social Support                                                        | QuestionnaireResponse
| SC Pregnancy/PostPartum | Family substance use disorder history                                        | QuestionnaireResponse
| SC Pregnancy/PostPartum | Family substance use disorder current                                        | QuestionnaireResponse
| SC Pregnancy/PostPartum | Drug using partner                                                           | QuestionnaireResponse
| SC Pregnancy/PostPartum | HIV Risk                                                                     | QuestionnaireResponse
| SC Pregnancy/PostPartum | Home Stability and Safety                                                    | QuestionnaireResponse
| SC Pregnancy/PostPartum | Personal Safety                                                              | QuestionnaireResponse
| SC Pregnancy/PostPartum | Prior Criminal Record                                                        | QuestionnaireResponse
| SC Pregnancy/PostPartum | Mental Health History                                                        | QuestionnaireResponse
| SC Pregnancy/PostPartum | Prior alcohol/drug treatment                                                 | QuestionnaireResponse
| SC Pregnancy/PostPartum | Children Living in home with you                                             | QuestionnaireResponse
| SC Pregnancy/PostPartum | Children Ages living in home with you                                        | QuestionnaireResponse
| SC Baby                 | Effective Date                                                               | BHASCBabyQuestionnaire:lastUpdated
| SC Baby                 | Live Birth                                                                   | BHASCBabyQuestionnaire:LIVE_BIRTH
| SC Baby                 | Baby Date of Birth                                                           | BHASCBabyQuestionnaire:DOB
| SC Baby                 | Baby Weight Pounds                                                           | BHASCBabyQuestionnaire:WEIGHT_LBS
| SC Baby                 | Baby Weight Ounces                                                           | BHASCBabyQuestionnaire:WEIGHT_OZ
| SC Baby                 | Baby Last Name                                                               | BHASCBabyQuestionnaire:LAST_NAME
| SC Baby                 | Baby First Name                                                              | BHASCBabyQuestionnaire:FIRST_NAME
| SC Baby                 | Baby Middle Name or Initial                                                  | BHASCBabyQuestionnaire:MIDDLE_NAME_INITIAL
| SC Baby                 | Baby Sex at Birth                                                            | BHASCBabyQuestionnaire:SEX_AT_BIRTH
{: .grid}

##### ACT and Ascent Valid Values Reference

For CoBHRM ACT-sheet fields that reference 9(2) valid values (including Discharge Outcomes and Education-related fields), this IG aligns to **Appendix ACT-Ascent** (moved from Appendix A in the May 2026 update).

In the current FHIR artifacts, this applies to the coded values used for:

- Admission: Education Level
- Discharge: End of Treatment Reason
- Discharge: Education Level

<!-- 
##### Client File                                             |

##### Admission File

 Note to maintainers: To update or recreate the table above, I suggest using a spreadsheet-to-Markdown converter, such as the one
at https://tabletomarkdown.com/convert-spreadsheet-to-markdown/ 
-->


