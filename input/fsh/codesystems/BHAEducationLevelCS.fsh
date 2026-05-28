CodeSystem: BHAEducationLevelCS
Id: bha-education-level-cs
Title: "BHA Education Level"
Description: "Code system for education levels used in BHA EpisodeOfCare. Valid values align with ACT sheet Appendix ACT-Ascent."
* ^experimental = false
* ^caseSensitive = true

* #PK "The client has less than a Kindergarten education/No Formal education"
* #00 "Kindergarten"
* #01 "Grade 1"
* #02 "Grade 2"
* #03 "Grade 3"
* #04 "Grade 4"
* #05 "Grade 5"
* #06 "Grade 6"
* #07 "Grade 7"
* #08 "Grade 8"
* #09 "Grade 9"
* #10 "Grade 10"
* #11 "Grade 11"
* #12 "Grade 12 or GED"
* #14 "Some College"
* #16 "College Degree"
* #18 "Masters Degree"
* #20 "Doctoral Degree"

Instance: BHAEducationLevelCM
InstanceOf: ConceptMap
Title: "BHA Education Level ConceptMap"
Description: "Informative: Maps BHA education levels to HL7 v3 EducationLevel."
Usage: #definition
* status = #active
* experimental = false
* name = "BHAEducationLevelCM"
* sourceUri = Canonical(BHAEducationLevelVS)
* targetUri = "http://terminology.hl7.org/ValueSet/v3-EducationLevel"

* group[0].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-education-level-cs"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v3-EducationLevel"

* group[0].element[+].code = #PK
* group[0].element[=].display = "The client has less than a Kindergarten education/No Formal education"
* group[0].element[=].target[+].code = #ELEM
* group[0].element[=].target[=].display = "Elementary School"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #00
* group[0].element[=].display = "Kindergarten"
* group[0].element[=].target[+].code = #ELEM
* group[0].element[=].target[=].display = "Elementary School"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #01
* group[0].element[=].display = "Grade 1"
* group[0].element[=].target[+].code = #ELEM
* group[0].element[=].target[=].display = "Elementary School"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #02
* group[0].element[=].display = "Grade 2"
* group[0].element[=].target[+].code = #ELEM
* group[0].element[=].target[=].display = "Elementary School"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #03
* group[0].element[=].display = "Grade 3"
* group[0].element[=].target[+].code = #ELEM
* group[0].element[=].target[=].display = "Elementary School"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #04
* group[0].element[=].display = "Grade 4"
* group[0].element[=].target[+].code = #ELEM
* group[0].element[=].target[=].display = "Elementary School"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #05
* group[0].element[=].display = "Grade 5"
* group[0].element[=].target[+].code = #ELEM
* group[0].element[=].target[=].display = "Elementary School"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #06
* group[0].element[=].display = "Grade 6"
* group[0].element[=].target[+].code = #ELEM
* group[0].element[=].target[=].display = "Elementary School"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #07
* group[0].element[=].display = "Grade 7"
* group[0].element[=].target[+].code = #ELEM
* group[0].element[=].target[=].display = "Elementary School"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #08
* group[0].element[=].display = "Grade 8"
* group[0].element[=].target[+].code = #ELEM
* group[0].element[=].target[=].display = "Elementary School"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #09
* group[0].element[=].display = "Grade 9"
* group[0].element[=].target[+].code = #SEC
* group[0].element[=].target[=].display = "Some secondary or high school education"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #10
* group[0].element[=].display = "Grade 10"
* group[0].element[=].target[+].code = #SEC
* group[0].element[=].target[=].display = "Some secondary or high school education"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #11
* group[0].element[=].display = "Grade 11"
* group[0].element[=].target[+].code = #SEC
* group[0].element[=].target[=].display = "Some secondary or high school education"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #12
* group[0].element[=].display = "Grade 12 or GED"
* group[0].element[=].target[+].code = #HS
* group[0].element[=].target[=].display = "High School or secondary school degree complete"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #14
* group[0].element[=].display = "Some College"
* group[0].element[=].target[+].code = #SCOL
* group[0].element[=].target[=].display = "Some College education"
* group[0].element[=].target[=].equivalence = #equivalent

* group[0].element[+].code = #16
* group[0].element[=].display = "College Degree"
* group[0].element[=].target[+].code = #ASSOC
* group[0].element[=].target[=].display = "Associate's or technical degree complete"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[=].target[+].code = #BD
* group[0].element[=].target[=].display = "College or baccalaureate degree complete"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #18
* group[0].element[=].display = "Masters Degree"
* group[0].element[=].target[+].code = #GD
* group[0].element[=].target[=].display = "Graduate or professional Degree complete"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #20
* group[0].element[=].display = "Doctoral Degree"
* group[0].element[=].target[+].code = #POSTG
* group[0].element[=].target[=].display = "Doctoral or post graduate education"
* group[0].element[=].target[=].equivalence = #relatedto