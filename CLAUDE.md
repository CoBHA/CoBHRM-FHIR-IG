# BHA Test FHIR Implementation Guide

This is a simplified test IG to demonstrate the SUSHI/FSH toolkit for creating FHIR Implementation Guides, using a subset of BHA's CCAR requirements.

## Project Structure

```
bha-test-ig/
├── sushi-config.yaml           # Main configuration
├── ig.ini                      # IG Publisher configuration  
├── input/
│   ├── fsh/                   # FHIR Shorthand files
│   │   ├── profiles/          # Resource profiles
│   │   ├── extensions/        # Custom extensions
│   │   ├── valuesets/         # Terminology
│   │   ├── codesystems/       # Code systems
│   │   └── examples/          # Example instances
│   ├── images/                # Diagrams and images
│   ├── pagecontent/           # Narrative documentation
│   └── resources/             # Additional resources
└── package.json               # NPM dependencies
```

## 1. sushi-config.yaml

```yaml
# Basic IG metadata
id: bha-test-ig
canonical: http://bha.colorado.gov/fhir/test
name: BHATestIG
title: "BHA Test Implementation Guide"
description: "A test FHIR IG demonstrating BHA CCAR data elements"
status: draft
version: 0.1.0
fhirVersion: 4.0.1
copyrightYear: 2025+
releaseLabel: STU1

# Publisher information
publisher:
  name: Colorado Behavioral Health Administration
  url: https://bha.colorado.gov
  email: cdhs_bha_provider_support@state.co.us

# Dependencies
dependencies:
  hl7.fhir.us.core: 6.0.0

# Global settings
parameters:
  show-inherited-invariants: false
  usage-stats-opt-out: true

# Pages structure
pages:
  index.md:
    title: Home
  guidance.md:
    title: Implementation Guidance
  profiles.md:
    title: Profiles
  terminology.md:
    title: Terminology
```

## 2. Core Profiles in FSH

### Patient Profile (input/fsh/profiles/BHAPatient.fsh)

```fsh
Profile: BHAPatient
Parent: Patient
Id: bha-patient
Title: "BHA Patient Profile"
Description: "Patient profile for BHA CCAR reporting with required demographics"

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

// Client ID - required
* identifier contains clientId 1..1 MS
* identifier[clientId].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[clientId].value 1..1 MS
* identifier[clientId] ^short = "BHA Client ID (10 characters max)"

// Medicaid ID when applicable  
* identifier contains medicaidId 0..1 MS
* identifier[medicaidId].type = http://terminology.hl7.org/CodeSystem/v2-0203#MA
* identifier[medicaidId].value 1..1 MS
* identifier[medicaidId] ^short = "Medicaid ID (X999999 format)"

// Required demographics
* name 1..* MS
* birthDate 1..1 MS
* gender 1..1 MS

// Extension for ethnicity (Hispanic/Latino)
* extension contains BHAEthnicity named ethnicity 1..1 MS

// Address for county determination
* address 0..* MS
* address.postalCode MS
* address.state MS
```

### Encounter Profile (input/fsh/profiles/BHAEncounter.fsh)

```fsh
Profile: BHAEncounter  
Parent: Encounter
Id: bha-encounter
Title: "BHA Encounter Profile"
Description: "Encounter profile for BHA episodes of care"

* status MS
* class MS
* subject 1..1 MS
* subject only Reference(BHAPatient)

// Admission date
* period 1..1 MS
* period.start 1..1 MS

// Service provider
* serviceProvider 1..1 MS
* serviceProvider only Reference(BHAOrganization)

// Extensions for BHA-specific data
* extension contains 
    BHAActionType named actionType 1..1 MS and
    BHAUpdateType named updateType 0..1 MS and
    BHAReferralSource named referralSource 1..1 MS

* extension[actionType] ^short = "CCAR Action Type (01=admission, 03=update, 05=discharge)"
* extension[updateType] ^short = "Type of update when applicable"
* extension[referralSource] ^short = "Source of referral using BHA codes"
```

## 3. Custom Extensions (input/fsh/extensions/)

### BHAEthnicity.fsh
```fsh
Extension: BHAEthnicity
Id: bha-ethnicity
Title: "BHA Ethnicity Extension"
Description: "Ethnicity classification per BHA requirements"
* value[x] only CodeableConcept
* valueCodeableConcept from BHAEthnicityVS (required)
```

### BHAActionType.fsh
```fsh
Extension: BHAActionType
Id: bha-action-type  
Title: "BHA Action Type"
Description: "CCAR action type (admission, update, discharge, evaluation)"
* value[x] only CodeableConcept
* valueCodeableConcept from BHAActionTypeVS (required)
```

## 4. Terminology (input/fsh/valuesets/ and input/fsh/codesystems/)

### BHAEthnicityCS.fsh
```fsh
CodeSystem: BHAEthnicityCS
Id: bha-ethnicity-cs
Title: "BHA Ethnicity Codes"
Description: "Ethnicity codes used by BHA"
* #0 "Not Hispanic/Latino"
* #1 "Hispanic/Latino (Mexican)"  
* #2 "Hispanic/Latino (Puerto Rican)"
* #3 "Hispanic/Latino (Cuban)"
* #4 "Hispanic/Latino (Other)"
* #5 "Declined to answer"
```

### BHAEthnicityVS.fsh
```fsh
ValueSet: BHAEthnicityVS
Id: bha-ethnicity-vs
Title: "BHA Ethnicity Value Set"
Description: "Allowed ethnicity values for BHA reporting"
* include codes from system BHAEthnicityCS
```

### BHAActionTypeCS.fsh
```fsh
CodeSystem: BHAActionTypeCS
Id: bha-action-type-cs
Title: "BHA Action Type Codes"
Description: "CCAR action types"
* #01 "Admission"
* #03 "Update" 
* #05 "Discharge"
* #06 "Evaluation Only"
```

## 5. Example Instance (input/fsh/examples/ExamplePatient.fsh)

```fsh
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
```

## 6. Setup Commands

```bash
# Install SUSHI and IG Publisher
npm install -g fsh-sushi

# Initialize project
mkdir bha-test-ig
cd bha-test-ig
sushi init

# Build the IG
sushi build
./_updatePublisher.sh  # Downloads IG Publisher
./_genonce.sh          # Generates the IG
```

## 7. Key Learning Points

### FSH Benefits:
- **Concise syntax** - Much more readable than raw JSON/XML
- **Built-in validation** - SUSHI validates FSH against FHIR spec
- **Dependency management** - Automatic handling of base profiles
- **Code generation** - Produces all FHIR artifacts automatically

### Common Patterns:
- **Slicing** for multiple identifiers with different purposes
- **Must Support (MS)** flags for required data elements  
- **Extensions** for data not in base FHIR resources
- **ValueSets** bound to coded elements for terminology control

### Next Steps:
1. Start with this simple structure
2. Add more BHA-specific profiles (Organization, Observation for assessments)
3. Implement complex clinical rating scales
4. Add validation rules and invariants
5. Create comprehensive examples and test data

This foundation gives us the toolkit to systematically build out the full BHA CCAR requirements using industry-standard FHIR authoring tools.
