<div markdown="1" class="stu-note">
**Draft for review.** This page describes a practical validation and testing approach for implementations of the CoBHRM FHIR Implementation Guide.
</div>

### Purpose

This guidance describes a practical validation and testing approach for implementations of the CoBHRM FHIR Implementation Guide. The goal is to help providers, intermediaries, vendors, and BHA confirm that CoBHRM reporting data is represented consistently in FHIR before it is submitted, piloted, or used for production reporting.

Implementers should be able to demonstrate the following:

1. required CoBHRM reporting data can be represented using the profiles, questionnaires, terminology, and examples in the IG;
2. generated FHIR resources are valid FHIR R4 resources and conform to the applicable CoBHRM and dependency profiles;
3. codes used in CoBHRM reporting are drawn from the required value sets or clearly mapped where a ConceptMap is supplied;
4. admissions, discharges, diagnosis updates, substance-use reporting, Special Connections reporting, and client demographic updates can be represented in realistic test scenarios; and
5. validation failures are reported clearly enough for a provider or vendor to correct the source data or mapping.

### Validation Scope

Implementers should validate CoBHRM FHIR content at four levels:

#### FHIR syntax and base-resource validation

Each resource should be valid FHIR R4 JSON or XML and should conform to the base FHIR resource rules for its resource type.

Examples:

- `Patient` resources should be valid FHIR R4 Patient resources.
- `EpisodeOfCare` resources should be valid FHIR R4 EpisodeOfCare resources.
- `Encounter`, `Condition`, `Organization`, `Questionnaire`, and `QuestionnaireResponse` resources should conform to their base FHIR R4 definitions.

#### CoBHRM profile validation

Resources that claim conformance to a CoBHRM profile should validate against that profile.

The current IG defines the following principal profiles:

- BHA Client Profile
- BHA Encounter Profile
- BHA Episode Diagnosis Profile
- BHA EpisodeOfCare Profile
- BHA Provider Organization Profile
- BHA Action Type extension

Implementers should validate required elements, cardinality, fixed values, required identifiers, supported references, and any profile-specific constraints.

#### Dependency-profile validation

Where the CoBHRM IG relies on an external profile, implementers should validate against that dependency profile as well. The current IG identifies dependencies including:

- FHIR R4 / R4B-compatible resources;
- US Core 6.1.0;
- Structured Data Capture (SDC);
- Military Service History and Status, where applicable;
- HL7 terminology dependencies.

Examples:

- If pregnancy status is represented using US Core Observation Pregnancy Status, validate against that US Core profile.
- If CoBHRM data is collected through a Questionnaire and submitted as QuestionnaireResponse, validate the QuestionnaireResponse according to the applicable Questionnaire and SDC expectations.

#### Terminology validation

Coded elements should use the value sets required by the IG. Implementers should verify that:

- local source-system codes are transformed into the required CoBHRM code systems or other specified standard terminologies;
- values are selected from the applicable value set;
- required coding systems, codes, and displays are preserved accurately;
- ConceptMaps supplied by the IG are used consistently when mapping CoBHRM values to standard terminology such as SNOMED CT, ICD-10-CM, CPT/HCPCS, or other referenced systems.

Terminology validation should include both successful examples and negative tests with invalid, missing, deprecated, or unmapped codes.

### Validation Versus Data Quality Review

This guidance distinguishes **validation** from **data quality review**.

**Validation** answers: "Is this resource or bundle structurally and terminologically conformant with the IG?"

Examples:

- Is the resource valid FHIR R4?
- Does it conform to the claimed CoBHRM profile?
- Are required elements present?
- Are coded values in the required value set?
- Are references resolvable within the submitted content or by the receiving system?

**Data quality review** answers: "Is the underlying information accurate, complete, and suitable for BHA reporting?"

Examples:

- Is the client's demographic information current?
- Is the admission date clinically and administratively correct?
- Is the discharge reason accurate?
- Is the diagnosis appropriate for the reported episode?
- Does the source system contain all fields required for a complete CoBHRM submission?

A resource can be technically valid but still contain inaccurate or incomplete real-world information. Implementers should not treat FHIR validation as a substitute for ordinary reporting-data quality controls.

### Minimum Test Scenarios

Each implementation should test a small set of realistic scenarios before pilot or production use. The scenarios should use semi-realistic data and should include both valid and invalid examples.

#### Client demographic reporting

Test that a client can be represented using the BHA Client Profile and any associated QuestionnaireResponse content.

Include at least:

- client identifier(s);
- name;
- date of birth;
- address or residence information where available;
- race and ethnicity;
- sex at birth, gender identity, and sexual orientation where required or collected;
- household language;
- veteran status where applicable;
- disability codes where applicable.

Expected result: the client resource and associated questionnaire data validate against the IG and required terminology.

#### Admission reporting

Test that a new reportable program admission can be represented.

Include at least:

- client;
- provider organization;
- EpisodeOfCare for the reportable program;
- admission date;
- service identifier;
- referral source where available;
- admission QuestionnaireResponse;
- related diagnosis information where applicable.

Expected result: the admission scenario validates and the EpisodeOfCare is linked to the correct client and provider organization.

#### Discharge reporting

Test that a discharge from a reportable program can be represented.

Include at least:

- existing client;
- existing EpisodeOfCare;
- discharge date;
- discharge type or reason;
- discharge QuestionnaireResponse;
- any required updates to diagnosis or substance-use information.

Expected result: the discharge scenario validates, updates the correct EpisodeOfCare, and uses the required discharge terminology.

#### Diagnosis reporting or update

Test that diagnosis information can be represented and updated for a reportable episode.

Include at least:

- Condition using the BHA Episode Diagnosis Profile;
- diagnosis code;
- diagnosis type where required;
- relationship to the relevant EpisodeOfCare;
- diagnosis QuestionnaireResponse where applicable.

Expected result: the diagnosis information validates and is linked to the correct client and episode.

#### Substance use disorder reporting

Test that SUD-specific reporting information can be represented using the BHA Substance Use Disorder Questionnaire and related resources.

Include at least:

- primary substance use information;
- route of administration where applicable;
- prior treatment information where applicable;
- ASAM level of care where applicable;
- related admission, encounter, diagnosis, or episode references as applicable.

Expected result: SUD questionnaire content validates and uses the required CoBHRM terminology.

#### Special Connections reporting, if applicable

If the implementation supports Special Connections reporting, test the relevant pregnancy/postpartum and baby-reporting scenarios.

Include at least:

- pregnancy/postpartum risk screening QuestionnaireResponse;
- Special Connections baby QuestionnaireResponse where applicable;
- linkage between parent/client and baby/client resources where required by implementation workflow;
- any pregnancy-status updates represented through the appropriate FHIR resource or questionnaire content.

Expected result: Special Connections content validates against the relevant questionnaires and profiles.

#### Update versus correction behavior

Test at least one update to previously reported information and at least one correction to data that was entered incorrectly.

Examples:

- a client demographic update;
- a corrected admission date;
- an updated diagnosis;
- a corrected coded field.

Expected result: the implementation can distinguish an ordinary update from a correction according to the implementation's reporting workflow, preserves enough metadata for auditability, and does not create conflicting duplicate records.

### Negative Tests

Implementers should include negative tests. These are intentionally invalid or incomplete examples used to confirm that validation catches errors before submission or at the receiving endpoint.

Minimum negative tests should include:

1. missing required client identifier;
2. missing required admission or discharge date;
3. invalid code for a required value set;
4. QuestionnaireResponse item with an answer type that does not match the Questionnaire definition;
5. diagnosis or encounter that does not reference the relevant EpisodeOfCare when required;
6. reference to a client, organization, or episode that cannot be resolved;
7. resource claiming a CoBHRM profile but missing a required profile element;
8. duplicate or conflicting identifiers for the same logical client or episode.

Negative tests should produce clear validation feedback and should not be silently accepted.

### Error Reporting

Validation errors should be reported in a way that allows the submitting organization to fix the source data or mapping.

When validation fails, the validating system should return or record an error response that includes:

- severity: fatal, error, warning, or information;
- error category or code;
- human-readable diagnostics;
- resource type and resource id, if available;
- element path or Questionnaire item linkId, where applicable;
- expected value set or profile, where applicable;
- submitted value that caused the failure, where safe to include.

FHIR `OperationOutcome` is the recommended format for machine-readable validation feedback. In less technical workflows, the same information may also be presented in a tabular validation report.

#### Technical validation errors

Technical validation errors are errors that prevent the submitted FHIR content from conforming to the IG.

Examples:

- invalid JSON;
- invalid FHIR resource structure;
- missing required element;
- invalid code;
- invalid or unresolved reference;
- QuestionnaireResponse inconsistent with the Questionnaire.

Technical validation errors should be corrected before the data is accepted as conformant CoBHRM FHIR content.

#### Reporting-data quality issues

Some issues may not make the FHIR invalid but may still require review.

Examples:

- suspicious date sequence, such as discharge before admission;
- unusually old or future date of birth;
- missing optional but operationally important fields;
- local code mapped to a broad "other" value;
- client demographic data that appears inconsistent across submissions.

These should be reported as warnings or data-quality findings unless BHA policy or implementation rules make them hard validation failures.

### Pilot Testing Expectations

Before production use, a pilot implementation should demonstrate the following:

1. the implementation can generate valid examples for each supported reporting milestone;
2. the examples pass FHIR validation against the CoBHRM profiles and dependency profiles;
3. terminology bindings are applied consistently;
4. at least one admission, discharge, diagnosis update, and client demographic update scenario has been tested end-to-end;
5. negative tests produce expected validation failures;
6. validation results are understandable by both technical staff and reporting/data-quality staff;
7. implementation-specific assumptions, unsupported fields, and known gaps are documented.

A pilot does not need to test every possible behavioral-health scenario. It should focus on the reporting events and data elements that the implementation expects to support in the first release.

### Recommended Validation Artifacts

Each implementation should maintain a small validation package containing:

- the IG version or commit tested;
- validator version and terminology package versions used;
- sample valid resources or bundles;
- sample invalid resources or bundles;
- a test-scenario checklist;
- validation output for each scenario;
- mapping notes from local source-system fields to CoBHRM/FHIR elements;
- a list of known limitations and open questions.

For BHA review or pilot coordination, this package is more useful than a general claim that an implementation "supports FHIR."

### Suggested Conformance Statement

An implementation may describe its CoBHRM FHIR readiness using the following language:

> This implementation has been tested against the Colorado BHA FHIR Implementation Guide version [version/commit]. The implementation can produce FHIR R4 resources for the supported CoBHRM reporting scenarios identified in [test plan or appendix]. These resources validate against the applicable CoBHRM profiles, required dependency profiles, and terminology bindings, except for the documented limitations listed in [known limitations].

### Known Limits of This Guidance

This document does not define:

- transport requirements;
- authentication or authorization requirements;
- batch format requirements;
- production submission schedules;
- BHA acceptance criteria outside FHIR conformance;
- full data-quality policy;
- certification requirements for vendors or providers.

Those items should be handled in implementation agreements, pilot protocols, reporting policy, or future versions of the IG.

### Example Patient Scenarios

The IG includes per-patient examples. Implementers can use these examples to test the representation of realistic scenarios and to confirm that the profiles, questionnaires, and terminology in the IG can support the required reporting information.

**All example patients are fictional. Any resemblance to real persons, living or dead, is purely coincidental.**

- [Arjun Patel](Patient-BHAClientExampleCentral.html)
  - [Arjun Patel Mental health EpisodeOfCare](EpisodeOfCare-BHAEpisodeOfCareExampleCentralBH.html)
  - [Arjun Patel Mental health Episode Diagnosis](Condition-BHAEpisodeDiagnosisExampleCentralBH.html)
  - [Arjun Patel BHA Admission QuestionnaireResponse](QuestionnaireResponse-BHAAdmissionQuestionnaireResponseExampleCentral.html)
  - [Arjun Patel BHA Discharge QuestionnaireResponse](QuestionnaireResponse-BHADischargeQuestionnaireResponseExampleCentral.html)
  - [Arjun Patel All Bundle](Bundle-AllOfExampleCentral.html)
- [Sofia Martinez](Patient-BHAClientExampleNorth.html)
  - [Sofia Martinez Substance use disorder EpisodeOfCare](EpisodeOfCare-BHAEpisodeOfCareExampleNorthSUD.html)
  - [Sofia Martinez Substance use disorder Episode Diagnosis](Condition-BHAEpisodeDiagnosisExampleNorthSUD.html)
  - [Sofia Martinez BHA Admission QuestionnaireResponse](QuestionnaireResponse-BHAAdmissionQuestionnaireResponseExampleNorth.html)
  - [Sofia Martinez BHA Substance Use Disorder QuestionnaireResponse](QuestionnaireResponse-BHASubstanceUseDisorderQuestionnaireResponseExampleNorth.html)
  - [Sofia Martinez BHA Discharge QuestionnaireResponse](QuestionnaireResponse-BHADischargeQuestionnaireResponseExampleNorth.html)
  - [Sofia Martinez All Bundle](Bundle-AllOfExampleNorth.html)
- [Gabriela Torres](Patient-BHAClientExampleSouth.html)
  - [Gabriela Torres Mental health EpisodeOfCare](EpisodeOfCare-BHAEpisodeOfCareExampleSouthBH.html)
  - [Gabriela Torres Mental health Episode Diagnosis](Condition-BHAEpisodeDiagnosisExampleSouthBH.html)
  - [Gabriela Torres BHA Admission QuestionnaireResponse](QuestionnaireResponse-BHAAdmissionQuestionnaireResponseExampleSouth.html)
  - [Gabriela Torres BHA Discharge QuestionnaireResponse](QuestionnaireResponse-BHADischargeQuestionnaireResponseExampleSouth.html)
  - [Gabriela Torres BHA Special Connections Pregnancy/Postpartum Risk Screening QuestionnaireResponse](QuestionnaireResponse-BHASCPregnancyQuestionnaireResponseExampleSouth.html)
  - [Gabriela Torres BHA SC Baby QuestionnaireResponse](QuestionnaireResponse-BHASCBabyQuestionnaireResponseExampleSouth.html)
  - [Gabriela Torres Baby Patient Resource](Patient-BabyPatientExampleSouth.html)
  - [Gabriela Torres All Bundle](Bundle-AllOfExampleSouth.html)
- [Emma Jones](Patient-BHAClientExample.html)
  - [Emma Jones BHA Client QuestionnaireResponse](QuestionnaireResponse-BHAClientQuestionnaireResponseExample.html)
  - [Emma Jones Mental health EpisodeOfCare](EpisodeOfCare-BHAEpisodeOfCareExampleBH.html)
  - [Emma Jones Mental health Episode Diagnosis](Condition-BHAEpisodeDiagnosisExample.html)
  - [Emma Jones BHA Admission QuestionnaireResponse](QuestionnaireResponse-BHAAdmissionQuestionnaireResponseExample.html)
  - [Emma Jones BHA Diagnosis QuestionnaireResponse](QuestionnaireResponse-BHADiagnosisQuestionnaireResponseExample.html)
  - [Emma Jones BHA Discharge QuestionnaireResponse](QuestionnaireResponse-BHADischargeQuestionnaireResponseExample.html)
  - [Emma Jones BHA Substance Use Disorder QuestionnaireResponse](QuestionnaireResponse-BHASubstanceUseDisorderQuestionnaireResponseExample.html)
  - [Emma Jones BHA Special Connections Pregnancy/Postpartum Risk Screening QuestionnaireResponse](QuestionnaireResponse-BHASCPregnancyQuestionnaireResponseExample.html)
  - [Emma Jones BHA SC Baby QuestionnaireResponse](QuestionnaireResponse-BHASCBabyQuestionnaireResponseExample.html)
  - [Emma Jones BHA SC Baby QuestionnaireResponse Resource Example](QuestionnaireResponse-BHASCBabyQuestionnaireResponseResourceExample.html)
  - [Emma Jones BHA SC Baby No QuestionnaireResponse](QuestionnaireResponse-BHASCBabyNoQuestionnaireResponseExample.html)
  - [Emma Jones BHA Observation Pregnancy Status](Observation-BHAObservationPregnancyStatusExample.html)
  - [Emma Jones All Bundle](Bundle-AllOfExampleEmma.html)
