Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: BHAObservationPregnancyStatusExample
InstanceOf: Observation
Title: "Example Pregnancy Status Observation"
Description: "Example Observation Record for pregnancy status"

Usage: #example
//* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-pregnancystatus"
* status = #final
* category = $observation-category#social-history "Social History"
* category.text = "Social History"
* code = $loinc#82810-3 "Pregnancy status"
* code.text = "Pregnancy Status"
* subject = Reference(Patient/BHAClientExample) "Emma Jones"
* performer.reference = "http://example.org/fhir/Practitioner/BHAPractitionerExample" // just an example not important to the example purpose
* effectiveDateTime = "2025-08-24T10:39:52Z"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/731000124108"
* valueCodeableConcept.coding = $sct#77386006 "Pregnant"
* valueCodeableConcept.text = "Pregnant"