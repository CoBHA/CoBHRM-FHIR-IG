In addition to the IG content, here are some specific areas of concern where the authors would appreciate feedback and guidance:

1. Are you using [us-core 6.1.0]({{site.data.fhir.uscore}})?  Do you want to stay on that version for the IG, or do you want to move to a newer version?
2. Do you have a Questionnaire / QuestionnaireResponse infrastructure? See the HL7 SDC [Population]({{site.data.fhir.sdc}}/populate.html) for discussion of the SDC [$populate operation]({{site.data.fhir.sdc}}OperationDefinition-Questionnaire-populate.html) as service endpoint an EHR system could implement that can be used by Co-BHA to request population of a [CoBHRM Questionnaire](questionnaires.html).
   1. Would the [CoBHRM Questionnaire](questionnaires.html) be something you would want to implement the $populate operation for? Would the automated population of the $populate operation be sufficient, or will user interaction be necessary.
   2. Would Task or ServiceRequest be a better approach than $populate?
3. We are looking to use the .meta.lastUpdated field to track when a resource was last updated.  Do you have any concerns about that?
4. The Baby Questionnaire Response requires that the QuestionnaireResponse.subject reference a Patient resource.  The expectation is that this is populated with the Mother's Patient reference. Alternative is to not use us-core QuestionnaireResponse. Do you have any concerns about that?
5. Where would you like to see alignment between BHA-specific codes and value sets from emerging national standards (e.g., Gravity Project, USCDI+)?
6. How might diagnosis information be better linked to episodes of care?
7. How does this IG align with existing EHR data structures, capabilities, and workflows?
8. Please share details about any implementation barriers, dependencies, and timeline considerations we should consider.
9. The workflow in the [Workflow](workflow.html) page is a generalized workflow for how CO BHA will request the needed data from the providers using the Profiles and Questionnaires defined in this IG.  Do you have any feedback on that workflow, including any concerns about the assumptions it makes?

