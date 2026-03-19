Profile: BHAEpisodeDiagnosis  
Parent: $us-core-diagnosis // which is a FHIR Condition
Title: "Colorado BHA Episode Diagnosis Profile"
Description: "Diagnosis profile for diagnoses related to Colorado BHA episodes"

// Extension for BHA diagnosis type
* extension contains 
    BHADiagnosisType named diagnosisType 1..1 MS

* extension[diagnosisType] ^short = "Diagnosis Type (MH, SUD)"
* encounter only Reference(BHAEncounter)
* encounter 1..1