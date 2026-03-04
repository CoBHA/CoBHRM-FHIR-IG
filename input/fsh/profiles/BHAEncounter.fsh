Profile: BHAEncounter  
Parent: $us-core-encounter
Id: bha-encounter
Title: "Colorado BHA Encounter Profile"
Description: "Encounter profile for client visits and encounters related to BHA episodes"
// * status MS
// * class MS
// * subject 1..1 MS
// * subject only Reference(BHAPatient)
* episodeOfCare MS

// Admission date
* period 1..1 MS
* period.start 1..1 MS
* period.end 1..1 MS

* diagnosis MS
* diagnosis.condition only Reference(bha-episode-diagnosis) 
* diagnosis.condition MS
* diagnosis.use MS
* diagnosis.use from BHADiagnosisTypeVS
* diagnosis.rank MS

// Service provider
* serviceProvider 1..1 MS
//* serviceProvider only Reference(BHAOrganization)

// Extensions for BHA-specific data
* extension contains 
    BHAActionType named actionType 1..1 MS and
    BHAUpdateType named updateType 0..1 MS

* extension[actionType] ^short = "CCAR Action Type (01=admission, 03=update, 05=discharge)"
* extension[updateType] ^short = "Type of update when applicable"
