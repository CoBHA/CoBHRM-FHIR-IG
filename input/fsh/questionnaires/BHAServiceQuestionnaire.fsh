Instance: BHAServiceQuestionnaire
InstanceOf: $sdc-questionnaire
//Id: bha-service-questionnaire
Title: "BHA Service Questionnaire"
Description: "Behavioral Health Administration service questionnaire for collecting service record information"
Usage: #definition

* url = "http://bha.colorado.gov/fhir/bha-ig/Questionnaire/BHAServiceQuestionnaire"
* version = "1.0.0"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver "SemVer"
* name = "BHAServiceQuestionnaire"
* title = "BHA Service Questionnaire"
* status = #active
* subjectType = #Patient
* date = "2026-05-15"
* publisher = "Colorado Behavioral Health Administration"
* description = "Questionnaire used to collect service record information for BHA reporting"

* item[+].linkId = "lastUpdated"
* item[=].text = "Last Updated DateTime of the data in the QuestionnaireResponse"
* item[=].type = #dateTime
* item[=].required = true

* item[+].linkId = "RECORD_TYPE"
* item[=].text = "Record Type"
* item[=].type = #string
* item[=].required = true
// Must always be the exact, case-sensitive value "SER" (x(3))
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].extension[=].valueString = "^SER$"

* item[+].linkId = "TRANSACTION_TYPE"
* item[=].text = "Transaction Type"
* item[=].type = #string
* item[=].required = true
// Must be one of: A (Add), U (Update), R (Replace) — case-sensitive (x(1))
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].extension[=].valueString = "^[AUR]$"

* item[+].linkId = "BHASO_ADMISSION_IDENTIFIER"
* item[=].text = "BHASO ADMISSION Identifier"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "EFFECTIVE_DATE"
* item[=].text = "Effective Date"
* item[=].type = #date
* item[=].required = true

* item[+].linkId = "EVIDENCE_BASED_PRACTICE"
* item[=].text = "Evidence Based Practice"
* item[=].type = #string
* item[=].required = false
// x(100); semicolon+space delimited list of EBP codes from Appendix Service

* item[+].linkId = "PROGRAM"
* item[=].text = "Program"
* item[=].type = #string
* item[=].required = false
// x(100); semicolon+space delimited list of Program codes from Appendix Service

* item[+].linkId = "CREATED_DATE"
* item[=].text = "Created Date"
* item[=].type = #dateTime
* item[=].required = true

* item[+].linkId = "CREATED_BY"
* item[=].text = "Created By"
* item[=].type = #string
* item[=].required = true

* item[+].linkId = "LAST_UPDATED_DATE"
* item[=].text = "Last Updated Date"
* item[=].type = #dateTime
* item[=].required = true
