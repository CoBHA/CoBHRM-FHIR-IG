Instance: BHADiagnosisQuestionnaire
InstanceOf: $sdc-questionnaire
//Id: bha-diagnosis-questionnaire
Title: "BHA Diagnosis Questionnaire"
Description: "Behavioral Health Administration diagnosis questionnaire for collecting patient clinical information during a behavioral health episode of care"
Usage: #definition 

* url = "http://bha.colorado.gov/fhir/bha-ig/Questionnaire/BHADiagnosisQuestionnaire"
* version = "1.0.0"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver "SemVer"
* name = "BHADiagnosisQuestionnaire"
* title = "BHA Diagnosis Questionnaire"
* status = #active
* subjectType = #Patient
* date = "2025-12-17"
* publisher = "Colorado Behavioral Health Administration"
* description = "Questionnaire used during a behavioral health episode of care to collect severity information about a mental health or substance use diagnosis"

* item[+].linkId = "lastUpdated"
* item[=].text = "Last Updated DateTime of the data in the QuestionnaireResponse"
* item[=].type = #dateTime
* item[=].required = true

//todo: consider how to implement restrictions for mh diagnoses only. possibly two questionnaire structures, where mh questionnaire excludes unknown and not collected from value set.
* item[+].linkId = "SMI_SED_STATUS"
* item[=].text = "SMI/SED Status"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHASMISEDStatusVS)

// require at least one EpisodeOfCare
* item[+].linkId = "episodeOfCare"
* item[=].text = "Episode of Care Information"
* item[=].type = #reference
* item[=].required = true
* item[=].repeats = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource"
* item[=].extension[=].valueCode = #EpisodeOfCare
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceProfile"
* item[=].extension[=].valueCanonical = Canonical(BHAEpisodeOfCare)

// require at least one diagnosis condition with MH or SUD code
* item[+].linkId = "diagnosis"
* item[=].text = "Diagnosis Information"
* item[=].type = #reference
* item[=].required = true
* item[=].repeats = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource"
* item[=].extension[=].valueCode = #Condition
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceProfile"
* item[=].extension[=].valueCanonical = Canonical(BHAEpisodeDiagnosis)
