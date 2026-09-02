# Kontakt via team - Inera FHIR CareTeam v0.9

## Extension: Kontakt via team 

Anger ett team som en fast kontakt kan nås via.

**Context of Use**

**Usage info**

**Användningar:**

* Använd denna Extension: [Fast kontakt](StructureDefinition-RIVCareManager-careteam.md)
* Exempel för denna Extension: [CareTeam/ExampleCareManager](CareTeam-ExampleCareManager.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.fhir.careteam|current/StructureDefinition/riv-contact-via-team-extension)

### Formella vyer av extensioninnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Begränsningar

** Sammanfattning **

Enkel extension med typen Reference: Anger ett team som en fast kontakt kan nås via.

 **DifferentialvyDifferential View** 

 **Ögonblicksbildsvy** 

#### Begränsningar

** Sammanfattning **

Enkel extension med typen Reference: Anger ett team som en fast kontakt kan nås via.

 

Andra representationer av profilen: [CSV](../StructureDefinition-riv-contact-via-team-extension.csv), [Excel](../StructureDefinition-riv-contact-via-team-extension.xlsx), [Schematron](../StructureDefinition-riv-contact-via-team-extension.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "riv-contact-via-team-extension",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.inera.se/ig/careteam/StructureDefinition/riv-contact-via-team-extension",
  "version" : "0.9",
  "name" : "RIVContactViaTeamExtension",
  "title" : "Kontakt via team",
  "status" : "draft",
  "date" : "2026-09-02T07:03:46+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Anger ett team som en fast kontakt kan nås via.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "CareTeam.participant"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Kontakt via team",
      "definition" : "Anger ett team som en fast kontakt kan nås via."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.inera.se/ig/careteam/StructureDefinition/riv-contact-via-team-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/careteam/StructureDefinition/RIVManagingTeam-careteam"]
      }]
    }]
  }
}

```
