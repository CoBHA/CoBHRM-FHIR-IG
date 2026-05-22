Instance: BHAEpisodeDiagnosisExample
InstanceOf: BHAEpisodeDiagnosis
Title: "Example BHA Episode Diagnosis — Mental Health"
Description: "Example Condition (encounter-diagnosis) for a BHA Episode with a Mental Health diagnosis type, illustrating use of the bha-diagnosis-type extension."
Usage: #example
// Required by US Core Condition (encounter-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* category[diagnosisType] = BHADiagnosisTypeCS#MH "Mental Health"
//* code = http://hl7.org/fhir/sid/icd-10-cm#F33.1 "Major depressive disorder, recurrent, moderate"
* code = http://snomed.info/sct#74732009 "Mental disorder"
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
* category[diagnosisType] = BHADiagnosisTypeCS#SUD "Substance Use Disorder"
* code = http://snomed.info/sct#66214007 "Substance abuse (disorder)"
* subject = Reference(Patient/BHAClientExample) "Emma Jones"
