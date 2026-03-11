
This is a draft FHIR implementation guide (IG) to enable standardized behavioral health data exchange and reduce
provider administrative burden throughout Colorado’s behavioral health ecosystem.

### Overview

The [Colorado Behavioral Health Administration (BHA)](https://bha.colorado.gov/) needs to gather information related to BHA clients and their treatment. The majority of this information must be collected from clinical sites. This IG addresses the exchange of relevant information between clinical sites and Colorado Behavioral Health Administrative Service Organizations (BHASOs).

This IG includes:

- Profiles for BHA client demographic information, admission and discharge information, diagnosis information, and other related information
- Terminology specifications (code systems and value sets) for BHA-specific codes
- Example instances of FHIR resources demonstrating how FHIR data in the formats specified here can capture the information for example BHA client criteria

### Getting Started

This implementation guide is built using HL7 FHIR Revision {{site.data.fhir.version}} found at [{{site.data.fhir.path}}]({{site.data.fhir.path}}). An understanding of FHIR is important in knowing how to implement the data exchange patterns specified here.

This guide is broken down into sections.

- [Guidance](guidance.html) for further guidance.
- [Profiles](profiles.html) for the FHIR profiles defined in this IG.
- [Questionnaires](questionnaires.html) for the FHIR questionnaires defined in this IG.
- [Terminology](terminology.html) for the code systems and value sets defined in this IG.
- [Artifacts](artifacts.html) for the complete list of all artifacts defined in this IG, including profiles, value sets, code systems, and examples.
- [About](about.html) for more information about this IG, including how to download the resources and view the source code.

### This IG is dependent

{% include dependency-table-short.xhtml %}
