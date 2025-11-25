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

[ When available, this section will include a table mapping from UDM data elements to FHIR data elements in this IG. ]

| UDM                   | FHIR                                        |   |   |   |
|:----------------------|:--------------------------------------------|:--|:--|:--|
| Client>Effective Date | Provenance.recorded                         |   |   |   |
| Client>PEAK ID        | Patient.identifier OR QuestionnaireResponse |   |   |   |
| Client>TRAILS ID      | Patient.identifier OR QuestionnaireResponse |   |   |   |

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

See the Examples for instances of how those profiles are used.