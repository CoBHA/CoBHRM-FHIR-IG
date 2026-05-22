CodeSystem: BHAEpisodeIdentifierCS
Id: bha-episode-identifier-cs
Title: "BHA Episode Identifier Codes"
Description: "Episode identifiers for BHA services/admissions."
* ^experimental = false
* ^caseSensitive = true
* #00 "Differential Assessment (SUD) / Evaluation Only (MH)"
* #01 "Ambulatory Medical Withdrawal Management"
* #02 "Residential (non-hospital) Withdrawal Management (RDX)"
* #03 "Therapeutic Community (TC)"
* #04 "Intensive Residential (IRT)"
* #05 "Transitional Residential (TRT"
* #06 "Opioid Treatment Program (ORT/OTP)"
* #07 "SUD Traditional Outpatient (OP and EOP))"
* #08 "STIRT"
* #09 "SUD Intensive Outpatient (IOP)"
* #10 "Day Treatment (DAY)"
* #11 "Medically Managed Inpatient Other Than WM"
* #12 "Medically Managed Inpatient Withdrawal Management"
* #13 "DUI Level I Education"
* #14 "DUI Level II Education Only"
* #15 "DUI Level II Therapy and Education"
* #16 "Minors in Possession Treatment (MIP)"
* #17 "Mental Health Outpatient"
* #18 "Mental Health Residential"
* #19 "Mental Health Inpatient"
* #20 "Crisis Stabilization"
* #21 "Crisis Respite"
* #22 "Psychiatric Hospitalization"
* #23 "Co-Occurring (CIRCLE)"

Instance: BHAEpisodeIdentifierCM
InstanceOf: ConceptMap
Title: "BHA Episode Identifier to US Core Condition Code ConceptMap"
Description: "Maps BHA episode identifier codes to condition concepts from the US Core condition code value set."
Usage: #definition
* status = #active
* experimental = false
* name = "BHAEpisodeIdentifierCM"
* sourceUri = Canonical(BHAEpisodeIdentifierVS)
* targetUri = "http://hl7.org/fhir/us/core/ValueSet/us-core-condition-code"

* group[0].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-episode-identifier-cs"
* group[0].target = "http://snomed.info/sct"

* group[0].element[+].code = #00
* group[0].element[=].display = "Differential Assessment (SUD) / Evaluation Only (MH)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #01
* group[0].element[=].display = "Ambulatory Medical Withdrawal Management"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #02
* group[0].element[=].display = "Residential (non-hospital) Withdrawal Management (RDX)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #03
* group[0].element[=].display = "Therapeutic Community (TC)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #04
* group[0].element[=].display = "Intensive Residential (IRT)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #05
* group[0].element[=].display = "Transitional Residential (TRT"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #06
* group[0].element[=].display = "Opioid Treatment Program (ORT/OTP)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #07
* group[0].element[=].display = "SUD Traditional Outpatient (OP and EOP))"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #08
* group[0].element[=].display = "STIRT"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #09
* group[0].element[=].display = "SUD Intensive Outpatient (IOP)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #10
* group[0].element[=].display = "Day Treatment (DAY)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #11
* group[0].element[=].display = "Medically Managed Inpatient Other Than WM"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #12
* group[0].element[=].display = "Medically Managed Inpatient Withdrawal Management"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #13
* group[0].element[=].display = "DUI Level I Education"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #14
* group[0].element[=].display = "DUI Level II Education Only"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #15
* group[0].element[=].display = "DUI Level II Therapy and Education"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #16
* group[0].element[=].display = "Minors in Possession Treatment (MIP)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #17
* group[0].element[=].display = "Mental Health Outpatient"
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #18
* group[0].element[=].display = "Mental Health Residential"
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #19
* group[0].element[=].display = "Mental Health Inpatient"
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #20
* group[0].element[=].display = "Crisis Stabilization"
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #21
* group[0].element[=].display = "Crisis Respite"
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #22
* group[0].element[=].display = "Psychiatric Hospitalization"
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #23
* group[0].element[=].display = "Co-Occurring (CIRCLE)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto
