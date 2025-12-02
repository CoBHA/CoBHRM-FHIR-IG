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

| UDM File | UDM Field Name                           | FHIR Path                                         | FHIR Profile or Resource                                                                                                                                                                                   |
| -------- | ---------------------------------------- | ------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Client   | Effective Date                           | Provenance.recorded                               | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-provenance.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-provenance.html)                                         |
| Client   | Colorado PEAK State ID<br>/ Universal ID | Patient.identifier<br>QuestionnaireResponse       | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | Trails Identifier                        | Patient.identifier<br>QuestionnaireResponse       | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | CCAR Client Identifier                   | Patient.identifier<br>QuestionnaireResponse       | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | DACODS Client Identifier                 | Patient.identifier<br>QuestionnaireResponse       | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | DOB                                      | Patient.birthDate                                 | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | Last Name                                | Patient.name.family                               | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | First Name                               | Patient.name.given                                | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | Middle Name/Initial                      | Patient.name.given                                | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | Name Suffix                              | Patient.name.suffix                               | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | Social Security Number                   | Patient.identifier                                | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | County of Residence                      | Patient.address.district                          | [https://hl7.org/fhir/R4/datatypes.html#Address](https://hl7.org/fhir/R4/datatypes.html#Address)                                                                                                           |
| Client   | Zip Code of Residence                    | Patient.address.postalCode                        | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | Race Codes                               | Patient.extension:race                            | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | Ethnicity                                | Patient.extension:ethnicity                       | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | Household Language                       | Patient.communication.language                    | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | Sex at Birth                             | Patient.extension:birthsex                        | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | Gender Identity                          | Patient.extension:gender                          | [https://hl7.org/fhir/extensions/StructureDefinition-individual-genderIdentity.html](https://hl7.org/fhir/extensions/StructureDefinition-individual-genderIdentity.html)                                   |
| Client   | Sexual Orientation                       | Observation                                       | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-sexual-orientation.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-sexual-orientation.html) |
| Client   | Child Welfare Involvement                | QuestionnaireResponse                             | [http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)                     |
| Client   | Disability Code(s)                       | QuestionnaireResponse                             | [http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)                     |
| Client   | Veteran Status                           | Patient.extension:military-service-veteran-status | https://hl7.org/fhir/us/military-service/StructureDefinition-usveteran.html<br>https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Patient-bh-patient-example.json.html                            |
| Client   | Last known address line 1                | Patient.address.line                              | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | Last known address line 2                | Patient.address.line                              | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |
| Client   | Last known city                          | Patient.address.city                              | [https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)                                               |

/*
 Note to maintainers: To update or recreate the table above, I suggest using a spreadsheet-to-Markdown converter, such as the one
at https://tabletomarkdown.com/convert-spreadsheet-to-markdown/ 
*/

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