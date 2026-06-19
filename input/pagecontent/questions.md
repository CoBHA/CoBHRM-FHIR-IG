
Here are some specific areas of concern where the authors would appreciate feedback, guidance, thought partnership, and specific answers. 

Please share your thoughts by emailing [FHIRFeedback@state.co.us](mailto:FHIRFeedback@state.co.us).

1. What version of US core are you using, and do you see any issue with our decision to use [us-core 6.1.0]({{site.data.fhir.uscore}})?
2. Where would you like to see more alignment between BHA-specific value sets and those from emerging national standards (e.g., Gravity Project, USCDI+)?
3. How does this IG align with existing EHR data structures, capabilities, and workflows?
4. Please share details about any implementation barriers, dependencies, and timeline considerations we should consider.
5. The [Workflow](workflow.html) page illustrates a hypothetical  scenario for how BHA might query CoBHRM data from licensed providers who report directly to BHA. This figure is meant as a conversation starter. Please share opportunities for improvement.

### Changes

#### Changes since March 2026 public-comment

1. Updates for UDM (CoBHRM) changes until May 2026
2. The IG calls for the .meta.lastUpdated field to fulfill CoBHRM's "effective date" requirement. 
3. Encounter.episodeofcare element must have at-least one reference to a BHA EpisodeOfCare
4. added a reference to the BHA EpisodeOfCare in the BH Admission, Discharge, and Diagnosis QuestionnaireResponse examples.
5. Clarify pregnancy is not a type of EpisodeOfCare for BHA, but is tracked.
6. Clarified the workflow relative to an overall engagement, which is not tracked. EpisodeOfCare are the tracked programs for which many Encounters may happen. The Admission and Discharge are associated with the EpisodeOfCare. 
7. Added examples of all profiles and extensions
8. Cleaned up mapping tables, and added FHIR mapping for the profiles
9. Added ConceptMap for BHA codes to standards where possible. These ConceptMaps are mentioned in the narrative of the relevant profiles and extensions.
10. Added more dynamic rules to the Questionnaire(s) to align with the CoBHRM rules and to require more complete data capture.
11. For CoBHRM ACT-sheet fields that reference 9(2) valid values (including Discharge Outcomes and Education-related fields), this IG aligns to **Appendix ACT-Ascent** (moved from Appendix A in the May 2026 update).
12. May need to bring in Procedure for the Service Identifier, but for now am using a Questionnaire item
13. Added Informative ConceptMaps for Service Identifier to SNOMED-CT, ICD-10-CM, and HCPCS (CPT).
14. Updated CodeSystem BHAServiceIdentifierCS to align with updated CoBHRM data model; added more codes and made hierarchy clearer. Old codes are included but marked as retired.


