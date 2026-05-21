CodeSystem: BHARaceCS
Id: bha-race-cs
Title: "BHA Race Codes"
Description: "Race codes used by BHA"
* ^experimental = false
* ^caseSensitive = true
* #01 "American Indian/Alaskan Native"
* #02 "Asian"
* #03 "Black/African American"
* #04 "Native Hawaiian/Pacific Islander"
* #05 "White/Caucasian"
* #98 "Declined"

Instance: BHAClientRaceCM
InstanceOf: ConceptMap
Title: "BHA Client Race ConceptMap"
Description: "Maps BHA race codes to the US Core OMB race category value set."
Usage: #definition
* status = #active
* experimental = false
* name = "BHAClientRaceCM"
* sourceUri = Canonical(BHARaceVS)
* targetUri = "http://hl7.org/fhir/us/core/ValueSet/omb-race-category"

* group[0].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-race-cs"
* group[0].target = "urn:oid:2.16.840.1.113883.6.238"
* group[0].element[+].code = #01
* group[0].element[=].display = "American Indian/Alaskan Native"
* group[0].element[=].target[+].code = #1002-5
* group[0].element[=].target[=].display = "American Indian or Alaska Native"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #02
* group[0].element[=].display = "Asian"
* group[0].element[=].target[+].code = #2028-9
* group[0].element[=].target[=].display = "Asian"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #03
* group[0].element[=].display = "Black/African American"
* group[0].element[=].target[+].code = #2054-5
* group[0].element[=].target[=].display = "Black or African American"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #04
* group[0].element[=].display = "Native Hawaiian/Pacific Islander"
* group[0].element[=].target[+].code = #2076-8
* group[0].element[=].target[=].display = "Native Hawaiian or Other Pacific Islander"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #05
* group[0].element[=].display = "White/Caucasian"
* group[0].element[=].target[+].code = #2106-3
* group[0].element[=].target[=].display = "White"
* group[0].element[=].target[=].equivalence = #equivalent

