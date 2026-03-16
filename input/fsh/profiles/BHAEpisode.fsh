Profile: BHAEpisode
Parent: EpisodeOfCare
Id: bha-episode
Title: "Colorado BHA Episode Profile"
Description: "BHA episode profile for client admissions/services"

// BHASO Admission Identifier -- not expected from point of care systems

// *  identifier 1..* MS
// *  identifier ^slicing.discriminator.type = #pattern
// *  identifier ^slicing.discriminator.path = "type"
// *  identifier ^slicing.rules = #open


// * identifier contains BHASOEpisodeId 0..1 MS
// *  identifier[BHASOEpisodeId].type from https://ratiopbc.github.io/bha-ig/ValueSet-bha-episode-id-type-vs (required)
// *  identifier[BHASOEpisodeId].type = BHAEpisodeIdTypeCS#BHASOID "BHASO Episode ID"
// *  identifier[BHASOEpisodeId].value 1..1 MS
// *  identifier[BHASOEpisodeId] ^short = "BHASO Admission Identifier (10 characters max)"


* status MS
* type 1..1 MS
* type from BHAEpisodeIdentifierVS
* patient MS
* patient ^short = "The Client who is the focus of this episode"
* diagnosis MS
* diagnosis.role MS
* managingOrganization 1..1 MS
* managingOrganization only Reference(bha-organization)
* period MS
* period.end 0..1 MS

