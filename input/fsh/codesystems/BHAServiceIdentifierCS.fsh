Instance: BHAServiceIdentifierCS
InstanceOf: CodeSystem
Title: "BHA Service Identifier Codes"
Description: "Service identifiers for BHA services/admissions."
Usage: #definition
* id = "bha-service-identifier-cs"
* url = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-service-identifier-cs"
* name = "BHAServiceIdentifierCS"
* title = "BHA Service Identifier Codes"
* description = "Service identifiers for BHA services/admissions."
* status = #active
* experimental = false
* caseSensitive = true
* content = #complete
* hierarchyMeaning = #grouped-by
* property[+].code = #notSelectable
* property[=].uri = "http://hl7.org/fhir/concept-properties#notSelectable"
* property[=].description = "Indicates that the concept is abstract and not intended for direct selection."
* property[=].type = #boolean
* property[+].code = #status
* property[=].uri = "http://hl7.org/fhir/concept-properties#status"
* property[=].description = "A property that indicates the status of the concept. One of active, experimental, deprecated, retired."
* property[=].type = #code

* concept[+].code = #SUD-MH
* concept[=].display = "SUD / MH"
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = true
* concept[=].concept[+].code = #00
* concept[=].concept[=].display = "Differential Assessment (SUD) / Evaluation Only (MH)"

* concept[+].code = #WM
* concept[=].display = "WM"
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = true
* concept[=].concept[+].code = #01
* concept[=].concept[=].display = "Ambulatory Medical Withdrawal Management"
* concept[=].concept[+].code = #02
* concept[=].concept[=].display = "Residential (non-hospital) Withdrawal Management (RDX)"
* concept[=].concept[+].code = #12
* concept[=].concept[=].display = "Medically Managed Inpatient Withdrawal Management"
* concept[=].concept[+].code = #20
* concept[=].concept[=].display = "Ambulatory Medical Withdrawal Management without Monitoring"
* concept[=].concept[+].code = #21
* concept[=].concept[=].display = "Ambulatory Medical Withdrawal Management with Monitoring"

* concept[+].code = #SUD
* concept[=].display = "SUD"
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = true
* concept[=].concept[+].code = #03
* concept[=].concept[=].display = "Therapeutic Community (TC)"
* concept[=].concept[+].code = #04
* concept[=].concept[=].display = "Intensive Residential (IRT)"
* concept[=].concept[+].code = #05
* concept[=].concept[=].display = "Transitional Residential (TRT)"
* concept[=].concept[+].code = #06
* concept[=].concept[=].display = "Opioid Treatment Program (ORT/OTP)"
* concept[=].concept[+].code = #07
* concept[=].concept[=].display = "SUD Traditional Outpatient (OP and EOP)"
* concept[=].concept[+].code = #08
* concept[=].concept[=].display = "STIRT"
* concept[=].concept[+].code = #09
* concept[=].concept[=].display = "SUD Intensive Outpatient (IOP)"
* concept[=].concept[+].code = #10
* concept[=].concept[=].display = "Day Treatment (DAY)"
* concept[=].concept[+].code = #11
* concept[=].concept[=].display = "Medically Managed Inpatient Other Than WM (Partial Hospital Program)"
* concept[=].concept[+].code = #54
* concept[=].concept[=].display = "CJS SUD Treatment"

* concept[+].code = #MH
* concept[=].display = "MH"
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = true
* concept[=].concept[+].code = #30
* concept[=].concept[=].display = "Mental Health Outpatient"
* concept[=].concept[+].code = #31
* concept[=].concept[=].display = "Mental Health Residential"
* concept[=].concept[+].code = #32
* concept[=].concept[=].display = "Mental Health Inpatient"
* concept[=].concept[+].code = #33
* concept[=].concept[=].display = "Psychiatric Hospitalization"

* concept[+].code = #Crisis
* concept[=].display = "Crisis"
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = true
* concept[=].concept[+].code = #40
* concept[=].concept[=].display = "Crisis Mobile"
* concept[=].concept[+].code = #41
* concept[=].concept[=].display = "Crisis Walk in"
* concept[=].concept[+].code = #42
* concept[=].concept[=].display = "Crisis Stabilization"
* concept[=].concept[+].code = #43
* concept[=].concept[=].display = "Crisis Respite"

* concept[+].code = #DUI
* concept[=].display = "DUI"
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = true
* concept[=].concept[+].code = #50
* concept[=].concept[=].display = "DUI Level I Education"
* concept[=].concept[+].code = #51
* concept[=].concept[=].display = "DUI Level II Education Only"
* concept[=].concept[+].code = #52
* concept[=].concept[=].display = "DUI Level II Therapy and Education"
* concept[=].concept[+].code = #53
* concept[=].concept[=].display = "Minors in Possession Treatment (MIP)"

* concept[+].code = #Co-Occurring
* concept[=].display = "Co-Occurring"
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = true
* concept[=].concept[+].code = #80
* concept[=].concept[=].display = "Co-Occurring (CIRCLE)"

* concept[+].code = #Retired
* concept[=].display = "Retired"
* concept[=].property[+].code = #notSelectable
* concept[=].property[=].valueBoolean = true
* concept[=].concept[+].code = #13
* concept[=].concept[=].display = "DUI Level I Education"
* concept[=].concept[=].property[+].code = #status
* concept[=].concept[=].property[=].valueCode = #retired
* concept[=].concept[+].code = #14
* concept[=].concept[=].display = "DUI Level II Education Only"
* concept[=].concept[=].property[+].code = #status
* concept[=].concept[=].property[=].valueCode = #retired
* concept[=].concept[+].code = #15
* concept[=].concept[=].display = "DUI Level II Therapy and Education"
* concept[=].concept[=].property[+].code = #status
* concept[=].concept[=].property[=].valueCode = #retired
* concept[=].concept[+].code = #16
* concept[=].concept[=].display = "Minors in Possession Treatment (MIP)"
* concept[=].concept[=].property[+].code = #status
* concept[=].concept[=].property[=].valueCode = #retired
* concept[=].concept[+].code = #17
* concept[=].concept[=].display = "Mental Health Outpatient"
* concept[=].concept[=].property[+].code = #status
* concept[=].concept[=].property[=].valueCode = #retired
* concept[=].concept[+].code = #18
* concept[=].concept[=].display = "Mental Health Residential"
* concept[=].concept[=].property[+].code = #status
* concept[=].concept[=].property[=].valueCode = #retired
* concept[=].concept[+].code = #19
* concept[=].concept[=].display = "Mental Health Inpatient"
* concept[=].concept[=].property[+].code = #status
* concept[=].concept[=].property[=].valueCode = #retired
* concept[=].concept[+].code = #22
* concept[=].concept[=].display = "Psychiatric Hospitalization"
* concept[=].concept[=].property[+].code = #status
* concept[=].concept[=].property[=].valueCode = #retired
* concept[=].concept[+].code = #23
* concept[=].concept[=].display = "Co-Occurring (CIRCLE)"
* concept[=].concept[=].property[+].code = #status
* concept[=].concept[=].property[=].valueCode = #retired

Instance: BHAServiceIdentifierSnomedCTCM
InstanceOf: ConceptMap
Title: "BHA Service Identifier to US Core Condition Code ConceptMap"
Description: "Informative: Maps BHA service identifier codes to condition concepts from the US Core (SNOMED CT) condition code value set."
Usage: #definition
* status = #active
* experimental = false
* name = "BHAServiceIdentifierSnomedCTCM"
* sourceUri = Canonical(BHAServiceIdentifierVS)
* targetUri = "http://hl7.org/fhir/us/core/ValueSet/us-core-condition-code"

* group[0].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-service-identifier-cs"
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
* group[0].element[=].display = "Transitional Residential (TRT)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #06
* group[0].element[=].display = "Opioid Treatment Program (ORT/OTP)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #07
* group[0].element[=].display = "SUD Traditional Outpatient (OP and EOP)"
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
* group[0].element[=].display = "Medically Managed Inpatient Other Than WM (Partial Hospital Program)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #12
* group[0].element[=].display = "Medically Managed Inpatient Withdrawal Management"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #50
* group[0].element[=].display = "DUI Level I Education"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #51
* group[0].element[=].display = "DUI Level II Education Only"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #52
* group[0].element[=].display = "DUI Level II Therapy and Education"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #53
* group[0].element[=].display = "Minors in Possession Treatment (MIP)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #30
* group[0].element[=].display = "Mental Health Outpatient"
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #31
* group[0].element[=].display = "Mental Health Residential"
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #32
* group[0].element[=].display = "Mental Health Inpatient"
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #42
* group[0].element[=].display = "Crisis Stabilization"
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #43
* group[0].element[=].display = "Crisis Respite"
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #33
* group[0].element[=].display = "Psychiatric Hospitalization"
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #80
* group[0].element[=].display = "Co-Occurring (CIRCLE)"
* group[0].element[=].target[+].code = #66214007
* group[0].element[=].target[=].display = "Substance abuse (disorder)"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[=].target[+].code = #74732009
* group[0].element[=].target[=].display = "Mental disorder"
* group[0].element[=].target[=].equivalence = #relatedto

Instance: BHAServiceIdentifierProcedureCM
InstanceOf: ConceptMap
Title: "CO BHA Service Identifier to CPT/HCPCS ConceptMap"
Description: "Informative (Colorado): Maps CO BHA service identifier codes to related CPT and HCPCS procedure/service concepts used in Colorado implementation workflows."
Usage: #definition
* status = #active
* experimental = false
* name = "BHAServiceIdentifierProcedureCM"
* sourceUri = Canonical(BHAServiceIdentifierVS)

* group[0].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-service-identifier-cs"
* group[0].target = "http://www.ama-assn.org/go/cpt"

* group[0].element[+].code = #00
* group[0].element[=].display = "Differential Assessment (SUD) / Evaluation Only (MH)"
* group[0].element[=].target[+].code = #90791
* group[0].element[=].target[=].display = "Psychiatric diagnostic evaluation"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #30
* group[0].element[=].display = "Mental Health Outpatient"
* group[0].element[=].target[+].code = #90837
* group[0].element[=].target[=].display = "Psychotherapy, 60 minutes with patient"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #32
* group[0].element[=].display = "Mental Health Inpatient"
* group[0].element[=].target[+].code = #99223
* group[0].element[=].target[=].display = "Initial hospital inpatient care, high complexity"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #33
* group[0].element[=].display = "Psychiatric Hospitalization"
* group[0].element[=].target[+].code = #99223
* group[0].element[=].target[=].display = "Initial hospital inpatient care, high complexity"
* group[0].element[=].target[=].equivalence = #relatedto

* group[1].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-service-identifier-cs"
* group[1].target = "http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets"

* group[1].element[+].code = #01
* group[1].element[=].display = "Ambulatory Medical Withdrawal Management"
* group[1].element[=].target[+].code = #H0014
* group[1].element[=].target[=].display = "Alcohol and/or drug services; ambulatory detoxification"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #02
* group[1].element[=].display = "Residential (non-hospital) Withdrawal Management (RDX)"
* group[1].element[=].target[+].code = #H0012
* group[1].element[=].target[=].display = "Alcohol and/or drug services; sub-acute detoxification (residential addiction program outpatient)"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #03
* group[1].element[=].display = "Therapeutic Community (TC)"
* group[1].element[=].target[+].code = #H2036
* group[1].element[=].target[=].display = "Alcohol and/or other drug treatment program, per diem"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #04
* group[1].element[=].display = "Intensive Residential (IRT)"
* group[1].element[=].target[+].code = #H0019
* group[1].element[=].target[=].display = "Behavioral health; long-term residential (non-medical, non-acute care in a residential treatment program where stay is typically longer than 30 days), without room and board, per diem"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #05
* group[1].element[=].display = "Transitional Residential (TRT)"
* group[1].element[=].target[+].code = #H2034
* group[1].element[=].target[=].display = "Alcohol and/or drug abuse halfway house services, per diem"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #06
* group[1].element[=].display = "Opioid Treatment Program (ORT/OTP)"
* group[1].element[=].target[+].code = #H0020
* group[1].element[=].target[=].display = "Alcohol and/or drug services; methadone administration and/or service (provision of the drug by a licensed program)"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #07
* group[1].element[=].display = "SUD Traditional Outpatient (OP and EOP)"
* group[1].element[=].target[+].code = #H0004
* group[1].element[=].target[=].display = "Behavioral health counseling and therapy, per 15 minutes"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #08
* group[1].element[=].display = "STIRT"
* group[1].element[=].target[+].code = #H0049
* group[1].element[=].target[=].display = "Alcohol and/or drug screening"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #09
* group[1].element[=].display = "SUD Intensive Outpatient (IOP)"
* group[1].element[=].target[+].code = #H0015
* group[1].element[=].target[=].display = "Alcohol and/or drug services; intensive outpatient (treatment program that operates at least 3 hours/day and at least 3 days/week and is based on an individualized treatment plan), including assessment, counseling; crisis intervention, and activity therapies or education"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #10
* group[1].element[=].display = "Day Treatment (DAY)"
* group[1].element[=].target[+].code = #H2012
* group[1].element[=].target[=].display = "Behavioral health day treatment, per hour"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #11
* group[1].element[=].display = "Medically Managed Inpatient Other Than WM (Partial Hospital Program)"
* group[1].element[=].target[+].code = #H0011
* group[1].element[=].target[=].display = "Alcohol and/or drug services; acute detoxification (residential addiction program inpatient)"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #12
* group[1].element[=].display = "Medically Managed Inpatient Withdrawal Management"
* group[1].element[=].target[+].code = #H0011
* group[1].element[=].target[=].display = "Alcohol and/or drug services; acute detoxification (residential addiction program inpatient)"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #50
* group[1].element[=].display = "DUI Level I Education"
* group[1].element[=].target[+].code = #H0025
* group[1].element[=].target[=].display = "Behavioral health prevention education service (delivery of services with target population to affect knowledge, attitude and/or behavior)"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #51
* group[1].element[=].display = "DUI Level II Education Only"
* group[1].element[=].target[+].code = #H0025
* group[1].element[=].target[=].display = "Behavioral health prevention education service (delivery of services with target population to affect knowledge, attitude and/or behavior)"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #52
* group[1].element[=].display = "DUI Level II Therapy and Education"
* group[1].element[=].target[+].code = #H0005
* group[1].element[=].target[=].display = "Alcohol and/or drug services; group counseling by a clinician"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #53
* group[1].element[=].display = "Minors in Possession Treatment (MIP)"
* group[1].element[=].target[+].code = #H0004
* group[1].element[=].target[=].display = "Behavioral health counseling and therapy, per 15 minutes"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #31
* group[1].element[=].display = "Mental Health Residential"
* group[1].element[=].target[+].code = #H2013
* group[1].element[=].target[=].display = "Psychiatric health facility service, per diem"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #42
* group[1].element[=].display = "Crisis Stabilization"
* group[1].element[=].target[+].code = #H2011
* group[1].element[=].target[=].display = "Crisis intervention service, per 15 minutes"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #43
* group[1].element[=].display = "Crisis Respite"
* group[1].element[=].target[+].code = #S9484
* group[1].element[=].target[=].display = "Crisis intervention mental health services, per hour"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #80
* group[1].element[=].display = "Co-Occurring (CIRCLE)"
* group[1].element[=].target[+].code = #H0004
* group[1].element[=].target[=].display = "Behavioral health counseling and therapy, per 15 minutes"
* group[1].element[=].target[=].equivalence = #relatedto

Instance: BHAServiceIdentifierICD10CM
InstanceOf: ConceptMap
Title: "CO BHA Service Identifier to ICD-10-CM ConceptMap"
Description: "Informative (Colorado): Maps CO BHA service identifier codes to related ICD-10-CM diagnosis concepts used in Colorado implementation workflows."
Usage: #definition
* status = #active
* experimental = false
* name = "BHAServiceIdentifierICD10CM"
* sourceUri = Canonical(BHAServiceIdentifierVS)
//* targetUri = "http://hl7.org/fhir/sid/icd-10-cm"

* group[0].source = "http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-service-identifier-cs"
* group[0].target = "http://hl7.org/fhir/sid/icd-10-cm"

* group[0].element[+].code = #00
* group[0].element[=].display = "Differential Assessment (SUD) / Evaluation Only (MH)"
* group[0].element[=].target[+].code = #Z13.30
* group[0].element[=].target[=].display = "Encounter for screening examination for mental health and behavioral disorders, unspecified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[=].target[+].code = #F19.20
* group[0].element[=].target[=].display = "Other psychoactive substance dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #01
* group[0].element[=].display = "Ambulatory Medical Withdrawal Management"
* group[0].element[=].target[+].code = #F19.239
* group[0].element[=].target[=].display = "Other psychoactive substance dependence with withdrawal, unspecified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #02
* group[0].element[=].display = "Residential (non-hospital) Withdrawal Management (RDX)"
* group[0].element[=].target[+].code = #F19.239
* group[0].element[=].target[=].display = "Other psychoactive substance dependence with withdrawal, unspecified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #03
* group[0].element[=].display = "Therapeutic Community (TC)"
* group[0].element[=].target[+].code = #F19.20
* group[0].element[=].target[=].display = "Other psychoactive substance dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #04
* group[0].element[=].display = "Intensive Residential (IRT)"
* group[0].element[=].target[+].code = #F19.20
* group[0].element[=].target[=].display = "Other psychoactive substance dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #05
* group[0].element[=].display = "Transitional Residential (TRT)"
* group[0].element[=].target[+].code = #F19.20
* group[0].element[=].target[=].display = "Other psychoactive substance dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #06
* group[0].element[=].display = "Opioid Treatment Program (ORT/OTP)"
* group[0].element[=].target[+].code = #F11.20
* group[0].element[=].target[=].display = "Opioid dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #07
* group[0].element[=].display = "SUD Traditional Outpatient (OP and EOP)"
* group[0].element[=].target[+].code = #F19.20
* group[0].element[=].target[=].display = "Other psychoactive substance dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #08
* group[0].element[=].display = "STIRT"
* group[0].element[=].target[+].code = #F19.20
* group[0].element[=].target[=].display = "Other psychoactive substance dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #09
* group[0].element[=].display = "SUD Intensive Outpatient (IOP)"
* group[0].element[=].target[+].code = #F19.20
* group[0].element[=].target[=].display = "Other psychoactive substance dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #10
* group[0].element[=].display = "Day Treatment (DAY)"
* group[0].element[=].target[+].code = #F19.20
* group[0].element[=].target[=].display = "Other psychoactive substance dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #11
* group[0].element[=].display = "Medically Managed Inpatient Other Than WM (Partial Hospital Program)"
* group[0].element[=].target[+].code = #F19.20
* group[0].element[=].target[=].display = "Other psychoactive substance dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #12
* group[0].element[=].display = "Medically Managed Inpatient Withdrawal Management"
* group[0].element[=].target[+].code = #F19.239
* group[0].element[=].target[=].display = "Other psychoactive substance dependence with withdrawal, unspecified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #50
* group[0].element[=].display = "DUI Level I Education"
* group[0].element[=].target[+].code = #Z71.41
* group[0].element[=].target[=].display = "Alcohol abuse counseling and surveillance of alcoholic"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #51
* group[0].element[=].display = "DUI Level II Education Only"
* group[0].element[=].target[+].code = #Z71.41
* group[0].element[=].target[=].display = "Alcohol abuse counseling and surveillance of alcoholic"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #52
* group[0].element[=].display = "DUI Level II Therapy and Education"
* group[0].element[=].target[+].code = #Z71.41
* group[0].element[=].target[=].display = "Alcohol abuse counseling and surveillance of alcoholic"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #53
* group[0].element[=].display = "Minors in Possession Treatment (MIP)"
* group[0].element[=].target[+].code = #Z71.41
* group[0].element[=].target[=].display = "Alcohol abuse counseling and surveillance of alcoholic"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #30
* group[0].element[=].display = "Mental Health Outpatient"
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #31
* group[0].element[=].display = "Mental Health Residential"
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #32
* group[0].element[=].display = "Mental Health Inpatient"
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #42
* group[0].element[=].display = "Crisis Stabilization"
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #43
* group[0].element[=].display = "Crisis Respite"
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #33
* group[0].element[=].display = "Psychiatric Hospitalization"
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #80
* group[0].element[=].display = "Co-Occurring (CIRCLE)"
* group[0].element[=].target[+].code = #F19.20
* group[0].element[=].target[=].display = "Other psychoactive substance dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto

ValueSet: BHAServiceIdentifierBillingAndDiagnosisVS
Id: bha-service-identifier-billing-and-diagnosis-vs
Title: "CO BHA Service Identifier Billing and Diagnosis ValueSet"
Description: "CPT, HCPCS, and ICD-10-CM codes referenced by CO BHA service identifier ConceptMaps."
* ^experimental = false

* http://www.ama-assn.org/go/cpt#90791
* http://www.ama-assn.org/go/cpt#90837
* http://www.ama-assn.org/go/cpt#99223

* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H0011
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H0012
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H0014
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H0015
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H0019
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H0020
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H0025
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H0004
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H0005
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H0049
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H2011
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H2012
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H2013
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H2034
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#H2036
* http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#S9484

* http://hl7.org/fhir/sid/icd-10-cm#F11.20 "Opioid dependence, uncomplicated"
* http://hl7.org/fhir/sid/icd-10-cm#F19.20 "Other psychoactive substance dependence, uncomplicated"
* http://hl7.org/fhir/sid/icd-10-cm#F19.239 "Other psychoactive substance dependence with withdrawal, unspecified"
* http://hl7.org/fhir/sid/icd-10-cm#F99 "Mental disorder, not otherwise specified"
* http://hl7.org/fhir/sid/icd-10-cm#Z13.30 "Encounter for screening examination for mental health and behavioral disorders, unspecified"
* http://hl7.org/fhir/sid/icd-10-cm#Z71.41 "Alcohol abuse counseling and surveillance of alcoholic"

// ValueSet with all ICD-10-CM
ValueSet: BHAServiceIdentifiersAllICD10CMVS
Title: "CO BHA Service Identifiers from ICD-10-CM"
Description: "All ICD-10-CM that are valid for Service Identifiers in CoBHRM"
* ^experimental = false
* include codes from system http://hl7.org/fhir/sid/icd-10-cm