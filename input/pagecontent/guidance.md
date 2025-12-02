Note that the text on this page is placeholder for now and will be updated after the artifacts are built. If you are seeing this message, please refer to the Artifacts page via the link in the page header.

### General Guidance

BHA aims to leverage data interoperability capabilities already available in certified EHRs, in order to reduce 
the overall effort required for implementations of this IG. In cases where federal regulatory requirements for 
data exchange via FHIR are not sufficient for BHA reporting, this IG has identified FHIR resources and data elements 
that will effectively capture the required information and that we believe will have long-term value to Colorado providers 
and to technology implementers for this and other core healthcare use cases.

Specifically, the profiles in this IG are based on [US Core STU6](https://hl7.org/fhir/us/core/STU6.1/index.html) where possible. 
A notable exception is the BHA Service profile, which is based on the [FHIR R4 EpisodeOfCare resource](https://hl7.org/fhir/R4/episodeofcare.html).

### Relationship to the BHA UDM

The BHA Unified Data Model (UDM) specifies the full data requirements for BHA reporting. This IG does *not* 
cover the entirety of the UDM. Instead, the specification provided here reflects the information that must be 
captured and transmitted from provider sites to Behavior Health Administrative Service Organizations (BHASOs). 

#### UDM to FHIR Mapping

##### UDM Client File

[ table goes here ]

##### UDM Admission File

| UDM File  | UDM Field Name                                                                                  | FHIR Path                                         | FHIR Profile or Resource                                                                                                                 |
| --------- | ----------------------------------------------------------------------------------------------- | ------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Admission | Effective Date                                                                                  | Provenance.recorded                               | [US Core Provenance](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-provenance.html)                                    |
| Admission | Provider Location NPI                                                                           | Organization.identifer:NPI                        | [US Core Organization](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-organization.html)                                |
| Admission | Admission Date                                                                                  | Encounter.period.start                            | [US Core Encounter](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-encounter.html)                                      |
| Admission | Service Identifier                                                                              | EpisodeOfCare.type                                | [FHIR R4 EpisodeOfCare](https://hl7.org/fhir/R4/episodeofcare.html)                                                                      |
| Admission | Date of First Contact                                                                           | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Date of First Appointment Offered                                                               | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Medication Assisted Opioid Therapy                                                              | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Referral Source                                                                                 | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Arrests in Past 30 Days                                                                         | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Employment Status                                                                               | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Marital Status                                                                                  | Patient.maritalStatus OR<br>QuestionnaireResponse | [US Core Patient](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                          |
| Admission | Living Situation                                                                                | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Monthly Income                                                                                  | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Primary Source of income/support for client (or for client's parent if client >18 years of age) | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Pregnancy Status                                                                                | Observation                                       | [US Core Observation Pregnancy Status](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-pregnancystatus.html) |
| Admission | Within 1 Year Postpartum Status                                                                 | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Enrollment in Special Connections                                                               | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Enrollment in ACT?                                                                              | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Enrollment in Ascent (FEP)?                                                                     | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Number of Dependent Children<br>                                                                | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Self Help Attendance (Last 30 days at admission)/ Peer Support Attendance                       | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Substance Use Prior Treatment (Total Lifetime admissions)                                       | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Psychiatric Hospital Admission (Last 30 days)                                                   | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Legal Status                                                                                    | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Involuntary Reason                                                                              | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Criminal Justice Involvement                                                                    | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Education Level                                                                                 | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | School Attendance Status (in the previous 3 months)                                             | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Visit to Psychiatric ER in last 6 months                                                        | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |
| Admission | Communication Accomodations                                                                     | QuestionnaireResponse                             | [US Core QuestionnaireResponse](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)               |



<!--
 Note to maintainers: To update or recreate the table above, I suggest using a spreadsheet-to-Markdown converter, such as the one
at https://tabletomarkdown.com/convert-spreadsheet-to-markdown/ 
-->

#### CCAR and DACODS

The CCAR and DACODS user manuals provide additional guidance and context for the information gathered by Colorado BHA, including the 
information modeled using the FHIR QuestionnaireResponse resource in this implementation guide.
 - [2025 CCAR User Manual](https://drive.google.com/file/d/123ft3adXsXXWpHKpT3G5YjTozXbcXvmv/view)
 - [Colorado Client Assessment Record (CCAR) resource page](https://bha.colorado.gov/for-service-providers/technology-and-data-systems/colorado-client-assessment-record-ccar)
 - [2025 DACODS User Manual](https://drive.google.com/file/d/1hCSoQW7Nx5XidqqcSIfTQ9cBGlsrF_hC/view) 
 - [CO BHA Treatment Management System (TMS) resource page](https://bha.colorado.gov/help/provider-support/technology-and-data-systems-support/treatment-management-system-tms)

### Key US Core Profiles

Certain US Core profiles are necessary for capturing the information needed for BHA reporting, without any additional 
constraint or modification. Those profiles therefore do not have corresponding BHA profiles in this IG, but implementers 
will need to be aware of them in order to ensure the full set of data is transmitted.

The US Core profiles that are used for BHA reporting without further constraint are:
- [US Core Observation Pregnancy Status Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-pregnancystatus.html)
- [US Core Observation Sexual Orientation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-sexual-orientation.html)
- [US Core Organization Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-organization.html)
- [US Core Provenance Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-provenance.html)
- [US Core QuestionnaireResponse Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)
- [US Core RelatedPerson Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-relatedperson.html)

See the [Examples](/artifacts.html#example-example-instances) for instances of how those profiles are used.