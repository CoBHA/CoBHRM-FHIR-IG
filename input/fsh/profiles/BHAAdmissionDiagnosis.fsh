Profile: BHAAdmissionDiagnosis  
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis
Id: bha-admission-diagnosis
Title: "BHA Admission Diagnosis Profile"
Description: "Admission Diagnosis profile for BHA client encounters"

// Extension for BHA diagnosis type
* extension contains 
    BHADiagnosisType named diagnosisType 1..1 MS

* extension[diagnosisType] ^short = "Diagnosis Type (MH, SUD)"
* encounter only Reference(bha-encounter)
* encounter 1..1