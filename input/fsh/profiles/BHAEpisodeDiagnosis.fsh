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

Mapping: BHAEpisodeDiagnosis-Mapping
Source: BHAEpisodeDiagnosis
Target: "https://coloradobehavioralhealthadministration.mintlify.app/"
Title: "Mapping from CoBHRM Diagnosis to BHA Episode Diagnosis"
* -> "CoBHRM: Diagnosis"
* code -> "Diagnosis: MH Diagnosis Identifier 1-3 / SUD Diagnosis Identifier"
* extension[diagnosisType] -> "Diagnosis: Diagnosis Type (MH or SUD)"
* encounter -> "Reference to associated Encounter"