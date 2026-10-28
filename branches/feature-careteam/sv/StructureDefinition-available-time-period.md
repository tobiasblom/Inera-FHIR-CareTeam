# Period för tillgänglig tid - Inera FHIR CareTeam v0.9

## Extension: Period för tillgänglig tid 

**Context of Use**

**Usage info**

**Användningar:**

* Använd denna Extension: [Tillgänglighet för kontaktväg](StructureDefinition-contact-point-availability.md)
* Exempel för denna Extension: [CareTeam/ExampleCareManagerAnnanFastKontakt](CareTeam-ExampleCareManagerAnnanFastKontakt.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.fhir.careteam|current/StructureDefinition/available-time-period)

### Formella vyer av extensioninnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

Denna struktur är härledd från [Extension](http://hl7.org/fhir/R5/extensibility.html#Extension) 

#### Begränsningar

Denna struktur är härledd från [Extension](http://hl7.org/fhir/R5/extensibility.html#Extension) 

 **Differentialvy** 

Denna struktur är härledd från [Extension](http://hl7.org/fhir/R5/extensibility.html#Extension) 

 **Ögonblicksbildsvy** 

#### Begränsningar

Denna struktur är härledd från [Extension](http://hl7.org/fhir/R5/extensibility.html#Extension) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-available-time-period.csv), [Excel](../StructureDefinition-available-time-period.xlsx), [Schematron](../StructureDefinition-available-time-period.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "available-time-period",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.inera.se/ig/careteam/StructureDefinition/available-time-period",
  "version" : "0.9",
  "name" : "RIVAvailableTimePeriodExtension",
  "title" : "Period för tillgänglig tid",
  "status" : "draft",
  "date" : "2026-10-28T12:18:22+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Anger under vilken datumperiod de angivna veckodagarna och tiderna gäller.",
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
    "expression" : "Availability.availableTime"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Period för tillgänglig tid",
      "definition" : "Anger under vilken datumperiod de angivna veckodagarna och tiderna gäller."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.inera.se/ig/careteam/StructureDefinition/available-time-period"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Giltighetsperiod för tiderna",
      "definition" : "Datumperiod under vilken veckodagarna och tiderna gäller. Saknas perioden gäller tiderna tills vidare.",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    }]
  }
}

```
