Extension: BHAUpdateType
Id: bha-update-type
Title: "BHA Update Type"
Description: "Type of update for CCAR reporting"
* ^extension[$fmm].valueInteger = 3
* ^context[+].type = #element
* ^context[=].expression = "Encounter"
* value[x] only CodeableConcept
