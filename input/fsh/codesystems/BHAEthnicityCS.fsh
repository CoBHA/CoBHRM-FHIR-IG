CodeSystem: BHAEthnicityCS
Id: bha-ethnicity-cs
Title: "BHA Ethnicity Codes"
Description: "Ethnicity codes used by BHA"
* ^experimental = false
* ^caseSensitive = true
* #0 "Not Hispanic/Latino"
* #1 "Hispanic/Latino (Mexican)"  
* #2 "Hispanic/Latino (Puerto Rican)"
* #3 "Hispanic/Latino (Cuban)"
* #4 "Hispanic/Latino (Other)"
* #5 "Declined to answer"

Instance: BHAClientEthnicityCM
InstanceOf: ConceptMap
Title: "BHA Ethnicity ConceptMap"
Description: "Required: Maps BHA ethnicity codes to the US Core OMB ethnicity category value set."
Usage: #definition
* status = #active
* experimental = false
* name = "BHAClientEthnicityCM"
* sourceUri = Canonical(BHAEthnicityVS)
* targetUri = "http://hl7.org/fhir/us/core/ValueSet/omb-ethnicity-category"

* group[0].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-ethnicity-cs"
* group[0].target = "urn:oid:2.16.840.1.113883.6.238"
* group[0].element[+].code = #0
* group[0].element[=].display = "Not Hispanic/Latino"
* group[0].element[=].target[+].code = #2186-5
* group[0].element[=].target[=].display = "Not Hispanic or Latino"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #1
* group[0].element[=].display = "Hispanic/Latino (Mexican)"
* group[0].element[=].target[+].code = #2135-2
* group[0].element[=].target[=].display = "Hispanic or Latino"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #2
* group[0].element[=].display = "Hispanic/Latino (Puerto Rican)"
* group[0].element[=].target[+].code = #2135-2
* group[0].element[=].target[=].display = "Hispanic or Latino"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #3
* group[0].element[=].display = "Hispanic/Latino (Cuban)"
* group[0].element[=].target[+].code = #2135-2
* group[0].element[=].target[=].display = "Hispanic or Latino"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #4
* group[0].element[=].display = "Hispanic/Latino (Other)"
* group[0].element[=].target[+].code = #2135-2
* group[0].element[=].target[=].display = "Hispanic or Latino"
* group[0].element[=].target[=].equivalence = #equivalent

Instance: BHAClientEthnicityDetailedCM
InstanceOf: ConceptMap
Title: "BHA Ethnicity Detailed ConceptMap"
Description: "Required: Maps BHA ethnicity codes to the US Core detailed ethnicity value set."
Usage: #definition
* status = #active
* experimental = false
* name = "BHAClientEthnicityDetailedCM"
* sourceUri = Canonical(BHAEthnicityVS)
* targetUri = "http://hl7.org/fhir/us/core/ValueSet/detailed-ethnicity"

* group[0].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-ethnicity-cs"
* group[0].target = "urn:oid:2.16.840.1.113883.6.238"
* group[0].element[+].code = #1
* group[0].element[=].display = "Hispanic/Latino (Mexican)"
* group[0].element[=].target[+].code = #2148-5
* group[0].element[=].target[=].display = "Mexican"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #2
* group[0].element[=].display = "Hispanic/Latino (Puerto Rican)"
* group[0].element[=].target[+].code = #2180-8
* group[0].element[=].target[=].display = "Puerto Rican"
* group[0].element[=].target[=].equivalence = #equivalent
* group[0].element[+].code = #3
* group[0].element[=].display = "Hispanic/Latino (Cuban)"
* group[0].element[=].target[+].code = #2182-4
* group[0].element[=].target[=].display = "Cuban"
* group[0].element[=].target[=].equivalence = #equivalent

* group[0].element[+].code = #4
* group[0].element[=].display = "Hispanic/Latino (Other)"
* group[0].element[=].target[+].code = #2178-2
* group[0].element[=].target[=].display = "Latin American"
* group[0].element[=].target[=].equivalence = #relatedto
