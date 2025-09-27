Instance: BHAClientExample
InstanceOf: BHAClient
Title: "Example BHA Client"
Description: "Example client for BHA CCAR reporting"

* identifier[clientId].value = "ABC1234567"
* identifier[clientId].type = http://terminology.hl7.org/CodeSystem/v2-0203#PI

* name.family = "Doe"
* name.given = "Jane"
* birthDate = "1985-06-15"
* birthSex = #female
* gender = #female
* ethnicity = #2135-2
* race = #2028-9

//* extension[ethnicity].valueCodeableConcept = BHAEthnicityCS#1 "Hispanic/Latino (Mexican)"

* address.line = "123 Main St"
* address.city = "Denver" 
* address.state = "CO"
* address.postalCode = "80202"
* address.district = "01"
