# Tillgänglighet för kontaktväg - Inera FHIR CareTeam v0.9

## Extension: Tillgänglighet för kontaktväg 

Anger när en kontaktväg är tillgänglig.

**Context of Use**

**Usage info**

**Användningar:**

* Använd denna Extension: [Fast kontakt](StructureDefinition-RIVCareManager-careteam.md) and [Team](StructureDefinition-RIVManagingTeam-careteam.md)
* Exempel för denna Extension: [Norra teamet](CareTeam-ExampleManagingTeam.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.fhir.careteam|current/StructureDefinition/RIVContactPointAvailability)

### Formella vyer av extensioninnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

** Sammanfattning **

Enkel extension med typen Availability: Anger när en kontaktväg är tillgänglig.

 **DifferentialvyDifferential View** 

 **Ögonblicksbildsvy** 

#### Terminologibindningar

#### Begränsningar

** Sammanfattning **

Enkel extension med typen Availability: Anger när en kontaktväg är tillgänglig.

 

Andra representationer av profilen: [CSV](../StructureDefinition-RIVContactPointAvailability.csv), [Excel](../StructureDefinition-RIVContactPointAvailability.xlsx), [Schematron](../StructureDefinition-RIVContactPointAvailability.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RIVContactPointAvailability",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.inera.se/ig/careteam/StructureDefinition/RIVContactPointAvailability",
  "version" : "0.9",
  "name" : "RIVContactPointAvailability",
  "title" : "Tillgänglighet för kontaktväg",
  "status" : "draft",
  "date" : "2026-09-02T08:14:00+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Anger när en kontaktväg är tillgänglig.",
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
    "expression" : "CareTeam.telecom"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Tillgänglighet för kontaktväg",
      "definition" : "Anger när en kontaktväg är tillgänglig."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.inera.se/ig/careteam/StructureDefinition/RIVContactPointAvailability"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Kontaktvägens tillgänglighet",
      "definition" : "Anger under vilka veckodagar och tider kontaktvägen är tillgänglig.",
      "min" : 1,
      "type" : [{
        "code" : "Availability"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].availableTime",
      "path" : "Extension.value[x].availableTime",
      "short" : "Tillgänglig tid",
      "definition" : "Anger återkommande veckodagar och tider då kontaktvägen är tillgänglig.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].availableTime.daysOfWeek",
      "path" : "Extension.value[x].availableTime.daysOfWeek",
      "short" : "Veckodag",
      "definition" : "Veckodag då kontaktvägen är tillgänglig.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].availableTime.availableStartTime",
      "path" : "Extension.value[x].availableTime.availableStartTime",
      "short" : "Starttid",
      "definition" : "Tidpunkt då tillgängligheten börjar.",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].availableTime.availableEndTime",
      "path" : "Extension.value[x].availableTime.availableEndTime",
      "short" : "Sluttid",
      "definition" : "Tidpunkt då tillgängligheten upphör.",
      "mustSupport" : true
    }]
  }
}

```
