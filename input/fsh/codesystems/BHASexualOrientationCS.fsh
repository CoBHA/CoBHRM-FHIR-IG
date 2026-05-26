CodeSystem: BHASexualOrientationCS
Id: bha-sexual-orientation-cs
Title: "BHA Sexual Orientation Codes"
Description: "Sexual orientation values used by BHA"
* ^experimental = false
* ^caseSensitive = true
* #01 "Heterosexual"
* #02 "Gay, Lesbian or Homosexual"
* #03 "Bisexual"
* #04 "Pansexual"
* #05 "Queer"
* #06 "Asexual"
* #07 "Questioning/not sure"
* #97 "Other"
* #98 "Declined"

ValueSet: BHASexualOrientationVS
Id: bha-sexual-orientation-vs
Title: "BHA Sexual Orientation ValueSet"
Description: "ValueSet for BHA sexual orientation codes"
* ^experimental = false
* include codes from system BHASexualOrientationCS

Instance: BHASexualOrientationCM
InstanceOf: ConceptMap
Title: "BHA Sexual Orientation ConceptMap"
Description: "Required: Maps BHA sexual orientation codes to the US Core Sexual Orientation value set."
Usage: #definition
* status = #active
* experimental = false
* name = "BHASexualOrientationCM"
* sourceUri = Canonical(BHASexualOrientationVS)
* targetUri = "http://hl7.org/fhir/us/core/ValueSet/us-core-sexual-orientation"

* group[0].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-sexual-orientation-cs"
* group[0].target = "http://snomed.info/sct"
* group[0].element[+].code = #01
* group[0].element[=].display = "Heterosexual"
* group[0].element[=].target[+].code = #20430005
* group[0].element[=].target[=].display = "Heterosexual state"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #02
* group[0].element[=].display = "Gay, Lesbian or Homosexual"
* group[0].element[=].target[+].code = #38628009
* group[0].element[=].target[=].display = "Homosexuality"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #03
* group[0].element[=].display = "Bisexual"
* group[0].element[=].target[+].code = #42035005
* group[0].element[=].target[=].display = "Bisexual state"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #04
* group[0].element[=].display = "Pansexual"
* group[0].element[=].target[+].code = #51431000087101
* group[0].element[=].target[=].display = "Pansexual (finding)"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #05
* group[0].element[=].display = "Queer"
//* group[0].element[=].target[+].code = #34071000087106 // this is not valid in US SNOMED-CT
//* group[0].element[=].target[=].display = "Queer (finding)"
//* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[=].target.equivalence = #unmatched
* group[0].element[+].code = #06
* group[0].element[=].display = "Asexual"
* group[0].element[=].target[+].code = #765288000
* group[0].element[=].target[=].display = "Sexually attracted to neither male nor female sex (finding)"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #07
* group[0].element[=].display = "Questioning/not sure"
* group[0].element[=].target[+].code = #766822004
* group[0].element[=].target[=].display = "Sexual orientation confusion (finding)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[=].target[+].code = #1064711000000108
* group[0].element[=].target[=].display = "Undecided (finding)"
* group[0].element[=].target[=].equivalence = #relatedto

* group[1].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-sexual-orientation-cs"
* group[1].target = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* group[1].element[+].code = #97
* group[1].element[=].display = "Other"
* group[1].element[=].target[+].code = #OTH
* group[1].element[=].target[=].display = "Other"
* group[1].element[=].target[=].equivalence = #equivalent
* group[1].element[+].code = #98
* group[1].element[=].display = "Declined"
* group[1].element[=].target[+].code = #ASKU
* group[1].element[=].target[=].display = "asked but unknown"
* group[1].element[=].target[=].equivalence = #equivalent
