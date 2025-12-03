Profile: BHAEpisode
Parent: http://hl7.org/fhir/StructureDefinition/EpisodeOfCare
Id: bha-episode
Title: "Colorado BHA Episode Profile"
Description: "BHA episode profile for client admissions/services"

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

// BHASO Encounter ID - required
* identifier contains BHASOEncounterId 1..1 MS
* identifier[BHASOEncounterId].type from https://ratiopbc.github.io/bha-test-ig/ValueSet-bha-encounter-id-type-vs (required)
* identifier[BHASOEncounterId].type = BHAEncounterIdTypeCS#BHASOID "BHASO Encounter ID"
* identifier[BHASOEncounterId].value 1..1 MS
* identifier[BHASOEncounterId] ^short = "BHASO Encounter ID (10 characters max)"


* status MS
* type MS
* type from BHAEpisodeIdentifierVS
* patient MS
* patient ^short = "The Client who is the focus of this episode"
* diagnosis MS
* period MS
* period.end 0..1 MS

