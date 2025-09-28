Profile: BHAEpisodeOfCare
Parent: http://hl7.org/fhir/StructureDefinition/EpisodeOfCare
Id: bha-episodeofcare
Title: "BHA Episode of Care Profile"
Description: "Episode of Care profile for BHA client treatment programs"

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

// BHASO Encounter ID - required
* identifier contains BHASOEncounterId 1..1 MS
* identifier[BHASOEncounterId].type from EncounterIdTypeVS required
* identifier[BHASOEncounterId].type = BHAEncounterIdTypeCS#BHASOID "BHASO Encounter ID"
* identifier[BHASOEncounterId].value 1..1 MS
* identifier[BHASOEncounterId] ^short = "BHASO Encounter ID (10 characters max)"

* status MS
* type MS
* patient MS
* diagnosis MS
* period MS
* period.end 1..1 MS

