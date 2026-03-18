Instance: BHASCPregnancyQuestionnaireResponseExample
//InstanceOf: QuestionnaireResponse
InstanceOf: $us-core-questionnaireresponse
Title: "Example SC Pregnancy and Postpartum Risk Screening Questionnaire Responses"
Description: "Example Responses to Special Connections Pregnancy and Postpartum Risk Screening Questionnaire Questions"
Usage: #example
* questionnaire = Canonical(BHASCPregnancyPostpartumRiskQuestionnaire)
* status = #completed
* subject = Reference(Patient/example) "Mickey Mouse"
* authored = "2025-10-28T18:30:40-07:00"
//* author = Reference(Practitioner/practitioner-1)
* item[+].linkId = "lastUpdated"
* item[=].answer.valueDateTime = "2025-10-28T18:30:40-07:00"
* item[+].linkId = "EVALUATION_DATE"
* item[=].text = "Evaluation Date"
* item[=].answer.valueDate = "2025-07-15"
* item[+].linkId = "PREGNANCY_POSTPARTUM_STATUS"
* item[=].text = "Pregnancy/Postpartum Status"
* item[=].answer.valueCoding = BHAPregnancyPostpartumCS#03
* item[+].linkId = "PREGNANCY_POSTPARTUM_CARE_STATUS"
* item[=].text = "Pregnancy/Postpartum Care Status"
* item[=].answer.valueCoding = BHAPregnancyPostpartumCareStatusCS#01
* item[+].linkId = "DRUG_ALCOHOL_TREATMENT_ACCESS"
* item[=].text = "Access to other drug/alcohol treatment"
* item[=].answer.valueCoding = BHAAccessToOtherTreatmentCS#02
* item[+].linkId = "FAMILY_SOCIAL_SUPPORT"
* item[=].text = "Family/Social Support"
* item[=].answer.valueCoding = BHAFamilySocialSupportCS#01
* item[+].linkId = "FAMILY_SUD_HISTORY"
* item[=].text = "Family substance use disorder history"
* item[=].answer.valueCoding = BHAFamilySubstanceUseDisorderCS#05
* item[+].linkId = "FAMILY_SUD_CURRENT"
* item[=].text = "Family substance use disorder current"
* item[=].answer.valueCoding = BHAFamilySubstanceUseDisorderCS#04
* item[+].linkId = "DRUG_USING_PARTNER"
* item[=].text = "Drug using partner"
* item[=].answer.valueCoding = BHADrugUsingPartnerCS#01
* item[+].linkId = "HIV_RISK"
* item[=].text = "HIV Risk"
* item[=].answer.valueCoding = BHAHIVRiskCS#01
* item[+].linkId = "HOME_STABILITY_SAFETY"
* item[=].text = "Home Stability and Safety"
* item[=].answer.valueCoding = BHAHomeStabilitySafetyCS#01
* item[+].linkId = "PERSONAL_SAFETY"
* item[=].text = "Personal Safety"
* item[=].answer.valueCoding = BHAPersonalSafetyCS#02
* item[+].linkId = "PRIOR_CRIMINAL_RECORD"
* item[=].text = "Prior Criminal Record"
* item[=].answer.valueCoding = BHAPriorCriminalRecordCS#02
* item[+].linkId = "MENTAL_HEALTH_HISTORY"
* item[=].text = "Mental Health History"
* item[=].answer.valueCoding = BHAMentalHealthHistoryCS#01
* item[+].linkId = "PRIOR_ALCOHOL_DRUG_TREATMENT"
* item[=].text = "Prior alcohol/drug treatment"
* item[=].answer.valueCoding = BHAPriorAlcoholDrugTreatmentCS#03
* item[+].linkId = "CHILDREN_LIVING_WITH_CLIENT"
* item[=].text = "Children Living in home with you"
* item[=].answer.valueBoolean = true
* item[+].linkId = "CHILDREN_AGES_LIVING_WITH_CLIENT"
* item[=].text = "Children Ages living in home with you"
* item[=].answer.valueCoding = BHAChildrenAgesLivingInHomeCS#01
