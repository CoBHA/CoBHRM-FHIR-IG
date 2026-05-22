Profile: BHAEpisodeOfCare
Parent: EpisodeOfCare
Id: bha-episodeOfCare
Title: "BHA EpisodeOfCare Profile"
Description: "BHA EpisodeOfCare Profile for client admissions/services"
* meta.lastUpdated 1..1 MS
* status MS
* type 1..1 MS
* type from BHADiagnosisTypeVS (required)  // MH vs SUD
* patient 1..1 MS
* patient only Reference(bha-client)
* patient ^short = "The Client who is the focus of this episode of care"
* diagnosis 1.. MS
* diagnosis.condition 1..1 MS
* diagnosis.condition only Reference(BHAEpisodeDiagnosis)
* diagnosis.role MS
* managingOrganization 1..1 MS
* managingOrganization only Reference(bha-organization)
* managingOrganization.identifier 1..1 MS
* managingOrganization.identifier ^short = "NPI / BHE License Number for the organization managing the episode of care"
* period 1..1 MS
* period.start 1..1 MS
* period.end 0..1 MS

Mapping: BHAEpisodeOfCare-Mapping
Source: BHAEpisodeOfCare
Target: "https://coloradobehavioralhealthadministration.mintlify.app/"
Title: "Mapping from CoBHRM Admission/Discharge to BHA Episode of Care"
* -> "CoBHRM: EpisodeOfCare"
* meta.lastUpdated -> "Episode: Effective Date"
* status -> "Discharge: Discharge Type / Status"
* type -> "Admission: Service Type (MD vs SUD)"
* patient -> "The Client"
* period.start -> "Admission: Admission Date"
* period.end -> "Discharge: Discharge Date"
* managingOrganization -> "Provider/Managing Organization"
* managingOrganization.identifier -> "NPI / BHE License Number"
* diagnosis -> "Diagnosis reference"
// todo do we need statusHistory, careManager, team, account, referralRequest?

