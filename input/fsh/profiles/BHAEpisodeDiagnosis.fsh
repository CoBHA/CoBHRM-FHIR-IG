Profile: BHAEpisodeDiagnosis  
Parent: $us-core-diagnosis
Id: bha-episode-diagnosis
Title: "Colorado BHA Episode Diagnosis Profile"
Description: "Diagnosis profile for diagnoses related to Colorado BHA episodes"
* ^extension[$fmm].valueInteger = 3

// Extension for BHA diagnosis type
* extension contains 
    BHADiagnosisType named diagnosisType 1..1 MS

* extension[diagnosisType] ^short = "Diagnosis Type (MH, SUD)"
* encounter only Reference(bha-encounter)
* encounter 1..1