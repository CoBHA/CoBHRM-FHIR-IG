CodeSystem: BHAServiceIdentifierCS
Id: bha-service-identifier-cs
Title: "BHA Service Identifier Codes"
Description: "Service identifiers for BHA services/admissions."
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

* group[0].element[+].code = #17
* group[0].element[=].display = "Mental Health Outpatient"
* group[0].element[=].target[+].code = #90837
* group[0].element[=].target[=].display = "Psychotherapy, 60 minutes with patient"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #19
* group[0].element[=].display = "Mental Health Inpatient"
* group[0].element[=].target[+].code = #99223
* group[0].element[=].target[=].display = "Initial hospital inpatient care, high complexity"
* group[0].element[=].target[=].equivalence = #relatedto

* group[0].element[+].code = #22
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
* group[1].element[=].target[=].display = "Alcohol and/or drug services; sub-acute detoxification (residential addiction program inpatient)"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #03
* group[1].element[=].display = "Therapeutic Community (TC)"
* group[1].element[=].target[+].code = #H2036
* group[1].element[=].target[=].display = "Alcohol and/or other drug treatment program, per diem"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #04
* group[1].element[=].display = "Intensive Residential (IRT)"
* group[1].element[=].target[+].code = #H0019
* group[1].element[=].target[=].display = "Behavioral health; long-term residential"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #05
* group[1].element[=].display = "Transitional Residential (TRT"
* group[1].element[=].target[+].code = #H2034
* group[1].element[=].target[=].display = "Alcohol and/or drug halfway house services, per diem"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #06
* group[1].element[=].display = "Opioid Treatment Program (ORT/OTP)"
* group[1].element[=].target[+].code = #H0020
* group[1].element[=].target[=].display = "Alcohol and/or drug services; methadone administration and/or service"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #07
* group[1].element[=].display = "SUD Traditional Outpatient (OP and EOP))"
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
* group[1].element[=].target[=].display = "Alcohol and/or drug services; intensive outpatient treatment"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #10
* group[1].element[=].display = "Day Treatment (DAY)"
* group[1].element[=].target[+].code = #H2012
* group[1].element[=].target[=].display = "Behavioral health day treatment, per hour"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #11
* group[1].element[=].display = "Medically Managed Inpatient Other Than WM"
* group[1].element[=].target[+].code = #H0011
* group[1].element[=].target[=].display = "Alcohol and/or drug services; acute detoxification (hospital inpatient)"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #12
* group[1].element[=].display = "Medically Managed Inpatient Withdrawal Management"
* group[1].element[=].target[+].code = #H0011
* group[1].element[=].target[=].display = "Alcohol and/or drug services; acute detoxification (hospital inpatient)"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #13
* group[1].element[=].display = "DUI Level I Education"
* group[1].element[=].target[+].code = #H0025
* group[1].element[=].target[=].display = "Behavioral health prevention education service"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #14
* group[1].element[=].display = "DUI Level II Education Only"
* group[1].element[=].target[+].code = #H0025
* group[1].element[=].target[=].display = "Behavioral health prevention education service"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #15
* group[1].element[=].display = "DUI Level II Therapy and Education"
* group[1].element[=].target[+].code = #H0005
* group[1].element[=].target[=].display = "Alcohol and/or drug services; group counseling by a clinician"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #16
* group[1].element[=].display = "Minors in Possession Treatment (MIP)"
* group[1].element[=].target[+].code = #H0004
* group[1].element[=].target[=].display = "Behavioral health counseling and therapy, per 15 minutes"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #18
* group[1].element[=].display = "Mental Health Residential"
* group[1].element[=].target[+].code = #H2013
* group[1].element[=].target[=].display = "Psychiatric health facility service, per diem"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #20
* group[1].element[=].display = "Crisis Stabilization"
* group[1].element[=].target[+].code = #H2011
* group[1].element[=].target[=].display = "Crisis intervention service, per 15 minutes"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #21
* group[1].element[=].display = "Crisis Respite"
* group[1].element[=].target[+].code = #S9484
* group[1].element[=].target[=].display = "Crisis intervention mental health services, per diem"
* group[1].element[=].target[=].equivalence = #relatedto
* group[1].element[+].code = #23
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
* group[0].element[=].display = "Transitional Residential (TRT"
* group[0].element[=].target[+].code = #F19.20
* group[0].element[=].target[=].display = "Other psychoactive substance dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #06
* group[0].element[=].display = "Opioid Treatment Program (ORT/OTP)"
* group[0].element[=].target[+].code = #F11.20
* group[0].element[=].target[=].display = "Opioid dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #07
* group[0].element[=].display = "SUD Traditional Outpatient (OP and EOP))"
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
* group[0].element[=].display = "Medically Managed Inpatient Other Than WM"
* group[0].element[=].target[+].code = #F19.20
* group[0].element[=].target[=].display = "Other psychoactive substance dependence, uncomplicated"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #12
* group[0].element[=].display = "Medically Managed Inpatient Withdrawal Management"
* group[0].element[=].target[+].code = #F19.239
* group[0].element[=].target[=].display = "Other psychoactive substance dependence with withdrawal, unspecified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #13
* group[0].element[=].display = "DUI Level I Education"
* group[0].element[=].target[+].code = #Z71.41
* group[0].element[=].target[=].display = "Alcohol abuse counseling and surveillance of alcoholic"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #14
* group[0].element[=].display = "DUI Level II Education Only"
* group[0].element[=].target[+].code = #Z71.41
* group[0].element[=].target[=].display = "Alcohol abuse counseling and surveillance of alcoholic"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #15
* group[0].element[=].display = "DUI Level II Therapy and Education"
* group[0].element[=].target[+].code = #Z71.41
* group[0].element[=].target[=].display = "Alcohol abuse counseling and surveillance of alcoholic"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #16
* group[0].element[=].display = "Minors in Possession Treatment (MIP)"
* group[0].element[=].target[+].code = #Z71.41
* group[0].element[=].target[=].display = "Alcohol abuse counseling and surveillance of alcoholic"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #17
* group[0].element[=].display = "Mental Health Outpatient"
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #18
* group[0].element[=].display = "Mental Health Residential"
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #19
* group[0].element[=].display = "Mental Health Inpatient"
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #20
* group[0].element[=].display = "Crisis Stabilization"
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #21
* group[0].element[=].display = "Crisis Respite"
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #22
* group[0].element[=].display = "Psychiatric Hospitalization"
* group[0].element[=].target[+].code = #F99
* group[0].element[=].target[=].display = "Mental disorder, not otherwise specified"
* group[0].element[=].target[=].equivalence = #relatedto
* group[0].element[+].code = #23
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