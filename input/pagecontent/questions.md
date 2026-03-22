Here are some specific areas of concern where the authors would appreciate feedback, guidance, thought partnership, and specific answers. 

Please share your thoughts by emailing [FHIRFeedback@state.co.us](mailto:FHIRFeedback@state.co.us).

1. What version of US core are you using, and do you see any issue with our decision to use [us-core 6.1.0]({{site.data.fhir.uscore}})?
2. Do you have a Questionnaire / QuestionnaireResponse infrastructure? See the HL7 SDC [Population]({{site.data.fhir.sdc}}/populate.html) for discussion of the SDC [$populate operation]({{site.data.fhir.sdc}}OperationDefinition-Questionnaire-populate.html) as service endpoint an EHR system could implement that can be used by Co-BHA to request population of a [CoBHRM Questionnaire](questionnaires.html).
   1. Would the [CoBHRM Questionnaire](questionnaires.html) be something you would want to implement the $populate operation for? Would the automated population of the $populate operation be sufficient, or would user interaction be necessary.
   2. Would Task or ServiceRequest be a better approach than $populate?
3. The IG currently calls for the .meta.lastUpdated field to fulfill CoBHRM's "effective date" requirement. We also considered Provenance for this use case. Please share reactions to this.
4. Where would you like to see more alignment between BHA-specific value sets and those from emerging national standards (e.g., Gravity Project, USCDI+)?
5. How might diagnosis information be better linked to episodes of care?
6. How does this IG align with existing EHR data structures, capabilities, and workflows?
7. Please share details about any implementation barriers, dependencies, and timeline considerations we should consider.
8. The [Workflow](workflow.html) page illustrates a hypothetical  scenario for how BHA might query CoBHRM data from licensed providers who report directly to BHA. This figure is meant as a conversation starter. Please share opportunites for improvement.
