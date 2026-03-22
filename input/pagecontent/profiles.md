The following profiles SHALL be used in this Implementation Guide to represent the data that CoBHRM needs. Some of the profiles are defined in this IG, and some are from [us-core]({{site.data.fhir.uscore}}). The profiles defined in this IG are based on the us-core profiles, and use the us-core profiles as their parent.  This allows for maximum reuse of the us-core profiles, while still allowing for the necessary customizations to meet the needs of CoBHRM.

### The following profiles have been defined for this implementation guide

{% include table-profiles.xhtml %}

### Key US Core Profiles

Certain US Core profiles are necessary for capturing the information needed for BHA reporting, without any additional
constraint or modification. Those profiles therefore do not have corresponding BHA profiles in this IG, but implementers
will need to be aware of them in order to ensure the full set of data is transmitted.

The US Core profiles SHALL be supported and used for BHA reporting without further constraint:

- [US Core Observation Sexual Orientation]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-sexual-orientation.html)
- [US Core Observation Pregnancy Status]({{site.data.fhir.uscore}}/StructureDefinition-us-core-observation-pregnancystatus.html)
- [US Core Organization]({{site.data.fhir.uscore}}/StructureDefinition-us-core-organization.html)
