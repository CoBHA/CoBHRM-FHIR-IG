Instance: BHADiagnosisQuestionnaireResponseExample
//InstanceOf: QuestionnaireResponse
InstanceOf: $us-core-questionnaireresponse
Title: "Example Diagnosis Questionnaire Responses"
Description: "Example Responses to Diagnosis Questionnaire Questions"
Usage: #example
* questionnaire = Canonical(BHADiagnosisQuestionnaire)
* status = #completed
* subject = Reference(Patient/BHAClientExample) "Emma Jones"
* authored = "2025-10-28T18:30:40-07:00"
//* author = Reference(Practitioner/practitioner-1)
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-10-28T18:30:40-07:00"
* item[+].linkId = "SMI_SED_STATUS"
* item[=].text = "SMI/SED Status"
* item[=].answer.valueCoding = BHASMISEDStatusCS#1
* item[+].linkId = "episodeOfCare"
* item[=].text = "Episode of Care Information"
* item[=].answer.valueReference = Reference(BHAEpisodeOfCareExampleBH) 
* item[+].linkId = "diagnosis"
* item[=].text = "Diagnosis Information"
* item[=].answer[+].valueReference = Reference(BHAEpisodeDiagnosisExample) "Major depressive disorder, recurrent, moderate"
* item[=].answer[+].valueReference = Reference(BHAEpisodeDiagnosisExample2) "Anxiety disorder"

