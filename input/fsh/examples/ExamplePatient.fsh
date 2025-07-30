Instance: BHAPatientExample
InstanceOf: BHAPatient
Title: "Example BHA Patient"
Description: "Example patient for BHA CCAR reporting"

* identifier[clientId].value = "ABC1234567"
* identifier[clientId].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR

* name.family = "Doe"
* name.given = "Jane"
* birthDate = "1985-06-15"
* gender = #female

* extension[ethnicity].valueCodeableConcept = BHAEthnicityCS#1 "Hispanic/Latino (Mexican)"

* address.line = "123 Main St"
* address.city = "Denver" 
* address.state = "CO"
* address.postalCode = "80202"
