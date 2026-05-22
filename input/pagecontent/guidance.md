
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

### CoBHRM to FHIR Mapping

| CoBHRM File             | FHIR Profile or Questionnaire                                                                                                             |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Client                  | [CO BHA Client Profile](StructureDefinition-bha-client-mappings.html#other-mappings)                                                      |
| Client                  | [BHA Client Questionnaire](Questionnaire-BHAClientQuestionnaire.html)                                                                     |
| Client                  | [US Core Observation Sexual Orientation]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-sexual-orientation.html)       |
| Admission               | [CO BHA Episode Profile](StructureDefinition-bha-episodeOfCare-mappings.html#other-mappings)                                              |
| Admission               | [BHA Admission Questionnaire](Questionnaire-BHAAdmissionQuestionnaire.html)                                                               |
| Admission               | [US Core Observation Pregnancy Status]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-pregnancystatus.html)            |
| Service                 | [BHA Service Questionnaire](Questionnaire-BHAServiceQuestionnaire.html)                                                                   |
| Discharge               | [CO BHA Episode Profile](StructureDefinition-bha-episodeOfCare-mappings.html#other-mappings)                                              |
| Discharge               | [BHA Discharge Questionnaire](Questionnaire-BHADischargeQuestionnaire.html)                                                               |
| Diagnosis               | [CO BHA Episode Diagnosis Profile](StructureDefinition-BHAEpisodeDiagnosis-mappings.html#other-mappings)                                  |
| Diagnosis               | [CO BHA Episode Profile](StructureDefinition-bha-episodeOfCare-mappings.html#other-mappings)                                              |
| Diagnosis               | [BHA Diagnosis Questionnaire](Questionnaire-BHADiagnosisQuestionnaire.html)                                                               |
| Substance Use Disorder  | [BHA Substance Use Disorder Questionnaire](Questionnaire-BHASubstanceUseDisorderQuestionnaire.html)                                       |
| SC Pregnancy/PostPartum | [BHA Special Connections Pregnancy/Postpartum Risk Screening Questionnaire](Questionnaire-BHASCPregnancyPostpartumRiskQuestionnaire.html) |
| SC Baby                 | [BHA SC Baby Questionnaire](Questionnaire-BHASCBabyQuestionnaire.html)                                                                    |
{: .grid}

#### Client

- [CO BHA Client Profile](StructureDefinition-bha-client-mappings.html#other-mappings)
- [BHA Client Questionnaire](Questionnaire-BHAClientQuestionnaire.html)
- [US Core Observation Sexual Orientation]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-sexual-orientation.html)

| CoBHRM Field Name                        | FHIR Element shorthand                                                                                                              |
| ---------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| Effective Date                           | Patient.meta.lastUpdated<br>BHAClientQuestionnaireResponse:`lastUpdated`                                                            |
| Colorado PEAK State ID<br>/ Universal ID | Patient.identifier[STATE_IDENTIFIER]                                                                                                |
| BHA Identifier                           | Patient.identifier[BHA_IDENTIFIER]                                                                                                  |
| Trails Identifier                        | Patient.identifier[TRAILS_IDENTIFIER]<br>BHAClientQuestionnaireResponse:`TRAILS_IDENTIFIER`                                         |
| Verato Identifier                        | Patient.identifier[VERATO_IDENTIFIER]                                                                                               |
| DOB                                      | Patient.birthDate                                                                                                                   |
| Last Name                                | Patient.name[officialName].family                                                                                                   |
| First Name                               | Patient.name[officialName].given                                                                                                    |
| Middle Name/Initial                      | Patient.name[officialName].given                                                                                                    |
| Name Suffix                              | Patient.name[officialName].suffix                                                                                                   |
| Social Security Number                   | Patient.identifier[SSN]                                                                                                             |
| County of Residence                      | Patient.address[home].district                                                                                                      |
| Zip Code of Residence                    | Patient.address[home].postalCode                                                                                                    |
| Race Codes                               | Patient.extension[race]<br>[BHAClientRaceCM](ConceptMap-BHAClientRaceCM.html)                                                       |
| Ethnicity                                | Patient.extension[ethnicity]<br>[BHAEthnicityCM](ConceptMap-BHAClientEthnicityCM.html)                                              |
| Household Language                       | Patient.communication.language<br>[BHAHouseholdLanguageCM](ConceptMap-BHAHouseholdLanguageCM.html)                                  |
| Sex at Birth                             | Patient.extension[birthsex]                                                                                                         |
| Gender Identity                          | Patient.extension[genderIdentity]<br>[BHAGenderIdentityCM](ConceptMap-BHAGenderIdentityCM.html)                                     |
| Sexual Orientation                       | [US Core Observation Sexual Orientation]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-sexual-orientation.html) |
| Child Welfare Involvement                | BHAClientQuestionnaireResponse:`CHILD_WELFARE_INVOLVEMENT`                                                                          |
| Disability Code(s)                       | BHAClientQuestionnaireResponse:`DISABILITY_CODES`                                                                                   |
| Veteran Status                           | Patient.extension[USVeteranStatus]                                                                                                  |
| Last known address line 1                | Patient.address[home].line                                                                                                          |
| Last known address line 2                | Patient.address[home].line                                                                                                          |
| Last known city                          | Patient.address[home].city                                                                                                          |
{: .grid}

#### Admission

- [CO BHA Episode Profile](StructureDefinition-bha-episodeOfCare-mappings.html#other-mappings)
- [BHA Admission Questionnaire](Questionnaire-BHAAdmissionQuestionnaire.html)
- [US Core Observation Pregnancy Status]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-pregnancystatus.html)
- [CO BHA Client Profile](StructureDefinition-bha-client-mappings.html#other-mappings)

| CoBHRM Field Name                                                            | FHIR Element shorthand                                                                                     |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| Effective Date                                                               | EpisodeOfCare.meta.lastUpdated<br>BHAAdmissionQuestionnaireResponse:`lastUpdated`                          |
| Admission Identifier                                                         | EpisodeOfCare.identifier[ADMISSION_IDENTIFIER]<br>BHAAdmissionQuestionnaireResponse:`ADMISSION_IDENTIFIER` |
| NPI / BHE License Number                                                     | EpisodeOfCare.managingOrganization.identifier<br>BHAAdmissionQuestionnaireResponse:`NPI`                   |
| Admission Date                                                               | EpisodeOfCare.period.start                                                                                 |
| Service Identifier                                                           | EpisodeOfCare.diagnosis.condition                                                                          |
| Date of First Contact                                                        | BHAAdmissionQuestionnaireResponse:`FIRST_CONTACT_DATE`                                                     |
| Date of First Appointment Offered                                            | BHAAdmissionQuestionnaireResponse:`FIRST_APPOINTMENT_OFFERED_DATE`                                         |
| Medication Assisted Therapy                                                  | BHAAdmissionQuestionnaireResponse:`MEDICATION_ASSISTED_THERAPY`                                            |
| Referral Source                                                              | BHAAdmissionQuestionnaireResponse:`REFERRAL_SOURCE`                                                        |
| Arrests in Past 30 Days                                                      | BHAAdmissionQuestionnaireResponse:`ARRESTS_PAST_30_DAYS`                                                   |
| Employment Status                                                            | BHAAdmissionQuestionnaireResponse:`EMPLOYMENT_STATUS`                                                      |
| Marital Status                                                               | Patient.maritalStatus                                                                                      |
| Living Situation                                                             | BHAAdmissionQuestionnaireResponse:`LIVING_SITUATION`                                                       |
| Monthly Income                                                               | BHAAdmissionQuestionnaireResponse:`MONTHLY_INCOME`                                                         |
| Primary Source of income/support for client                                  | BHAAdmissionQuestionnaireResponse:`PRIMARY_INCOME_SOURCE`                                                  |
| Pregnancy Status                                                             | BHAAdmissionQuestionnaireResponse:`PREGNANCY_STATUS`                                                       |
| Within 1 Year Postpartum Status                                              | BHAAdmissionQuestionnaireResponse:`WITHIN_1_YEAR_POSTPARTUM_STATUS`                                        |
| Enrollment in Special Connections                                            | BHAAdmissionQuestionnaireResponse:`SPECIAL_CONNECTIONS_ENROLLMENT`                                         |
| Enrollment in ACT?                                                           | BHAAdmissionQuestionnaireResponse:`ACT_ENROLLMENT`                                                         |
| Enrollment in Ascent (FEP)?                                                  | BHAAdmissionQuestionnaireResponse:`ASCENT_ENROLLMENT`                                                      |
| Number of Dependent Children<br>                                             | BHAAdmissionQuestionnaireResponse:`NUMBER_DEPENDENT_CHILDREN`                                              |
| Self Help Attendance (Last 30 days at admission)/<br>Peer Support Attendance | BHAAdmissionQuestionnaireResponse:`SELF_HELP_ATTENDANCE`                                                   |
| Substance Use Prior Treatment (Total Lifetime admissions)                    | BHAAdmissionQuestionnaireResponse:`TOTAL_SUBSTANCE_USE_PRIOR_TREATMENT`                                    |
| Psychiatric Hospital Admission (Last 30 days)                                | BHAAdmissionQuestionnaireResponse:`PSYCHIATRIC_HOSPITAL_ADMISSION`                                         |
| Legal Status                                                                 | BHAAdmissionQuestionnaireResponse:`LEGAL_STATUS`                                                           |
| Involuntary Reason                                                           | BHAAdmissionQuestionnaireResponse:`INVOLUNTARY_REASON`                                                     |
| Criminal Justice Involvement                                                 | BHAAdmissionQuestionnaireResponse:`CRIMINAL_JUSTICE_INVOLVEMENT`                                           |
| Education Level                                                              | BHAAdmissionQuestionnaireResponse:`EDUCATION_LEVEL`                                                        |
| School Attendance Status (in the previous 3 months)                          | BHAAdmissionQuestionnaireResponse:`SCHOOL_ATTENDANCE_STATUS`                                               |
| Visit to Psychiatric ER in last 6 months                                     | BHAAdmissionQuestionnaireResponse:`VISIT_TO_PSYCHIATRIC_ER`                                                |
| Communication Accommodations                                                 | BHAAdmissionQuestionnaireResponse:`COMMUNICATION_ACCOMMODATIONS`                                           |
{: .grid}

#### Service

<div markdown="1" class="dragon">
Not clear this should be included in this IG
</div>

- [BHA Service Questionnaire](Questionnaire-BHAServiceQuestionnaire.html)

| CoBHRM Field Name          | FHIR Element shorthand                                       |
| -------------------------- | ------------------------------------------------------------ |
| BHASO ADMISSION Identifier | BHAServiceQuestionnaireResponse:`BHASO_ADMISSION_IDENTIFIER` |
| Effective Date             | BHAServiceQuestionnaireResponse:`EFFECTIVE_DATE`             |
| Evidence Based Practice    | BHAServiceQuestionnaireResponse:`EVIDENCE_BASED_PRACTICE`    |
| Program                    | BHAServiceQuestionnaireResponse:`PROGRAM`                    |
| Created Date               | BHAServiceQuestionnaireResponse:`CREATED_DATE`               |
| Created By                 | BHAServiceQuestionnaireResponse:`CREATED_BY`                 |
| Last Updated Date          | BHAServiceQuestionnaireResponse:`LAST_UPDATED_DATE`          |
{: .grid}

#### Discharge

- [CO BHA Episode Profile](StructureDefinition-bha-episodeOfCare-mappings.html#other-mappings)
- [BHA Discharge Questionnaire](Questionnaire-BHADischargeQuestionnaire.html)

| CoBHRM Field Name                                                         | FHIR Element shorthand                                                           |
| ------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| Effective Date                                                            | BHADischargeQuestionnaireResponse:`lastUpdated`                                  |
| Date of Last Contact                                                      | BHADischargeQuestionnaireResponse:`DATE_OF_LAST_CONTACT`                         |
| Discharge Date                                                            | EpisodeOfCare.period.end<br>BHADischargeQuestionnaireResponse:`DISCHARGE_DATE`   |
| Discharge Type / Status                                                   | BHADischargeQuestionnaireResponse:`DISCHARGE_TYPE`                               |
| End of Treatment Reason                                                   | BHADischargeQuestionnaireResponse:`END_OF_TREATMENT_REASON`                      |
| Arrests in Past 30 Days                                                   | BHADischargeQuestionnaireResponse:`ARRESTS_IN_PAST_30_DAYS`                      |
| Employment Status                                                         | BHADischargeQuestionnaireResponse:`EMPLOYMENT_STATUS`                            |
| Living Situation                                                          | BHADischargeQuestionnaireResponse:`LIVING_SITUATION`                             |
| Self Help Attendance/ Peer Support Attendance (Last 30 days at discharge) | BHADischargeQuestionnaireResponse:`SELF_HELP_ATTENDANCE_PEER_SUPPORT_ATTENDANCE` |
| Education Level                                                           | BHADischargeQuestionnaireResponse:`EDUCATION_LEVEL`                              |
| School Attendance Status (in the previous 3 months)                       | BHADischargeQuestionnaireResponse:`SCHOOL_ATTENDANCE_STATUS`                     |
| Legal Status                                                              | BHADischargeQuestionnaireResponse:`LEGAL_STATUS`                                 |
{: .grid}

#### Diagnosis

- [CO BHA Episode Diagnosis Profile](StructureDefinition-BHAEpisodeDiagnosis-mappings.html#other-mappings)                                  
- [CO BHA Episode Profile](StructureDefinition-bha-episodeOfCare-mappings.html#other-mappings)                                                    
- [BHA Diagnosis Questionnaire](Questionnaire-BHADiagnosisQuestionnaire.html)                                                               


| CoBHRM Field Name         | FHIR Element shorthand                                                                                                                        |
| ------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| Effective Date            | QuestionnaireResponse.meta.lastUpdated                                                                                                        |
| MH Diagnosis Identifier 1 | EpisodeOfCare.diagnosis + EpisodeOfCare.diagnosis.role<br>OR EpisodeOfCare.diagnosis +<br>Condition.code + Condition.extension[diagnosisType] |
| MH Diagnosis Identifier 2 | EpisodeOfCare.diagnosis + EpisodeOfCare.diagnosis.role<br>OR EpisodeOfCare.diagnosis +<br>Condition.code + Condition.extension[diagnosisType] |
| MH Diagnosis Identifier 3 | EpisodeOfCare.diagnosis + EpisodeOfCare.diagnosis.role<br>OR EpisodeOfCare.diagnosis +<br>Condition.code + Condition.extension[diagnosisType] |
| SUD Diagnosis Identifier  | EpisodeOfCare.diagnosis + EpisodeOfCare.diagnosis.role<br>OR EpisodeOfCare.diagnosis +<br>Condition.code + Condition.extension[diagnosisType] |
| SMI/SED Status            | QuestionnaireResponse                                                                                                                         |
{: .grid}

#### Substance Use Disorder

- [BHA Substance Use Disorder Questionnaire](Questionnaire-BHASubstanceUseDisorderQuestionnaire.html)

| CoBHRM Field Name                              | FHIR Element shorthand                   |
| ---------------------------------------------- | ---------------------------------------- |
| Effective Date                                 | QuestionnaireResponse.meta.lastUpdated   |
| ASAM Level of Care                             | QuestionnaireResponse:ASAM_LEVEL_OF_CARE |
| Primary Substance Use                          | QuestionnaireResponse                    |
| Times Used Primary Substance in Last 30 Days   | QuestionnaireResponse                    |
| Route of Use of Primary Substances             | QuestionnaireResponse                    |
| Age of First Use of Primary Substances         | QuestionnaireResponse                    |
| Secondary Substance Use                        | QuestionnaireResponse                    |
| Times Used Secondary Substance in Last 30 Days | QuestionnaireResponse                    |
| Route of Use of Secondary Substances           | QuestionnaireResponse                    |
| Age of First Use of Secondary Substances       | QuestionnaireResponse                    |
| Tertiary Substance Use                         | QuestionnaireResponse                    |
| Times Used Tertiary Substance in Last 30 Days  | QuestionnaireResponse                    |
| Route of Use of Tertiary Substances            | QuestionnaireResponse                    |
| Age of First Use of Tertiary Substances        | QuestionnaireResponse                    |
{: .grid}

#### SC Pregnancy/PostPartum

- [BHA Special Connections Pregnancy/Postpartum Risk Screening Questionnaire](Questionnaire-BHASCPregnancyPostpartumRiskQuestionnaire.html)

| CoBHRM Field Name                      | FHIR Element shorthand                 |
| -------------------------------------- | -------------------------------------- |
| Effective Date                         | QuestionnaireResponse.meta.lastUpdated |
| Evaluation Date                        | QuestionnaireResponse                  |
| Pregnancy/Postpartum Status            | QuestionnaireResponse                  |
| Pregnancy/Postpartum Care Status       | QuestionnaireResponse                  |
| Access to other drug/alcohol treatment | QuestionnaireResponse                  |
| Family/Social Support                  | QuestionnaireResponse                  |
| Family substance use disorder history  | QuestionnaireResponse                  |
| Family substance use disorder current  | QuestionnaireResponse                  |
| Drug using partner                     | QuestionnaireResponse                  |
| HIV Risk                               | QuestionnaireResponse                  |
| Home Stability and Safety              | QuestionnaireResponse                  |
| Personal Safety                        | QuestionnaireResponse                  |
| Prior Criminal Record                  | QuestionnaireResponse                  |
| Mental Health History                  | QuestionnaireResponse                  |
| Prior alcohol/drug treatment           | QuestionnaireResponse                  |
| Children Living in home with you       | QuestionnaireResponse                  |
| Children Ages living in home with you  | QuestionnaireResponse                  |
{: .grid}

#### SC Baby

- [BHA SC Baby Questionnaire](Questionnaire-BHASCBabyQuestionnaire.html)

| CoBHRM Field Name           | FHIR Element shorthand                     |
| --------------------------- | ------------------------------------------ |
| Effective Date              | BHASCBabyQuestionnaire:lastUpdated         |
| Live Birth                  | BHASCBabyQuestionnaire:LIVE_BIRTH          |
| Baby Date of Birth          | BHASCBabyQuestionnaire:DOB                 |
| Baby Weight Pounds          | BHASCBabyQuestionnaire:WEIGHT_LBS          |
| Baby Weight Ounces          | BHASCBabyQuestionnaire:WEIGHT_OZ           |
| Baby Last Name              | BHASCBabyQuestionnaire:LAST_NAME           |
| Baby First Name             | BHASCBabyQuestionnaire:FIRST_NAME          |
| Baby Middle Name or Initial | BHASCBabyQuestionnaire:MIDDLE_NAME_INITIAL |
| Baby Sex at Birth           | BHASCBabyQuestionnaire:SEX_AT_BIRTH        |
{: .grid}

#### ACT and Ascent Valid Values Reference

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


