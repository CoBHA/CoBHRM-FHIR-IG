ValueSet: BHASubstanceUsePrimaryVS
Id: bha-substance-use-primary-vs
Title: "BHA Primary Substance Use Codes Value Set"
Description: "Substance use codes for primary substance for BHA services/admissions"
* ^experimental = false

//* ^url = "http://bha.colorado.gov/fhir/bha-ig/ValueSet-bha-substance-use-primary-vs"
//* ^version = "0.1"
//* ^status = #draft
//* ^date = "2025-09-27"
//* ^publisher = "Colorado BHA"

* include codes from system BHASubstanceUseCS
* exclude BHASubstanceUseCS#0
* exclude BHASubstanceUseCS#28