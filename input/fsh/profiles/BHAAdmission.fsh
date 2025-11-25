Profile: BHAAdmission  
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Id: bha-encounter
Title: "Colorado BHA Admission Profile"
Description: "Episode of Care profile for BHA client admissions and discharges"
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
* diagnosis.condition only Reference(bha-admission-diagnosis) 
* diagnosis.condition MS
* diagnosis.use MS
* diagnosis.use from BHADiagnosisTypeVS
* diagnosis.rank MS

// Service provider
//* serviceProvider 1..1 MS
//* serviceProvider only Reference(BHAOrganization)

// Extensions for BHA-specific data
* extension contains 
    BHAActionType named actionType 1..1 MS and
    BHAUpdateType named updateType 0..1 MS and
    BHAReferralSource named referralSource 1..1 MS

* extension[actionType] ^short = "CCAR Action Type (01=admission, 03=update, 05=discharge)"
* extension[updateType] ^short = "Type of update when applicable"
* extension[referralSource] ^short = "Source of referral using BHA codes"
