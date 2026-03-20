In addition to the content of this IG, here are some questions asked of those commenting on the IG.

1. Are you using us-core 6.1.0?  Do you want to stay on that version for the IG, or do you want to move to a newer version?
2. Do you have a Questionnaire / QuestionnaireResponse infrastructure? See the HL7 SDC [Population]({{site.data.fhir.sdc}}/populate.html) for discussion of the SDC [$populate operation]({{site.data.fhir.sdc}}OperationDefinition-Questionnaire-populate.html) as service endpoint an EHR system could implement that can be used by Co-BHA to request population of a [CoBHRM Questionnaire](questionnaires.html).
   1. Would the [CoBHRM Questionnaire](questionnaires.html) be something you would want to implement the $populate operation for? Would the automated population of the $populate operation be sufficent, or will user interaction be necessary.
   2. Would Task or ServiceRequest be a better approach than $populate?
3. We are looking to use the .meta.lastUpdated field to track when a resource was last updated.  Do you have any concerns about that?
4. The Baby Questionnaire Response requires that the QuestionnaireResponse.subject reference a Patient resource.  The expectation is that this is populated with the Mother's Patient reference. Alternative is to not use us-core QuestionnaireResponse. Do you have any concerns about that?


-- insert questions from Sean here --
