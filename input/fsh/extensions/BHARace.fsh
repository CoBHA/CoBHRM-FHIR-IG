Extension: BHARace
Id: bha-race
Title: "BHA Race Extension"
Description: "Race classification per BHA requirements"
* ^extension[$fmm].valueInteger = 1
* ^context[+].type = #element
* ^context[=].expression = "Patient"
* valueCodeableConcept from BHARaceVS (required)
* valueCodeableConcept ^short = "BHA race code"

