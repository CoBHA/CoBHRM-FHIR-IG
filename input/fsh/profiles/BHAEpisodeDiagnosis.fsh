Profile: BHAEpisodeDiagnosis  
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis
Id: bha-episode-diagnosis
Title: "Colorado BHA Episode Diagnosis Profile"
Description: "Diagnosis profile for diagnoses related to Colorado BHA episodes"

// Extension for BHA diagnosis type
* extension contains 
    BHADiagnosisType named diagnosisType 1..1 MS

* extension[diagnosisType] ^short = "Diagnosis Type (MH, SUD)"
* encounter only Reference(bha-encounter)
* encounter 1..1