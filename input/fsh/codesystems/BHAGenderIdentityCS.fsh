CodeSystem: BHAGenderIdentityCS
Id: bha-gender-identity-cs
Title: "BHA Gender Identity Codes"
Description: "Gender identity values used by BHA"
* ^experimental = false
* ^caseSensitive = true
* #01 "Transgender-female"
* #02 "Transgender-male"
* #03 "Cisgender"
* #04 "Non-binary"
* #05 "Two-Spirit"
* #96 "Asked but Unknown"
* #97 "Other"
* #98 "Declined"

ValueSet: BHAGenderIdentityVS
Id: bha-gender-identity-vs
Title: "BHA Gender Identity ValueSet"
Description: "ValueSet for BHA gender identity codes"
* ^experimental = false
* include codes from system BHAGenderIdentityCS

Instance: BHAGenderIdentityCM
InstanceOf: ConceptMap
Title: "BHA Gender Identity ConceptMap"
Description: "Maps BHA gender identity codes to the FHIR Gender Identity value set."
Usage: #definition
* status = #active
* experimental = false
* name = "BHAGenderIdentityCM"
* sourceUri = Canonical(BHAGenderIdentityVS)
* targetUri = "http://hl7.org/fhir/ValueSet/gender-identity"

* group[0].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-gender-identity-cs"
* group[0].target = "http://hl7.org/fhir/gender-identity"
* group[0].element[+].code = #01
* group[0].element[=].display = "Transgender-female"
* group[0].element[=].target[+].code = #transgender-female
* group[0].element[=].target[=].display = "transgender female"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #02
* group[0].element[=].display = "Transgender-male"
* group[0].element[=].target[+].code = #transgender-male
* group[0].element[=].target[=].display = "transgender male"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #03
* group[0].element[=].display = "Cisgender"
* group[0].element[=].target[+].code = #female
* group[0].element[=].target[=].display = "female"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[=].target[+].code = #male
* group[0].element[=].target[=].display = "male"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #04
* group[0].element[=].display = "Non-binary"
* group[0].element[=].target[+].code = #non-binary
* group[0].element[=].target[=].display = "non-binary"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #05
* group[0].element[=].display = "Two-Spirit"
* group[0].element[=].target[+].code = #non-binary
* group[0].element[=].target[=].display = "non-binary"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #97
* group[0].element[=].display = "Other"
* group[0].element[=].target[+].code = #non-binary
* group[0].element[=].target[=].display = "non-binary"
* group[0].element[=].target[=].equivalence = #relatedto
