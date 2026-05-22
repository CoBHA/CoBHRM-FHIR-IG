Instance: BHAEpisodeDiagnosisExample
InstanceOf: BHAEpisodeDiagnosis
Title: "Example BHA Episode Diagnosis — Mental Health"
Description: "Example Condition (encounter-diagnosis) for a BHA Episode with a Mental Health diagnosis type, illustrating use of the bha-diagnosis-type extension."
Usage: #example
// Required by US Core Condition (encounter-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category[diagnosisType] = BHADiagnosisTypeCS#MH
//* code = http://hl7.org/fhir/sid/icd-10-cm#F33.1 "Major depressive disorder, recurrent, moderate"
* code = BHAServiceIdentifierCS#17 "Mental Health Outpatient"
* subject = Reference(Patient/BHAClientExample) "Emma Jones"

// second Mental Health diagnosis for the episode, to illustrate multiple MH diagnoses per episode
Instance: BHAEpisodeDiagnosisExample2
InstanceOf: BHAEpisodeDiagnosis
Title: "Example BHA Episode Diagnosis 2 — Mental Health"
Description: "Second example Condition (encounter-diagnosis) for a BHA Episode with a Mental Health diagnosis type, illustrating multiple MH diagnoses for one episode."
Usage: #example
// Required by US Core Condition (encounter-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category[diagnosisType] = BHADiagnosisTypeCS#MH   
* code = BHAServiceIdentifierCS#20 "Crisis Stabilization"
* subject = Reference(Patient/BHAClientExample) "Emma Jones"


Instance: BHAEpisodeDiagnosisExampleSUD
InstanceOf: BHAEpisodeDiagnosis
Title: "Example BHA Episode Diagnosis — Substance Use Disorder"
Description: "Example Condition (encounter-diagnosis) for a BHA Episode with a Substance Use Disorder diagnosis type, illustrating use of the bha-diagnosis-type extension."
Usage: #example
// Required by US Core Condition (encounter-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category[diagnosisType] = BHADiagnosisTypeCS#SUD
* code = BHAServiceIdentifierCS#09 "SUD Intensive Outpatient (IOP)"
* subject = Reference(Patient/BHAClientExample) "Emma Jones"
