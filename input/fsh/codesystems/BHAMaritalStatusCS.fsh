CodeSystem: BHAMaritalStatusCS
Id: bha-marital-status
Title: "BHA Marital Status"
Description: "Code system for marital statuses used in BHA admission process"
* ^experimental = false
* ^caseSensitive = true

* #01 "Never Married"
* #02 "Now Married"
* #03 "Separated"
* #04 "Divorced"
* #05 "Widowed"
* #98 "Unknown"

Instance: BHAMaritalStatusCM
InstanceOf: ConceptMap
Title: "BHA Marital Status ConceptMap"
Description: "Required: Maps BHA marital status codes to the FHIR marital status value set."
Usage: #definition
* status = #active
* experimental = false
* name = "BHAMaritalStatusCM"
* sourceUri = Canonical(BHAMaritalStatusVS)
* targetUri = "http://hl7.org/fhir/ValueSet/marital-status"

* group[0].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-marital-status"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* group[0].element[+].code = #01
* group[0].element[=].display = "Never Married"
* group[0].element[=].target[+].code = #S
* group[0].element[=].target[=].display = "Never Married"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #02
* group[0].element[=].display = "Now Married"
* group[0].element[=].target[+].code = #M
* group[0].element[=].target[=].display = "Married"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #03
* group[0].element[=].display = "Separated"
* group[0].element[=].target[+].code = #L
* group[0].element[=].target[=].display = "Legally Separated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #04
* group[0].element[=].display = "Divorced"
* group[0].element[=].target[+].code = #D
* group[0].element[=].target[=].display = "Divorced"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #05
* group[0].element[=].display = "Widowed"
* group[0].element[=].target[+].code = #W
* group[0].element[=].target[=].display = "Widowed"
* group[0].element[=].target[=].equivalence = #equivalent

* group[1].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-marital-status"
* group[1].target = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* group[1].element[+].code = #98
* group[1].element[=].display = "Unknown"
* group[1].element[=].target[+].code = #UNK
* group[1].element[=].target[=].display = "unknown"
* group[1].element[=].target[=].equivalence = #equivalent