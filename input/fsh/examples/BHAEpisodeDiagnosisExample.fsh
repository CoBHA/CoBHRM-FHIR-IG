Instance: BHAEpisodeDiagnosisExample
InstanceOf: BHAEpisodeDiagnosis
Title: "Example BHA Episode Diagnosis — Mental Health"
Description: "Example Condition (encounter-diagnosis) for a BHA Episode with a Mental Health diagnosis type, illustrating use of the bha-diagnosis-type extension."
Usage: #example

// bha-diagnosis-type extension (1..1 MS) — MH or SUD
* extension[diagnosisType].valueCodeableConcept = BHADiagnosisTypeCS#MH "Mental Health"

// Required by US Core Condition (encounter-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* code = http://hl7.org/fhir/sid/icd-10-cm#F33.1 "Major depressive disorder, recurrent, moderate"
* subject = Reference(Patient/BHAClientExample) "Emma Jones"

// Required by BHAEpisodeDiagnosis (1..1)
* encounter = Reference(Encounter/BHAEncounterExample) "BHA Encounter Example"
