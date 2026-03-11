Extension: BHAActionType
Id: bha-action-type  
Title: "BHA Action Type"
Description: "CCAR action type (admission, update, discharge, evaluation)"
* ^extension[$fmm].valueInteger = 3
* ^context[+].type = #element
* ^context[=].expression = "Encounter"
* value[x] only CodeableConcept
* valueCodeableConcept from BHAActionTypeVS (required)
