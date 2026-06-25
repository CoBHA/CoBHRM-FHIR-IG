# Negative FSH Inputs

This folder contains FSH input files for negative-profile testing.

These FSH instances are source artifacts, not final JSON resources. Run SUSHI from [testing/fail](testing/fail) to convert them into FHIR JSON.

Example command on Windows (run from [testing/fail](testing/fail)):

```text
sushi .
```

After running SUSHI, generated JSON output is written to [testing/fail/fsh-generated](testing/fail/fsh-generated), typically under [testing/fail/fsh-generated/resources](testing/fail/fsh-generated/resources).

## Validate Generated Negative JSON

From the parent folder `..` (aka `testing` folder), you can validate an individual generated fail-case resource with the existing validation helper script.

Equivalent example from a parent folder using the same relative path style:

```text
...\testing>validate-example fail/fsh-generated/resources/Condition-FailConditionDiagnosisProfile.json
```

Each example is intended to be valid base FHIR R4 for its resource type, while intentionally violating one or more CoBHRM profile expectations for negative validation testing.

## Fail Test Resources and Expected Problems

- FailClientMissingRequiredProfileFields (Patient)
	- Claims `bha-client` in `meta.profile` but omits required profile content.
	- Missing required identifiers (including SSN slice requirements in profile context).
	- Missing required `name` slice details and required `address` slice/details.
	- Missing required profile extensions such as race/ethnicity/birthsex constraints.

- FailOrganizationMissingNPI (Organization)
	- Claims `bha-organization` in `meta.profile` without the required NPI identifier slice.
	- Uses a non-profile identifier system instead of required NPI-patterned identifier.

- FailEpisodeOfCareMissingRequiredElements (EpisodeOfCare)
	- Claims `bha-episodeOfCare` in `meta.profile` but omits required profile elements.
	- Missing required `meta.lastUpdated`.
	- Missing required `type` bound to diagnosis type value set.
	- Missing required `diagnosis` and required `managingOrganization` content.

- FailEncounterMissingRequiredElements (Encounter)
	- Claims `bha-encounter` in `meta.profile` but omits required elements.
	- Missing required `period.end`.
	- Missing required `episodeOfCare` slice/reference pattern.
	- Missing required `serviceProvider`.
	- Missing required `bha-action-type` extension.

- FailConditionDiagnosisProfile (Condition)
	- Claims `BHAEpisodeDiagnosis` in `meta.profile` but omits required profile structure.
	- Too few `category` repetitions for profile cardinality.
	- Missing required `code.coding` slice for BHA service identifier.

- FailEpisodeOfCareInvalidTypeCode (EpisodeOfCare)
	- Uses invalid `type` code (`#INVALID`) for required `BHADiagnosisTypeVS` binding.
	- Should trigger value set binding failure for required diagnosis-type coding.

- FailQuestionnaireResponseTypeMismatch (QuestionnaireResponse)
	- `lastUpdated` answer uses `valueString` when Questionnaire expects `dateTime`.
	- Should trigger QuestionnaireResponse answer-type mismatch.

- FailQuestionnaireResponseGrosslyBad (QuestionnaireResponse)
	- Contains multiple answer-type mismatches against `BHADiagnosisQuestionnaire`.
	- Uses unresolved `subject` reference (`Patient/DoesNotExist`).
	- Uses invalid answer data type for `episodeOfCare` and `diagnosis` reference items.
	- Includes unknown `linkId` (`NOT_A_QUESTIONNAIRE_ITEM`) not present in Questionnaire.

- FailQuestionnaireResponseSingleElementNonCompliant (QuestionnaireResponse)
	- Near-valid response with one targeted defect.
	- `SMI_SED_STATUS` uses `valueString` instead of expected coding answer type.

- FailEncounterUnresolvableReferences (Encounter)
	- Includes required structural elements but references resources that do not exist.
	- Unresolvable references for `subject`, `episodeOfCare`, and `serviceProvider`.

- FailDuplicateClientA (Patient)
	- Shares same SSN as `FailDuplicateClientB` but has different demographics.
	- Intended to support duplicate/conflicting logical identity detection.

- FailDuplicateClientB (Patient)
	- Shares same SSN as `FailDuplicateClientA` with conflicting demographic values.
	- Intended to support duplicate/conflicting logical identity detection.

- FailDuplicateClientBundle (Bundle)
	- Contains both duplicate/conflicting Patient instances in one payload.
	- Intended to test duplicate/conflict detection at bundle processing time.
