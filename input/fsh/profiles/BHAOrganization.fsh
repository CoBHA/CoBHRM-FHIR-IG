Profile: BHAOrganization
Parent: $us-core-organization
Id: bha-organization
Title: "Colorado BHA Provider Organization Profile"
Description: "Provider Organization profile for Colorado BHASO clinics"

* identifier 1..* MS
* identifier[NPI] 1..1 MS
//* identifier ^slicing.discriminator.type = #pattern
//* identifier ^slicing.discriminator.path = "$this"
//* identifier ^slicing.rules = #open

// BHASO Provider ID - originally added here to be included for BHA episodes but will not be available to the clinics
// * identifier contains ProviderId 1..1 MS
// * identifier[ProviderId].system = "http://example.org/ProviderIDSystem"
// * identifier[ProviderId].value 1..1 MS
// * identifier[ProviderId] ^short = "BHASO Provider ID"


