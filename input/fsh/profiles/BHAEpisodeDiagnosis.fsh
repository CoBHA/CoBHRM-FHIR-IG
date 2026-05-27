Profile: BHAEpisodeDiagnosis  
Parent: $us-core-diagnosis // which is a FHIR Condition
Title: "BHA Episode Diagnosis Profile"
Description: "Diagnosis profile for diagnoses related to BHA episodeOfCare"
// us-core encounter diagnosis sets .category[0].coding = `encounter-diagnosis`
* category 2..* MS
* category contains diagnosisType 0..1 MS
* category[diagnosisType] from BHADiagnosisTypeVS (required) // MH vs SUD
* code 1..1 MS // Service-Identifier (not mapped to SNOMED-CT code for the diagnosis as there is not a good mapping)
// slicing code.coding for BHA Service Identifier, HCPCS / ICD10 codes by the ValueSets

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains BHAServiceIdentifier 1..1 MS and
    billing 0..* MS
* code.coding[BHAServiceIdentifier] from BHAServiceIdentifierVS (required) // Service-Identifier codes for MH and SUD diagnoses relevant to BHA episodes
* code.coding[billing] from BHAServiceIdentifiersAllICD10CMVS // HCPCS / ICD10 codes for MH and SUD diagnoses relevant to BHA episodes
* subject 1..1 MS
* subject only Reference(bha-client)
* encounter only Reference(BHAEncounter)



Mapping: BHAEpisodeDiagnosis-Mapping
Source: BHAEpisodeDiagnosis
Target: "https://coloradobehavioralhealthadministration.mintlify.app/"
Title: "Mapping from CoBHRM Diagnosis to BHA Episode Diagnosis"
* -> "CoBHRM: Diagnosis"
* category[diagnosisType] -> "Diagnosis: Diagnosis Type (MH vs SUD)"
* code -> "Diagnosis: Service Identifier code for the diagnosis"
* encounter -> "Reference to associated Encounter"
* subject -> "The Client associated with the diagnosis"
