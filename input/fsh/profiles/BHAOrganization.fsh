Profile: BHAOrganization
Parent: $us-core-organization
Id: bha-organization
Title: "Colorado BHA Provider Organization Profile"
Description: "Provider Organization profile for Colorado BHASO clinics"

// note that us-core slices Organization.identifier by $this with fixed values on system
* identifier 1..* MS
* identifier[NPI] 1..1 MS
// note indicates that Troy has asked that NPI be used as assumed to be the BHE_LICENSE_NUMBER



Mapping: BHAOrganization-Mapping
Source: BHAOrganization
Target: "https://coloradobehavioralhealthadministration.mintlify.app/"
Title: "Mapping from CoBHRM to BHA Organization"
* -> "CoBHRM: Organization"
* identifier[NPI] -> "Organization NPI (BHE License Number)"
* name -> "Organization Name"
* address -> "Organization Address"
* telecom -> "Organization Contact Information"


