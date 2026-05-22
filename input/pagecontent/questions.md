
Here are some specific areas of concern where the authors would appreciate feedback, guidance, thought partnership, and specific answers. 

Please share your thoughts by emailing [FHIRFeedback@state.co.us](mailto:FHIRFeedback@state.co.us).

1. What version of US core are you using, and do you see any issue with our decision to use [us-core 6.1.0]({{site.data.fhir.uscore}})?
4. Where would you like to see more alignment between BHA-specific value sets and those from emerging national standards (e.g., Gravity Project, USCDI+)?
6. How does this IG align with existing EHR data structures, capabilities, and workflows?
7. Please share details about any implementation barriers, dependencies, and timeline considerations we should consider.
8. The [Workflow](workflow.html) page illustrates a hypothetical  scenario for how BHA might query CoBHRM data from licensed providers who report directly to BHA. This figure is meant as a conversation starter. Please share opportunities for improvement.
9. No idea what a state ID should look like, so have an example using 'https://peak.colorado.gov/identifiers/state-id'
10. Unclear where the new Service Questionnaire is used.
11. Service Questionnaire brings in two CodeSystems with no codes.

### Changes

#### Changes since March 2026 public-comment

6. Updates for UDM (CoBHRM) changes until May 2026
1. The IG calls for the .meta.lastUpdated field to fulfill CoBHRM's "effective date" requirement. 
2. Encounter.episodeofcare element must have at-least one reference to a BHA EpisodeOfCare
3. added a reference to the BHA EpisodeOfCare in the BH Admission, Discharge, and Diagnosis QuestionnaireResponse examples.
4. Clarify pregnancy is not a type of EpisodeOfCare for BHA, but is tracked.
5. Clarified the workflow relative to an overall engagement, which is not tracked. EpisodeOfCare are the tracked programs for which many Encounters may happen. The Admission and Discharge are associated with the EpisodeOfCare. 
7. Added examples of all profiles and extensions
8. Cleaned up mapping tables, and added FHIR mapping for the profiles
9. Added ConceptMap for BHA codes to standards where possible. These ConceptMaps are mentioned in the narrative of the relevant profiles and extensions.

