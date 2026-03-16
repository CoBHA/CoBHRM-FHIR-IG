Instance: BHASCPregnancyPostpartumRiskQuestionnaire
InstanceOf: $sdc-questionnaire
//Id: bha-sc-pregnancy-postpartum-risk-questionnaire
Title: "BHA Special Connections Pregnancy/Postpartum Risk Screening Questionnaire"
Description: "Behavioral Health Administration Special Connections Pregnancy/Postpartum Risk Screening questionnaire for collecting information about a pregnant or postpartum person's risk factors"
Usage: #definition 

* url = "http://bha.colorado.gov/fhir/bha-ig/Questionnaire/BHASCPregnancyPostpartumRiskQuestionnaire"
* version = "1.0.0"
* name = "BHASCPregnancyPostpartumRiskQuestionnaire"
* title = "BHA Special Connections Pregnancy/Postpartum Risk Screening Questionnaire"
* status = #active
* subjectType = #Patient
* date = "2025-12-17"
* publisher = "Colorado Behavioral Health Administration"
* description = "Behavioral Health Administration Special Connections Pregnancy/Postpartum Risk Screening questionnaire for collecting information about a pregnant or postpartum person's risk factors"

* item[0].linkId = "EVALUATION_DATE"
* item[=].text = "Evaluation Date"
* item[=].type = #date
* item[=].required = true

* item[+].linkId = "PREGNANCY_POSTPARTUM_STATUS"
* item[=].text = "Pregnancy/Postpartum Status"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAPregnancyPostpartumVS)

* item[+].linkId = "PREGNANCY_POSTPARTUM_CARE_STATUS"
* item[=].text = "Pregnancy/Postpartum Care Status"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAPregnancyPostpartumCareStatusVS)

* item[+].linkId = "DRUG_ALCOHOL_TREATMENT_ACCESS"
* item[=].text = "Access to other drug/alcohol treatment"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAAccessToOtherTreatmentVS)

* item[+].linkId = "FAMILY_SOCIAL_SUPPORT"
* item[=].text = "Family/Social Support"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAFamilySocialSupportVS)

* item[+].linkId = "FAMILY_SUD_HISTORY"
* item[=].text = "Family substance use disorder history"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAFamilySubstanceUseDisorderVS)
* item[=].repeats = true // enables multiple answers

* item[+].linkId = "FAMILY_SUD_CURRENT"
* item[=].text = "Family substance use disorder current"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAFamilySubstanceUseDisorderVS)
* item[=].repeats = true // enables multiple answers

* item[+].linkId = "DRUG_USING_PARTNER"
* item[=].text = "Drug using partner"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHADrugUsingPartnerVS)

* item[+].linkId = "HIV_RISK"
* item[=].text = "HIV Risk"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAHIVRiskVS)

* item[+].linkId = "HOME_STABILITY_SAFETY"
* item[=].text = "Home Stability and Safety"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAHomeStabilitySafetyVS)

* item[+].linkId = "PERSONAL_SAFETY"
* item[=].text = "Personal Safety"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAPersonalSafetyVS)

* item[+].linkId = "PRIOR_CRIMINAL_RECORD"
* item[=].text = "Prior Criminal Record"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAPriorCriminalRecordVS)

* item[+].linkId = "MENTAL_HEALTH_HISTORY"
* item[=].text = "Mental Health History"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAMentalHealthHistoryVS)

* item[+].linkId = "PRIOR_ALCOHOL_DRUG_TREATMENT"
* item[=].text = "Prior alcohol/drug treatment"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAPriorAlcoholDrugTreatmentVS)

* item[+].linkId = "CHILDREN_LIVING_WITH_CLIENT"
* item[=].text = "Children Living in home with you"
* item[=].type = #boolean
* item[=].required = true

* item[+].linkId = "CHILDREN_AGES_LIVING_WITH_CLIENT"
* item[=].text = "Children Ages living in home with you"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(BHAChildrenAgesLivingInHomeVS)
* item[=].repeats = true // enables multiple answers
* item[=].enableWhen[0].question = "CHILDREN_LIVING_WITH_CLIENT"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerBoolean = true
