# Tillgänglighet för kontaktväg - Inera FHIR CareTeam v0.9

## Extension: Tillgänglighet för kontaktväg 

**Context of Use**

**Usage info**

**Användningar:**

* Använd denna Extension: [Fast kontakt](StructureDefinition-riv-care-manager-careteam.md) and [Team](StructureDefinition-riv-managing-team-careteam.md)
* Exempel för denna Extension: [CareTeam/ExampleCareManagerAnnanFastKontakt](CareTeam-ExampleCareManagerAnnanFastKontakt.md) and [Norra teamet](CareTeam-ExampleManagingTeam.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.fhir.careteam|current/StructureDefinition/contact-point-availability)

### Formella vyer av extensioninnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

Denna struktur är härledd från [Extension](http://hl7.org/fhir/R5/extensibility.html#Extension) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Extension](http://hl7.org/fhir/R5/extensibility.html#Extension) 

 **Differentialvy** 

Denna struktur är härledd från [Extension](http://hl7.org/fhir/R5/extensibility.html#Extension) 

 **Ögonblicksbildsvy** 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Extension](http://hl7.org/fhir/R5/extensibility.html#Extension) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-contact-point-availability.csv), [Excel](../StructureDefinition-contact-point-availability.xlsx), [Schematron](../StructureDefinition-contact-point-availability.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "contact-point-availability",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.inera.se/ig/careteam/StructureDefinition/contact-point-availability",
  "version" : "0.9",
  "name" : "RIVContactPointAvailabilityExtension",
  "title" : "Tillgänglighet för kontaktväg",
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
      "fixedUri" : "https://fhir.inera.se/ig/careteam/StructureDefinition/contact-point-availability"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Kontaktvägens tillgänglighet",
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
      "comment" : "Saknas veckodagar, tider och period är kontaktvägen tillgänglig alla dagar, hela dygnet, tills vidare.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].availableTime.extension:period",
      "path" : "Extension.value[x].availableTime.extension",
      "sliceName" : "period",
      "short" : "Period",
      "definition" : "Datumperiod under vilken veckodagarna och tiderna gäller. Saknas perioden gäller tiderna tills vidare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.inera.se/ig/careteam/StructureDefinition/available-time-period"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].availableTime.daysOfWeek",
      "path" : "Extension.value[x].availableTime.daysOfWeek",
      "short" : "Veckodag",
      "definition" : "Veckodag då kontaktvägen är tillgänglig.",
      "comment" : "Saknas veckodag gäller tiderna alla dagar i veckan.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].availableTime.availableStartTime",
      "path" : "Extension.value[x].availableTime.availableStartTime",
      "short" : "Starttid",
      "definition" : "Tidpunkt då tillgängligheten börjar.",
      "comment" : "Saknas starttid gäller tillgängligheten från dagens början.",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].availableTime.availableEndTime",
      "path" : "Extension.value[x].availableTime.availableEndTime",
      "short" : "Sluttid",
      "definition" : "Tidpunkt då tillgängligheten upphör.",
      "comment" : "Saknas sluttid gäller tillgängligheten till dagens slut.",
      "mustSupport" : true
    }]
  }
}

```
