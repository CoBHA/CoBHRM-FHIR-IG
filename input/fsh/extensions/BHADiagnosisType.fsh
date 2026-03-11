Extension: BHADiagnosisType
Id: bha-diagnosis-type  
Title: "BHA Diagnosis Type"
Description: "The type of diagnosis for a client encounter. Can be either Mental Health or Substance Use Disorder"
* ^extension[$fmm].valueInteger = 3
* ^context[+].type = #element
* ^context[=].expression = "Condition"
* value[x] only CodeableConcept
* valueCodeableConcept from BHADiagnosisTypeVS (required)
