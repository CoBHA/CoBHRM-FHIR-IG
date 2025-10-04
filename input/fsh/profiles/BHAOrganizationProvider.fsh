Profile: BHAOrganizationProvider
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Id: bha-organization-provider
Title: "BHA Provider Organization Profile"
Description: "Provider Organization profile for BHASO Providers"

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

// BHASO Provider ID - required for Admission data
* identifier contains ProviderId 1..1 MS
* identifier[ProviderId].system = "http://example.org/ProviderIDSystem"
* identifier[ProviderId].value 1..1 MS
* identifier[ProviderId] ^short = "BHASO Provider ID"

* active 1..1 MS