CodeSystem: BHAHouseholdLanguageCS
Id: bha-household-language-cs
Title: "BHA Household Language Codes"
Description: "Household language codes used by BHA"
* ^experimental = false
* ^caseSensitive = true
* #01 "English"
* #02 "Spanish"
* #03 "Chinese"
* #04 "Mandarin"
* #05 "Cantonese"
* #06 "German"
* #07 "Vietnamese"
* #08 "French"
* #09 "Russian"
* #10 "Korean"
* #11 "Afro-Asiatic (including Amharic, Somali)"
* #12 "Arabic"
* #13 "Other Indo-Europe"
* #14 "Tagalog"
* #15 "Filipino"
* #16 "Japanese"
* #17 "Hindi"
* #18 "Nepali, Marathi, or Other Indic Languages"
* #19 "Western African"
* #20 "Italian"
* #21 "Other Asian"
* #96 "Asked but Unknown"
* #97 "Other"
* #98 "Declined"
* #99 "Unknown"

ValueSet: BHAHouseholdLanguageVS
Id: bha-household-language-vs
Title: "BHA Household Language ValueSet"
Description: "ValueSet for BHA household language codes"
* ^experimental = false
* include codes from system BHAHouseholdLanguageCS

Instance: BHAHouseholdLanguageCM
InstanceOf: ConceptMap
Title: "BHA Household Language ConceptMap"
Description: "Required: Maps BHA household language codes to the US Core Primary Language value set which is BCP-47."
Usage: #definition
* status = #active
* experimental = false
* name = "BHAHouseholdLanguageCM"
* sourceUri = Canonical(BHAHouseholdLanguageVS)
* targetUri = "http://hl7.org/fhir/us/core/ValueSet/simple-language"
* group[0].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-household-language-cs"
* group[0].target = "urn:ietf:bcp:47"
* group[0].element[+].code = #01
* group[0].element[=].display = "English"
* group[0].element[=].target[+].code = #en
* group[0].element[=].target[=].display = "English"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #02
* group[0].element[=].display = "Spanish"
* group[0].element[=].target[+].code = #es
* group[0].element[=].target[=].display = "Spanish"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #03
* group[0].element[=].display = "Chinese"
* group[0].element[=].target[+].code = #zh
* group[0].element[=].target[=].display = "Chinese"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #04
* group[0].element[=].display = "Mandarin"
* group[0].element[=].target[+].code = #cmn
* group[0].element[=].target[=].display = "Mandarin Chinese"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #05
* group[0].element[=].display = "Cantonese"
* group[0].element[=].target[+].code = #yue
* group[0].element[=].target[=].display = "Cantonese"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #06
* group[0].element[=].display = "German"
* group[0].element[=].target[+].code = #de
* group[0].element[=].target[=].display = "German"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #07
* group[0].element[=].display = "Vietnamese"
* group[0].element[=].target[+].code = #vi
* group[0].element[=].target[=].display = "Vietnamese"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #08
* group[0].element[=].display = "French"
* group[0].element[=].target[+].code = #fr
* group[0].element[=].target[=].display = "French"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #09
* group[0].element[=].display = "Russian"
* group[0].element[=].target[+].code = #ru
* group[0].element[=].target[=].display = "Russian"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #10
* group[0].element[=].display = "Korean"
* group[0].element[=].target[+].code = #ko
* group[0].element[=].target[=].display = "Korean"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #11
* group[0].element[=].display = "Afro-Asiatic (including Amharic, Somali)"
* group[0].element[=].target[+].code = #und
* group[0].element[=].target[=].display = "Undetermined"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #12
* group[0].element[=].display = "Arabic"
* group[0].element[=].target[+].code = #ar
* group[0].element[=].target[=].display = "Arabic"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #13
* group[0].element[=].display = "Other Indo-Europe"
* group[0].element[=].target[+].code = #und
* group[0].element[=].target[=].display = "Undetermined"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #14
* group[0].element[=].display = "Tagalog"
* group[0].element[=].target[+].code = #tl
* group[0].element[=].target[=].display = "Tagalog"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #15
* group[0].element[=].display = "Filipino"
* group[0].element[=].target[+].code = #fil
* group[0].element[=].target[=].display = "Filipino"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #16
* group[0].element[=].display = "Japanese"
* group[0].element[=].target[+].code = #ja
* group[0].element[=].target[=].display = "Japanese"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #17
* group[0].element[=].display = "Hindi"
* group[0].element[=].target[+].code = #hi
* group[0].element[=].target[=].display = "Hindi"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #18
* group[0].element[=].display = "Nepali, Marathi, or Other Indic Languages"
* group[0].element[=].target[+].code = #und
* group[0].element[=].target[=].display = "Undetermined"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #19
* group[0].element[=].display = "Western African"
* group[0].element[=].target[+].code = #und
* group[0].element[=].target[=].display = "Undetermined"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #20
* group[0].element[=].display = "Italian"
* group[0].element[=].target[+].code = #it
* group[0].element[=].target[=].display = "Italian"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #21
* group[0].element[=].display = "Other Asian"
* group[0].element[=].target[+].code = #und
* group[0].element[=].target[=].display = "Undetermined"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #96
* group[0].element[=].display = "Asked but Unknown"
* group[0].element[=].target[+].code = #und
* group[0].element[=].target[=].display = "Undetermined"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #97
* group[0].element[=].display = "Other"
* group[0].element[=].target[+].code = #und
* group[0].element[=].target[=].display = "Undetermined"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #98
* group[0].element[=].display = "Declined"
* group[0].element[=].target[+].code = #und
* group[0].element[=].target[=].display = "Undetermined"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #99
* group[0].element[=].display = "Unknown"
* group[0].element[=].target[+].code = #und
* group[0].element[=].target[=].display = "Undetermined"
* group[0].element[=].target[=].equivalence = #relatedto

