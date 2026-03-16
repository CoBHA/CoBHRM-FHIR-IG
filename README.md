
# bha-ig

Now available on HL7 CI build server:

- CI Publication: https://build.fhir.org/ig/RatioPBC/bha-ig/branches/main/index.html
- QA Report: https://build.fhir.org/ig/RatioPBC/bha-ig/branches/main/qa.html
- If build fails, the log is at https://build.fhir.org/ig/RatioPBC/bha-ig/branches/main/build.log
- Branch builds are built into: https://build.fhir.org/ig/RatioPBC/bha-ig/branches/ 

## Notes

I have found some extensions (codeSystems and valueSets) that don't appear to be used: BHABHASORegion, BHAEthnicity.  Is there a reason to keep these in the IG?  I have commented them out.

sdc-questionnaire is being used. Seems only for the enableWhen feature. us-core questionnnaireResponse is derived off of sdc-questionnaireResponse.

## Questions

Do we want to keep to us-core 6.1.0

Questionnaire(s) are recommended to be assigned an OID. Do we want to do that? It not hard, we just need a root OID assigned, which we can get in many ways, including from HL7.

There was some use of questionnaire-unit, with response using Quantity. This is not allowed, you either leave the units open and expect Quantity, or you use questionnaire-unit and expect an integer or decimal without units, as the units is defined in the questionnaire. I have left these as restricted to the given units. The baby weight might be a good example of where this should be allowed to have different units as some may weigh in kg instead of lbs. 

### tooling issues

- The Questionnaire rendering should have an Examples tab with the QuestionnaireResponse examples. This is not working as expected. I am trying to track this down. 
