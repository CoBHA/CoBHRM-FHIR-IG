CodeSystem: BHASubstanceUseRouteOfAdministrationCS
Id: bha-substance-use-route-of-administration-cs
Title: "BHA Substance Use Route of Administration Codes"
Description: "Substance use routes of administration for BHA services/admissions."
* ^experimental = false
* ^caseSensitive = true
* #1 "Oral"
* #2 "Smoking (pipe/cigarette)"
* #3 "Inhalation (nose/mouth)"
* #4 "Injection (IV/IM)"
* #5 "Other"

Instance: BHASubstanceUseRouteOfAdministrationCM
InstanceOf: ConceptMap
Title: "BHA Substance Use Route of Administration ConceptMap"
Description: "Informative: Maps BHA substance use routes of administration to HL7 v3 RouteOfAdministration."
Usage: #definition
* status = #active
* experimental = false
* name = "BHASubstanceUseRouteOfAdministrationCM"
* sourceUri = Canonical(BHASubstanceUseRouteOfAdministrationVS)
* targetUri = "http://terminology.hl7.org/ValueSet/v3-RouteOfAdministration"

* group[0].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-substance-use-route-of-administration-cs"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration"

* group[0].element[+].code = #1
* group[0].element[=].display = "Oral"
* group[0].element[=].target[+].code = #PO
* group[0].element[=].target[=].display = "Swallow, oral"
* group[0].element[=].target[=].equivalence = #equivalent

* group[0].element[+].code = #2
* group[0].element[=].display = "Smoking (pipe/cigarette)"
* group[0].element[=].target[+].code = #IPINHL
* group[0].element[=].target[=].display = "Inhalation, respiratory"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #3
* group[0].element[=].display = "Inhalation (nose/mouth)"
* group[0].element[=].target[+].code = #IPINHL
* group[0].element[=].target[=].display = "Inhalation, respiratory"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[=].target[+].code = #NASINHL
* group[0].element[=].target[=].display = "Inhalation, nasal"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #4
* group[0].element[=].display = "Injection (IV/IM)"
* group[0].element[=].target[+].code = #IVINJ
* group[0].element[=].target[=].display = "Injection, intravenous"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[=].target[+].code = #IM
* group[0].element[=].target[=].display = "Injection, intramuscular"
* group[0].element[=].target[=].equivalence = #relatedto