Instance: BHASCBabyQuestionnaireResponseResourceExample
//InstanceOf: QuestionnaireResponse
InstanceOf: $us-core-questionnaireresponse
Title: "Example SC Baby Questionnaire Resource Responses"
Description: "Example Responses to Special Connections Baby Questionnaire Questions that include a Reference to the Baby's Patient Resource."
Usage: #example
* questionnaire = Canonical(BHASCBabyQuestionnaire)
* status = #completed
* subject = Reference(Patient/example) "Minnie Mouse"
* authored = "2025-10-28T18:30:40-07:00"
//* author = Reference(Practitioner/practitioner-1)
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-10-28T18:30:40-07:00"
* item[+].linkId = "LIVE_BIRTH"
* item[=].text = "Live Birth"
* item[=].answer.valueBoolean = true
* item[+].linkId = "DOB"
* item[=].text = "Baby Date of Birth"
* item[=].answer.valueDate = "2025-06-20"
* item[+].linkId = "WEIGHT_LBS"
* item[=].text = "Baby Weight Pounds"
* item[=].answer.valueDecimal = 6
* item[+].linkId = "WEIGHT_OZ"
* item[=].text = "Baby Weight Ounces"
* item[=].answer.valueDecimal = 2
* item[+].linkId = "LAST_NAME"
* item[=].text = "Baby Last Name"
* item[=].answer.valueString = "White"
* item[+].linkId = "FIRST_NAME"
* item[=].text = "Baby First Name"
* item[=].answer.valueString = "Crystal"
* item[+].linkId = "MIDDLE_NAME_INITIAL"
* item[=].text = "Baby Middle Name or Initial"
* item[=].answer.valueString = "Snow"
* item[+].linkId = "SEX_AT_BIRTH"
* item[=].text = "Baby Sex at Birth"
* item[=].answer.valueCoding.system = "http://hl7.org/fhir/administrative-gender"
* item[=].answer.valueCoding.code = #female
* item[+].linkId = "Baby_Patient_Reference"
* item[=].text = "Reference to the Baby's Patient Resource"
* item[=].answer.valueReference = Reference(BabyPatientExample) 

Instance: BabyPatientExample
InstanceOf: BHAClient
Title: "Example Baby Patient Resource"
Description: "Example Patient Resource for a Baby born to a BHA Client.  This resource is referenced in the BHASCBabyQuestionnaireResponseResourceExample."
* meta.lastUpdated =  "2025-10-28T18:30:40-07:00"
* identifier[+].use = #usual // us-core requires at least one identifier with a use, so we'll use "usual" for the baby's medical record number
* identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[=].system = "http://hospital.example.org"
* identifier[=].value = "123456"
// baby does not yet have a SSN
* active = true
* name[+].family = "White"
* name[=].given[+] = "Crystal"
* name[=].given[+] = "Snow"
* birthDate = "2025-06-20"
* gender = #female
* extension[birthsex].valueCode = http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#F 
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#S
* extension[bharace].valueCodeableConcept = http://bha.colorado.gov/fhir/bha-ig/CodeSystem/bha-race-cs#02 "Asian"