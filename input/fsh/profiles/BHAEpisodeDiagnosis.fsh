Profile: BHAEpisodeDiagnosis  
Parent: $us-core-diagnosis // which is a FHIR Condition
Title: "Colorado BHA Episode Diagnosis Profile"
Description: "Diagnosis profile for diagnoses related to Colorado BHA episodes"
// us-core encounter diagnosis sets .category[0].coding = `encounter-diagnosis`
* category 2..* MS
* category contains diagnosisType 1..1 MS
* category[diagnosisType].coding 1..1 MS
* category[diagnosisType].coding.system 1..1 MS
* category[diagnosisType].coding.code 1..1 MS
* category[diagnosisType].coding.code from BHADiagnosisTypeVS  // BH vs SUD
* category[diagnosisType].coding.system = Canonical(BHADiagnosisTypeCS) (exactly)
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(bha-client)

* encounter only Reference(BHAEncounter)

Mapping: BHAEpisodeDiagnosis-Mapping
Source: BHAEpisodeDiagnosis
Target: "https://coloradobehavioralhealthadministration.mintlify.app/"
Title: "Mapping from CoBHRM Diagnosis to BHA Episode Diagnosis"
* -> "CoBHRM: Diagnosis"
* category[diagnosisType] -> "Diagnosis: Diagnosis Type (MH or SUD)"
* code -> "Diagnosis: MH Diagnosis Identifier 1-3 / SUD Diagnosis Identifier"
* encounter -> "Reference to associated Encounter"
* subject -> "The Client associated with the diagnosis"
