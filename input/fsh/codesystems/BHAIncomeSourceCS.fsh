CodeSystem: BHAIncomeSourceCS
Id: bha-income-source
Title: "BHA Income Source"
Description: "Code system for income sources used in BHA admission process"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #0 "None"
* #1 "Wages"
* #2 "Public Assistance"
* #3 "Retirement/Pension"
* #4 "Disability"
* #97 "Other"
// this value is only valid when service code is asam-3.2.wm; this rule is not currently modeled via FHIR
* #99 "Unknown"