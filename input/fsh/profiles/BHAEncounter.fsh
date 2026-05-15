Profile: BHAEncounter  
Parent: $us-core-encounter
Id: bha-encounter
Title: "Colorado BHA Encounter Profile"
Description: "Encounter profile for client visits and encounters related to BHA episodes"
* meta.lastUpdated MS
// * status MS
// * class MS
// * subject 1..1 MS
// * subject only Reference(BHAPatient)
// episodeOfCare is a slice that requires at least one is BHAEpisodeOfCare.
* episodeOfCare ^slicing.discriminator.type = #profile
* episodeOfCare ^slicing.discriminator.path = "resolve()"
* episodeOfCare ^slicing.rules = #open
* episodeOfCare contains BHAEpisodeOfCareSlice 1..* MS
* episodeOfCare[BHAEpisodeOfCareSlice] only Reference(BHAEpisodeOfCare)
* episodeOfCare 1..* MS

// Admission date
* period 1..1 MS
* period.start 1..1 MS
* period.end 1..1 MS

* diagnosis MS
* diagnosis.condition only Reference(BHAEpisodeDiagnosis) 
* diagnosis.condition MS
* diagnosis.use MS
* diagnosis.use from BHADiagnosisTypeVS
* diagnosis.rank MS

// Service provider
* serviceProvider 1..1 MS
//* serviceProvider only Reference(BHAOrganization)

// Extensions for BHA-specific data
* extension contains 
    BHAActionType named actionType 1..1 MS

* extension[actionType] ^short = "CCAR Action Type (01=admission, 03=update, 05=discharge)"

Mapping: BHAEncounter-Mapping
Source: BHAEncounter
Target: "https://coloradobehavioralhealthadministration.mintlify.app/"
Title: "Mapping from CoBHRM Admission/Discharge to BHA Encounter"
* -> "CoBHRM: Admission/Discharge"
* period.start -> "Admission: Admission Date"
* period.end -> "Discharge: Discharge Date"
* episodeOfCare -> "Reference to BHA Episode of Care"
* diagnosis.condition -> "Reference to BHA Episode Diagnosis"
* serviceProvider -> "Provider Organization"
* extension[actionType] -> "Action Type (Admission, Update, Discharge)"
