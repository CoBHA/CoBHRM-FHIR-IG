The following is a generalized workflow for how CO BHA will request the needed data from the providers using the Profiles and Questionnaires defined in this IG. This workflow starts with the premice that CO BHA knows the list of Clients that are in the program, and has the necessary information to identify those clients in the provider's EHR system.  This workflow also assumes that the provider has implemented the necessary FHIR endpoints to receive requests from CO BHA, and to return the necessary data to CO BHA.

```mermaid
sequenceDiagram
    actor BHA as CO BHA
    participant EHR as Provider EHR

    Note over BHA,EHR: 1. Query Patient to get updated Patient details
    BHA->>EHR: GET /Patient?identifier=<client-id>
    EHR-->>BHA: 200 OK — Patient resource (updated demographics)

    Note over BHA,EHR: 1b. Query Client QuestionnaireResponse
    BHA->>EHR: GET /QuestionnaireResponse?patient=<patient-id>&questionnaire=BHAClientQuestionnaire
    EHR-->>BHA: 200 OK — Bundle of Client QuestionnaireResponse resources

    Note over BHA,EHR: 2. Query Condition to get list of Conditions matching the two BHA categories
    BHA->>EHR: GET /Condition?patient=<patient-id>&category=encounter-diagnosis,health-concern
    EHR-->>BHA: 200 OK — Bundle of matching Condition resources

    Note over BHA,EHR: 3a. Query Encounter matching those Conditions (by reference or Condition.code)
    BHA->>EHR: GET /Encounter?patient=<patient-id>&reason-reference=<condition-id>&reason-code=<condition-code>
    EHR-->>BHA: 200 OK — Bundle of matching Encounter resources

    Note over BHA,EHR: 3b. Query EpisodeOfCare matching those Conditions (by reference or Condition.code)
    BHA->>EHR: GET /EpisodeOfCare?patient=<patient-id>&condition=<condition-id>
    EHR-->>BHA: 200 OK — Bundle of matching EpisodeOfCare resources

    Note over BHA,EHR: 4. For each Encounter, query Admission and Discharge QuestionnaireResponses
    loop For each Encounter
        BHA->>EHR: GET /QuestionnaireResponse?patient=<patient-id>&encounter=<encounter-id>&questionnaire=BHAAdmissionQuestionnaire
        EHR-->>BHA: 200 OK — Bundle of Admission QuestionnaireResponse resources
        BHA->>EHR: GET /QuestionnaireResponse?patient=<patient-id>&encounter=<encounter-id>&questionnaire=BHADischargeQuestionnaire
        EHR-->>BHA: 200 OK — Bundle of Discharge QuestionnaireResponse resources
        opt Substance Use Disorder Condition found
            BHA->>EHR: GET /QuestionnaireResponse?patient=<patient-id>&encounter=<encounter-id>&questionnaire=BHASubstanceUseDisorderQuestionnaire
            EHR-->>BHA: 200 OK — Bundle of Substance Use Disorder QuestionnaireResponse resources
        end
    end

    opt Female patient
        Note over BHA,EHR: 5. For female patients, query Pregnancy Observation, Pregnancy/PostPartum Questionnaire, and SC Baby Questionnaire
        BHA->>EHR: GET /Observation?patient=<patient-id>&code=http://loinc.org|82810-3
        EHR-->>BHA: 200 OK — Bundle of Pregnancy Status Observation resources
        BHA->>EHR: GET /QuestionnaireResponse?patient=<patient-id>&questionnaire=BHASCPregnancyPostpartumRiskQuestionnaire
        EHR-->>BHA: 200 OK — Bundle of Pregnancy/PostPartum QuestionnaireResponse resources
        BHA->>EHR: GET /QuestionnaireResponse?patient=<patient-id>&questionnaire=BHASCBabyQuestionnaire
        EHR-->>BHA: 200 OK — Bundle of SC Baby QuestionnaireResponse resources
    end
```

