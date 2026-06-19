
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
| Client                  | [BHA Client Profile](StructureDefinition-bha-client-mappings.html#other-mappings)                                                         |
| Client                  | [BHA Client Questionnaire](Questionnaire-BHAClientQuestionnaire.html)                                                                     |
| Client                  | [US Core Observation Sexual Orientation]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-sexual-orientation.html)       |
| Admission               | [BHA EpisodeOfCare Profile](StructureDefinition-bha-episodeOfCare-mappings.html#other-mappings)                                           |
| Admission               | [BHA Provider Organization Profile](StructureDefinition-bha-organization-mappings.html#other-mappings)                                           |
| Admission               | [BHA Admission Questionnaire](Questionnaire-BHAAdmissionQuestionnaire.html)                                                               |
| Admission               | [US Core Observation Pregnancy Status]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-pregnancystatus.html)            |
| Discharge               | [BHA EpisodeOfCare Profile](StructureDefinition-bha-episodeOfCare-mappings.html#other-mappings)                                           |
| Discharge               | [BHA Discharge Questionnaire](Questionnaire-BHADischargeQuestionnaire.html)                                                               |
| Diagnosis               | [BHA Episode Diagnosis Profile](StructureDefinition-BHAEpisodeDiagnosis-mappings.html#other-mappings)                                     |
| Diagnosis               | [BHA EpisodeOfCare Profile](StructureDefinition-bha-episodeOfCare-mappings.html#other-mappings)                                           |
| Diagnosis               | [BHA Diagnosis Questionnaire](Questionnaire-BHADiagnosisQuestionnaire.html)                                                               |
| Substance Use Disorder  | [BHA Substance Use Disorder Questionnaire](Questionnaire-BHASubstanceUseDisorderQuestionnaire.html)                                       |
| SC Pregnancy/PostPartum | [BHA Special Connections Pregnancy/Postpartum Risk Screening Questionnaire](Questionnaire-BHASCPregnancyPostpartumRiskQuestionnaire.html) |
| SC Baby                 | [BHA SC Baby Questionnaire](Questionnaire-BHASCBabyQuestionnaire.html)                                                                    |
{: .grid}

#### Client

- [BHA Client Profile](StructureDefinition-bha-client.html)
- [BHA Client Questionnaire](Questionnaire-BHAClientQuestionnaire.html)
- [US Core Observation Sexual Orientation]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-sexual-orientation.html)

| CoBHRM Field Name                        | FHIR Element shorthand                                                                                                              |
| ---------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| Effective Date                           | Patient.meta.lastUpdated<br>BHAClientQuestionnaireResponse:`lastUpdated`                                                            |
| Colorado PEAK State ID<br>/ Universal ID | Patient.identifier[STATE_IDENTIFIER]                                                                                                |
| Trails Identifier                        | Patient.identifier[TRAILS_IDENTIFIER]<br>BHAClientQuestionnaireResponse:`TRAILS_IDENTIFIER`                                         |
| DOB                                      | Patient.birthDate                                                                                                                   |
| Last Name                                | Patient.name[officialName].family                                                                                                   |
| First Name                               | Patient.name[officialName].given                                                                                                    |
| Middle Name/Initial                      | Patient.name[officialName].given                                                                                                    |
| Name Suffix                              | Patient.name[officialName].suffix                                                                                                   |
| Social Security Number                   | Patient.identifier[SSN]                                                                                                             |
| County of Residence                      | Patient.address[home].district                                                                                                      |
| Zip Code of Residence                    | Patient.address[home].postalCode                                                                                                    |
| Race Codes                               | Patient.extension[race]                                                                                                             |
| Ethnicity                                | Patient.extension[ethnicity]                                                                                                        |
| Household Language                       | Patient.communication.language                                                                                                      |
| Sex at Birth                             | Patient.extension[birthsex]                                                                                                         |
| Gender Identity                          | Patient.extension[genderIdentity]                                                                                                   |
| Sexual Orientation                       | [US Core Observation Sexual Orientation]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-sexual-orientation.html) |
| Child Welfare Involvement                | BHAClientQuestionnaireResponse:`CHILD_WELFARE_INVOLVEMENT`                                                                          |
| Disability Code(s)                       | BHAClientQuestionnaireResponse:`DISABILITY_CODES`                                                                                   |
| Veteran Status                           | Patient.extension[USVeteranStatus]                                                                                                  |
| Last known address line 1                | Patient.address[home].line                                                                                                          |
| Last known address line 2                | Patient.address[home].line                                                                                                          |
| Last known city                          | Patient.address[home].city                                                                                                          |
{: .grid}

#### Admission

- [BHA EpisodeOfCare Profile](StructureDefinition-bha-episodeOfCare.html)
- [BHA Provider Organization Profile](StructureDefinition-bha-organization.html)
- [BHA Admission Questionnaire](Questionnaire-BHAAdmissionQuestionnaire.html)
- [BHA Episode Diagnosis Profile](StructureDefinition-BHAEpisodeDiagnosis.html)
- [US Core Observation Pregnancy Status]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-pregnancystatus.html)
- [BHA Client Profile](StructureDefinition-bha-client.html)

| CoBHRM Field Name                                                            | FHIR Element shorthand                                                            |
| ---------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| Effective Date                                                               | EpisodeOfCare.meta.lastUpdated<br>BHAAdmissionQuestionnaireResponse:`lastUpdated` |
| NPI / BHE License Number                                                     | EpisodeOfCare.managingOrganization.identifier                                     |
| Admission Date                                                               | EpisodeOfCare.period.start                                                        |
| Service Identifier                                                           | BHAAdmissionQuestionnaireResponse:`SERVICE_IDENTIFIER`                            |
| Date of First Contact                                                        | BHAAdmissionQuestionnaireResponse:`FIRST_CONTACT_DATE`                            |
| Date of First Appointment Offered                                            | BHAAdmissionQuestionnaireResponse:`FIRST_APPOINTMENT_OFFERED_DATE`                |
| Medication Assisted Therapy                                                  | BHAAdmissionQuestionnaireResponse:`MEDICATION_ASSISTED_THERAPY`                   |
| Referral Source                                                              | BHAAdmissionQuestionnaireResponse:`REFERRAL_SOURCE`                               |
| Arrests in Past 30 Days                                                      | BHAAdmissionQuestionnaireResponse:`ARRESTS_PAST_30_DAYS`                          |
| Employment Status                                                            | BHAAdmissionQuestionnaireResponse:`EMPLOYMENT_STATUS`                             |
| Marital Status                                                               | Patient.maritalStatus                                                             |
| Living Situation                                                             | BHAAdmissionQuestionnaireResponse:`LIVING_SITUATION`                              |
| Monthly Income                                                               | BHAAdmissionQuestionnaireResponse:`MONTHLY_INCOME`                                |
| Primary Source of income/support for client                                  | BHAAdmissionQuestionnaireResponse:`PRIMARY_INCOME_SOURCE`                         |
| Pregnancy Status                                                             | BHAAdmissionQuestionnaireResponse:`PREGNANCY_STATUS`                              |
| Within 1 Year Postpartum Status                                              | BHAAdmissionQuestionnaireResponse:`WITHIN_1_YEAR_POSTPARTUM_STATUS`               |
| Enrollment in Special Connections                                            | BHAAdmissionQuestionnaireResponse:`SPECIAL_CONNECTIONS_ENROLLMENT`                |
| Enrollment in ACT?                                                           | BHAAdmissionQuestionnaireResponse:`ACT_ENROLLMENT`                                |
| Enrollment in Ascent (FEP)?                                                  | BHAAdmissionQuestionnaireResponse:`ASCENT_ENROLLMENT`                             |
| Number of Dependent Children<br>                                             | BHAAdmissionQuestionnaireResponse:`NUMBER_DEPENDENT_CHILDREN`                     |
| Self Help Attendance (Last 30 days at admission)/<br>Peer Support Attendance | BHAAdmissionQuestionnaireResponse:`SELF_HELP_ATTENDANCE`                          |
| Substance Use Prior Treatment (Total Lifetime admissions)                    | BHAAdmissionQuestionnaireResponse:`TOTAL_SUBSTANCE_USE_PRIOR_TREATMENT`           |
| Psychiatric Hospital Admission (Last 30 days)                                | BHAAdmissionQuestionnaireResponse:`PSYCHIATRIC_HOSPITAL_ADMISSION`                |
| Legal Status                                                                 | BHAAdmissionQuestionnaireResponse:`LEGAL_STATUS`                                  |
| Involuntary Reason                                                           | BHAAdmissionQuestionnaireResponse:`INVOLUNTARY_REASON`                            |
| Criminal Justice Involvement                                                 | BHAAdmissionQuestionnaireResponse:`CRIMINAL_JUSTICE_INVOLVEMENT`                  |
| Education Level                                                              | BHAAdmissionQuestionnaireResponse:`EDUCATION_LEVEL`                               |
| School Attendance Status (in the previous 3 months)                          | BHAAdmissionQuestionnaireResponse:`SCHOOL_ATTENDANCE_STATUS`                      |
| Visit to Psychiatric ER in last 6 months                                     | BHAAdmissionQuestionnaireResponse:`VISIT_TO_PSYCHIATRIC_ER`                       |
| Communication Accommodations                                                 | BHAAdmissionQuestionnaireResponse:`COMMUNICATION_ACCOMMODATIONS`                  |
{: .grid}

<!--
#### Service

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
-->

#### Discharge

- [BHA EpisodeOfCare Profile](StructureDefinition-bha-episodeOfCare.html)
- [BHA Provider Organization Profile](StructureDefinition-bha-organization.html)
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

- [BHA Episode Diagnosis Profile](StructureDefinition-BHAEpisodeDiagnosis.html)
- [BHA EpisodeOfCare Profile](StructureDefinition-bha-episodeOfCare.html)
- [BHA Provider Organization Profile](StructureDefinition-bha-organization.html)
- [BHA Diagnosis Questionnaire](Questionnaire-BHADiagnosisQuestionnaire.html)

| CoBHRM Field Name         | FHIR Element shorthand                                        |
| ------------------------- | ------------------------------------------------------------- |
| Effective Date            | BHADiagnosisQuestionnaireResponse:`lastUpdated`               |
| MH Diagnosis Identifier 1 | Condition.code[billing]                                       |
| MH Diagnosis Identifier 2 | Condition.code[billing] if multiple Condition resources exist |
| MH Diagnosis Identifier 3 | Condition.code[billing] if multiple Condition resources exist |
| SUD Diagnosis Identifier  | Condition.code[billing]                                       |
| SMI/SED Status            | BHADiagnosisQuestionnaireResponse:`SMI_SED_STATUS`            |
{: .grid}

#### Substance Use Disorder

- [BHA Substance Use Disorder Questionnaire](Questionnaire-BHASubstanceUseDisorderQuestionnaire.html)

| CoBHRM Field Name                              | FHIR Element shorthand                                                     |
| ---------------------------------------------- | -------------------------------------------------------------------------- |
| Effective Date                                 | BHASubstanceUseDisorderQuestionnaireResponse:`lastUpdated`                 |
| ASAM Level of Care                             | BHASubstanceUseDisorderQuestionnaireResponse:`ASAM_LEVEL_OF_CARE`          |
| Primary Substance Use                          | BHASubstanceUseDisorderQuestionnaireResponse:`PRIMARY_SUBSTANCE_USE`       |
| Times Used Primary Substance in Last 30 Days   | BHASubstanceUseDisorderQuestionnaireResponse:`PRIMARY_LAST_USED_30_DAYS`   |
| Route of Use of Primary Substances             | BHASubstanceUseDisorderQuestionnaireResponse:`PRIMARY_ROUTE_OF_USE`        |
| Age of First Use of Primary Substances         | BHASubstanceUseDisorderQuestionnaireResponse:`PRIMARY_START_AGE`           |
| Secondary Substance Use                        | BHASubstanceUseDisorderQuestionnaireResponse:`SECONDARY_SUBSTANCE_USE`     |
| Times Used Secondary Substance in Last 30 Days | BHASubstanceUseDisorderQuestionnaireResponse:`SECONDARY_LAST_USED_30_DAYS` |
| Route of Use of Secondary Substances           | BHASubstanceUseDisorderQuestionnaireResponse:`SECONDARY_ROUTE_OF_USE`      |
| Age of First Use of Secondary Substances       | BHASubstanceUseDisorderQuestionnaireResponse:`SECONDARY_START_AGE`         |
| Tertiary Substance Use                         | BHASubstanceUseDisorderQuestionnaireResponse:`TERTIARY_SUBSTANCE_USE`      |
| Times Used Tertiary Substance in Last 30 Days  | BHASubstanceUseDisorderQuestionnaireResponse:`TERTIARY_LAST_USED_30_DAYS`  |
| Route of Use of Tertiary Substances            | BHASubstanceUseDisorderQuestionnaireResponse:`TERTIARY_ROUTE_OF_USE`       |
| Age of First Use of Tertiary Substances        | BHASubstanceUseDisorderQuestionnaireResponse:`TERTIARY_START_AGE`          |
{: .grid}

#### SC Pregnancy/PostPartum

- [BHA Special Connections Pregnancy/Postpartum Risk Screening Questionnaire](Questionnaire-BHASCPregnancyPostpartumRiskQuestionnaire.html)

| CoBHRM Field Name                      | FHIR Element shorthand                                                 |
| -------------------------------------- | ---------------------------------------------------------------------- |
| Effective Date                         | BHASCPregnancyQuestionnaireResponse:`lastUpdated`                      |
| Evaluation Date                        | BHASCPregnancyQuestionnaireResponse:`EVALUATION_DATE`                  |
| Pregnancy/Postpartum Status            | BHASCPregnancyQuestionnaireResponse:`PREGNANCY_POSTPARTUM_STATUS`      |
| Pregnancy/Postpartum Care Status       | BHASCPregnancyQuestionnaireResponse:`PREGNANCY_POSTPARTUM_CARE_STATUS` |
| Access to other drug/alcohol treatment | BHASCPregnancyQuestionnaireResponse:`DRUG_ALCOHOL_TREATMENT_ACCESS`    |
| Family/Social Support                  | BHASCPregnancyQuestionnaireResponse:`FAMILY_SOCIAL_SUPPORT`            |
| Family substance use disorder history  | BHASCPregnancyQuestionnaireResponse:`FAMILY_SUD_HISTORY`               |
| Family substance use disorder current  | BHASCPregnancyQuestionnaireResponse:`FAMILY_SUD_CURRENT`               |
| Drug using partner                     | BHASCPregnancyQuestionnaireResponse:`DRUG_USING_PARTNER`               |
| HIV Risk                               | BHASCPregnancyQuestionnaireResponse:`HIV_RISK`                         |
| Home Stability and Safety              | BHASCPregnancyQuestionnaireResponse:`HOME_STABILITY_SAFETY`            |
| Personal Safety                        | BHASCPregnancyQuestionnaireResponse:`PERSONAL_SAFETY`                  |
| Prior Criminal Record                  | BHASCPregnancyQuestionnaireResponse:`PRIOR_CRIMINAL_RECORD`            |
| Mental Health History                  | BHASCPregnancyQuestionnaireResponse:`MENTAL_HEALTH_HISTORY`            |
| Prior alcohol/drug treatment           | BHASCPregnancyQuestionnaireResponse:`PRIOR_ALCOHOL_DRUG_TREATMENT`     |
| Children Living in home with you       | BHASCPregnancyQuestionnaireResponse:`CHILDREN_LIVING_WITH_CLIENT`      |
| Children Ages living in home with you  | BHASCPregnancyQuestionnaireResponse:`CHILDREN_AGES_LIVING_WITH_CLIENT` |
{: .grid}

#### SC Baby

- [BHA SC Baby Questionnaire](Questionnaire-BHASCBabyQuestionnaire.html)

| CoBHRM Field Name           | FHIR Element shorthand                               |
| --------------------------- | ---------------------------------------------------- |
| Effective Date              | BHASCBabyQuestionnaireResponse:`lastUpdated`         |
| Live Birth                  | BHASCBabyQuestionnaireResponse:`LIVE_BIRTH`          |
| Baby Date of Birth          | BHASCBabyQuestionnaireResponse:`DOB`                 |
| Baby Weight Pounds          | BHASCBabyQuestionnaireResponse:`WEIGHT_LBS`          |
| Baby Weight Ounces          | BHASCBabyQuestionnaireResponse:`WEIGHT_OZ`           |
| Baby Last Name              | BHASCBabyQuestionnaireResponse:`LAST_NAME`           |
| Baby First Name             | BHASCBabyQuestionnaireResponse:`FIRST_NAME`          |
| Baby Middle Name or Initial | BHASCBabyQuestionnaireResponse:`MIDDLE_NAME_INITIAL` |
| Baby Sex at Birth           | BHASCBabyQuestionnaireResponse:`SEX_AT_BIRTH`        |
{: .grid}

