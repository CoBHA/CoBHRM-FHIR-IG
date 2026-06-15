# Colorado Behavioral Health Reporting Model (CoBHRM) FHIR Implementation Guide

[![FHIR R4](https://img.shields.io/badge/FHIR-R4%20(4.0.1)-orange)](https://hl7.org/fhir/R4/)
[![Status](https://img.shields.io/badge/status-draft%20%C2%B7%20trial--use-yellow)](https://build.fhir.org/ig/CoBHA/CoBHRM-FHIR-IG/branches/main/index.html)
[![License: CC BY 4.0](https://img.shields.io/badge/license-CC--BY--4.0-blue)](LICENSE)

A draft [HL7® FHIR®](https://hl7.org/fhir/) Implementation Guide (IG) that defines how behavioral
health providers in Colorado capture and exchange the data required by the **Colorado Behavioral
Health Reporting Model (CoBHRM)** — with the goal of standardizing behavioral health data exchange
and reducing provider administrative burden across the state.

> ⚠️ **Work in progress.** This guide is under active development and is intended for testing and
> development only — not production use.

## 📖 Read the guide

The human-readable guide is the best place to start. It's rebuilt automatically from this repository:

- **[Published guide (CI build)](https://build.fhir.org/ig/CoBHA/CoBHRM-FHIR-IG/branches/main/index.html)** — profiles, questionnaires, terminology, and examples
- [QA report](https://build.fhir.org/ig/CoBHA/CoBHRM-FHIR-IG/branches/main/qa.html) · [Build log](https://build.fhir.org/ig/CoBHA/CoBHRM-FHIR-IG/branches/main/build.log) · [All branch builds](https://build.fhir.org/ig/CoBHA/CoBHRM-FHIR-IG/branches/)

## Why this exists

On **July 1, 2026**, the [Colorado Behavioral Health Administration (BHA)](https://bha.colorado.gov/)
begins collecting client-level data under the CoBHRM, replacing two legacy reporting systems:

- **CCAR** (Colorado Client Assessment Record) — mental health treatment data
- **DACODS** (Drug and Alcohol Coordinated Data System) — substance use disorder treatment data

This IG expresses the data elements those programs require as FHIR resources, so the information can
be captured once in certified EHRs and exchanged in a standard format between providers,
intermediaries, and the BHA. It does **not** cover the entire CoBHRM — it defines the FHIR pieces
needed to support BHA and SAMHSA reporting.

For program background, see the [CoBHRM documentation](https://coloradobehavioralhealthadministration.mintlify.app/).

## Who this is for

- **Behavioral health providers** and their EHR / IT vendors implementing CoBHRM reporting
- **Behavioral Health Administrative Service Organizations (BHASOs)** and other intermediaries who
  report into the BHA and want to adopt, extend, or build upon these FHIR definitions
- **FHIR implementers** looking for a real-world behavioral-health reporting example

## What's inside

The guide is built on [US Core STU6](https://hl7.org/fhir/us/core/) where possible and includes:

| Component | Description |
| --- | --- |
| **Profiles** | Client, Episode of Care, Episode Diagnosis, Encounter, and Organization profiles for BHA reporting |
| **Questionnaires** | Admission, Discharge, Diagnosis, Client, Service, Substance Use Disorder, and Special Connections (pregnancy/baby) forms |
| **Terminology** | BHA-specific code systems and value sets (race, living situation, ASAM level of care, legal status, and more) |
| **Examples** | Sample FHIR instances showing how the data is captured for representative clients |

> 💡 The questionnaires can be explored interactively in the NIH [Form Builder](https://formbuilder.nlm.nih.gov/).

## Repository structure

```
input/
  fsh/             FHIR Shorthand (FSH) source — profiles, questionnaires, terminology, examples
  pagecontent/     Narrative pages (index, guidance, workflow, terminology, …)
  images/          Diagrams used in the guide
sushi-config.yaml  IG configuration (metadata, dependencies, pages, menu)
fsh-generated/     Generated FHIR resources (produced by SUSHI — not edited by hand)
_build.sh / .bat   Build scripts that run the HL7 IG Publisher
```

The authored source lives in `input/fsh/` ([FHIR Shorthand](https://fshschool.org/)) and
`input/pagecontent/` (Markdown). Everything in `fsh-generated/` is produced by the build.

## Building locally

You only need a local build if you're contributing changes — to just read the guide, use the
[published CI build](https://build.fhir.org/ig/CoBHA/CoBHRM-FHIR-IG/branches/main/index.html) above.

**Prerequisites:** [Java 11+](https://adoptium.net/), [SUSHI](https://fshschool.org/docs/sushi/installation/)
(`npm install -g fsh-sushi`), [Ruby + Jekyll](https://jekyllrb.com/docs/installation/).

```bash
# from the repository root
./_build.sh        # macOS / Linux  (use _build.bat on Windows)
```

The script downloads the latest [HL7 IG Publisher](https://github.com/HL7/fhir-ig-publisher),
runs SUSHI, and generates the guide. Open `output/index.html` when it finishes.

## Feedback & contributing

Questions, corrections, and suggestions are welcome:

- 📧 Email the BHA at **FHIRFeedback@state.co.us**
- 🐛 [Open an issue](https://github.com/CoBHA/CoBHRM-FHIR-IG/issues) on this repository

## License

Content is licensed under [CC BY 4.0](LICENSE). FHIR® and HL7® are registered trademarks of
[Health Level Seven International](https://www.hl7.org/).

---

Published by the [Colorado Behavioral Health Administration](https://bha.colorado.gov/) with support
from the [Office of eHealth Innovation](https://oehi.colorado.gov/).
