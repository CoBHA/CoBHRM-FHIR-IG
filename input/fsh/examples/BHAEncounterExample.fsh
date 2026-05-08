Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $sct = http://snomed.info/sct

Instance: BHAEncounterExample
InstanceOf: BHAEncounter
Title: "Example Encounter for a BHA Episode"
Description: "Example Encounter for a BHA Episode."

Usage: #example


* episodeOfCare[BHAEpisodeOfCareSlice] = Reference(EpisodeOfCare/BHAEpisodeOfCareExampleBH) "BHA Episode Example"
* period.start = "2025-11-14T10:39:52Z"
* period.end = "2025-11-14T13:22:52Z"
* status = #finished

* class = $v3-ActCode#IMP "inpatient encounter"
* type.coding.version = "http://snomed.info/sct/731000124108"
* type.coding = $sct#261665006 "Unknown (qualifier value)"
* type.text = "Unknown (qualifier value)"
* subject = Reference(Patient/BHAClientExample) "Emma Jones"

* extension[actionType].valueCodeableConcept = BHAActionTypeCS#01 "Admission"

* serviceProvider = Reference(Organization/BHAOrganizationExample) "Community Health Clinic"

// BHA Encounter example that points at both a BH and a PG episode of care.
Instance: BHAEncounterExamplePG
InstanceOf: BHAEncounter
Title: "Example Encounter for a BHA Episode of both Behavioral Health and Pregnancy for a Pregnant Client"
Description: "Example Encounter for a BHA Episode of both Behavioral Health and Pregnancy for a Pregnant Client. This encounter references both a BH episode of care and a pregnancy episode of care."
* episodeOfCare[BHAEpisodeOfCareSlice] = Reference(EpisodeOfCare/BHAEpisodeOfCareExampleBH) "BHA Episode of Care for BH Program"
* episodeOfCare[1] = Reference(EpisodeOfCare/EpisodeOfCareExamplePG) "Episode of Care for Pregnancy"
* period.start = "2025-11-14T10:39:52Z"
* period.end = "2025-11-14T13:22:52Z"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* type.coding.version = "http://snomed.info/sct/731000124108"
* type.coding = $sct#261665006 "Unknown (qualifier value)"
* type.text = "Unknown (qualifier value)"
* subject = Reference(Patient/BHAClientExample) "Emma Jones"
* serviceProvider = Reference(Organization/BHAOrganizationExample) "Community Health Clinic"
* extension[actionType].valueCodeableConcept = BHAActionTypeCS#06 "Evaluation Only"
