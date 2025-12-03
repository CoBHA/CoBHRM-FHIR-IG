Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $sct = http://snomed.info/sct

Instance: BHAAdmissionEncounterExample
InstanceOf: BHAAdmissionEncounter
Description: "Example Encounter for a BHA Episode."

Usage: #example


* episodeOfCare = Reference(EpisodeOfCare/BHAEpisodeExample) "BHA Episode Example"
* period.start = "2025-11-14T10:39:52Z"
* period.end = "2025-11-14T13:22:52Z"
* status = #finished

* class = $v3-ActCode#IMP "inpatient encounter"
* type.coding.version = "http://snomed.info/sct/731000124108"
* type.coding = $sct#261665006 "Unknown (qualifier value)"
* type.text = "Unknown (qualifier value)"
* subject = Reference(Patient/BHAClientExample) "Emma Jones"

* extension[actionType].valueCodeableConcept = BHAActionTypeCS#01 "Admission"

* extension[referralSource].valueCodeableConcept = #1 "Individual"