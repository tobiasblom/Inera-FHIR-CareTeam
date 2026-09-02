# Fast kontakt - Inera FHIR CareTeam v0.9

## Resursprofil: Fast kontakt 

 
Profil som beskriver relationen Fast kontakt som kan finnas mellan en invånare och namngiven vård- och omsorgspersonal i svensk vård och omsorg. En fast kontakt är en namngiven vård- eller omsorgspersonal som tilldelats en samordnande roll för en vård- och/eller omsorgstagare i syfte att skapa trygghet och kontinuitet. 

**Användningar:**

* Exempel för denna Profil: [CareTeam/ExampleCareManager](CareTeam-ExampleCareManager.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.fhir.careteam|current/StructureDefinition/RIVCareManager-careteam)

### Formella vyer av profilinnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabell med nyckelelement](#tabs-key) 
*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

#### Terminologibindningar (differential)

#### Terminologibindningar

#### Begränsningar

** Sammanfattning **

Obligatorisk: 6 elements
 Måste stödjas: 14 elements

**Extensions**

Denna struktur refererar till dessa extensions:

* [https://fhir.inera.se/ig/careteam/StructureDefinition/riv-contact-via-team-extension](StructureDefinition-riv-contact-via-team-extension.md)
* [https://fhir.inera.se/ig/careteam/StructureDefinition/RIVContactPointAvailability](StructureDefinition-RIVContactPointAvailability.md)

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

#### Terminologibindningar (differential)

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

** Sammanfattning **

Obligatorisk: 6 elements
 Måste stödjas: 14 elements

**Extensions**

Denna struktur refererar till dessa extensions:

* [https://fhir.inera.se/ig/careteam/StructureDefinition/riv-contact-via-team-extension](StructureDefinition-riv-contact-via-team-extension.md)
* [https://fhir.inera.se/ig/careteam/StructureDefinition/RIVContactPointAvailability](StructureDefinition-RIVContactPointAvailability.md)

 

Andra representationer av profilen: [CSV](../StructureDefinition-RIVCareManager-careteam.csv), [Excel](../StructureDefinition-RIVCareManager-careteam.xlsx), [Schematron](../StructureDefinition-RIVCareManager-careteam.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RIVCareManager-careteam",
  "url" : "https://fhir.inera.se/ig/careteam/StructureDefinition/RIVCareManager-careteam",
  "version" : "0.9",
  "name" : "RIVCareManager",
  "title" : "Fast kontakt",
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
  "description" : "Profil som beskriver relationen Fast kontakt som kan finnas mellan en invånare och namngiven vård- och omsorgspersonal i svensk vård och omsorg. En fast kontakt är en namngiven vård- eller omsorgspersonal som tilldelats en samordnande roll för en vård- och/eller omsorgstagare i syfte att skapa trygghet och kontinuitet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "RIVCareManager-to-fast-kontakt-im",
    "uri" : "Informationsmodell - Fast kontakt",
    "name" : "Mappning mellan informationsmodell och Fast kontakt",
    "comment" : "Mappning mellan informationsmodellen för fasta kontakter och FHIR-profilen RIVCareManager."
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CareTeam",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CareTeam",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CareTeam",
      "path" : "CareTeam"
    },
    {
      "id" : "CareTeam.category",
      "path" : "CareTeam.category",
      "short" : "Kategori av CareTeam",
      "definition" : "Anger att resursen avser en fast kontakt.",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.inera.se/ig/careteam/CodeSystem/typ-av-careteam-cs",
          "code" : "fast-kontakt"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.category.coding",
      "path" : "CareTeam.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "CareTeam.subject",
      "path" : "CareTeam.subject",
      "short" : "Invånare som den fasta kontakten gäller för",
      "definition" : "Invånare som den fasta kontakten gäller för.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVCareManager-to-fast-kontakt-im",
        "map" : "Person.person-id",
        "comment" : "Invånaren som den fasta kontakten gäller för. Själva person-id:t finns på den refererade Patient-resursen, i Patient.identifier."
      }]
    },
    {
      "id" : "CareTeam.period",
      "path" : "CareTeam.period",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.period.start",
      "path" : "CareTeam.period.start",
      "short" : "Startdatum",
      "definition" : "Det datum då den fasta kontakten börjar gälla.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVCareManager-to-fast-kontakt-im",
        "map" : "Fast kontakt.startdatum",
        "comment" : "Datum då den fasta kontakten börjar gälla."
      }]
    },
    {
      "id" : "CareTeam.period.end",
      "path" : "CareTeam.period.end",
      "short" : "Slutdatum",
      "definition" : "Det datum då den fasta kontakten upphör att gälla.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVCareManager-to-fast-kontakt-im",
        "map" : "Fast kontakt.slutdatum",
        "comment" : "Datum då den fasta kontakten upphör att gälla."
      }]
    },
    {
      "id" : "CareTeam.participant",
      "path" : "CareTeam.participant",
      "short" : "Fast kontakt",
      "definition" : "Anger den namngivna vård- eller omsorgspersonal som har rollen som fast kontakt.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant.extension",
      "path" : "CareTeam.participant.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "CareTeam.participant.extension:contactViaTeam",
      "path" : "CareTeam.participant.extension",
      "sliceName" : "contactViaTeam",
      "short" : "Team som den fasta kontakten nås via",
      "definition" : "Anger det team som den fasta kontakten kan nås via när kontaktuppgifter inte finns direkt till den namngivna personen. Kontaktuppgifter kan då hämtas från den refererade teamresursens telecom.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.inera.se/ig/careteam/StructureDefinition/riv-contact-via-team-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant.role",
      "path" : "CareTeam.participant.role",
      "short" : "Typ av fast kontakt",
      "definition" : "Anger vilken typ av fast kontakt relationen avser, exempelvis fast vårdkontakt, fast läkarkontakt eller fast omsorgskontakt. Rollen avser funktion i relation till invånaren, inte yrkestitel eller befattning.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/careteam/ValueSet/typ-av-fast-kontakt-vs"
      },
      "mapping" : [{
        "identity" : "RIVCareManager-to-fast-kontakt-im",
        "map" : "Fast kontakt.typ",
        "comment" : "Typ av fast kontakt enligt kodverk. Mappas till ValueSet TypAvFastKontaktVS."
      }]
    },
    {
      "id" : "CareTeam.participant.member",
      "path" : "CareTeam.participant.member",
      "short" : "Namngiven vård- eller omsorgspersonal",
      "definition" : "Den individ som i rollen som fast kontakt har ett samordnande ansvar för invånaren.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVCareManager-to-fast-kontakt-im",
        "map" : "Personal.id",
        "comment" : "Den namngivna personalen representeras via PractitionerRole. Personalens identifierare finns på den Practitioner-resurs som refereras från PractitionerRole.practitioner."
      },
      {
        "identity" : "RIVCareManager-to-fast-kontakt-im",
        "map" : "Personal.namn",
        "comment" : "Personalens namn finns på den Practitioner-resurs som refereras från PractitionerRole.practitioner."
      },
      {
        "identity" : "RIVCareManager-to-fast-kontakt-im",
        "map" : "Personal.befattning",
        "comment" : "Personalens befattning kan uttryckas på PractitionerRole.code, exempelvis med HSA Innehåll Befattning."
      }]
    },
    {
      "id" : "CareTeam.telecom",
      "path" : "CareTeam.telecom",
      "short" : "Kontaktuppgifter till den fasta kontakten",
      "definition" : "Kontaktuppgifter som ska användas av invånaren för att nå den fasta kontakten när kontaktvägen uttrycks direkt på relationen fast kontakt. Om den fasta kontakten nås via ett team kan teamet anges med participant.extension[contactViaTeam] och kontaktuppgifter uttryckas på den refererade teamresursen.",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.telecom.extension:availability",
      "path" : "CareTeam.telecom.extension",
      "sliceName" : "availability",
      "short" : "Tillgänglighet för kontaktväg",
      "definition" : "Anger under vilka tider och veckodagar kontaktvägen är tillgänglig.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.inera.se/ig/careteam/StructureDefinition/RIVContactPointAvailability"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.telecom.extension:availability.value[x].availableTime.daysOfWeek",
      "path" : "CareTeam.telecom.extension.value[x].availableTime.daysOfWeek",
      "mapping" : [{
        "identity" : "RIVCareManager-to-fast-kontakt-im",
        "map" : "Kontakttid.veckodag",
        "comment" : "Veckodag då kontaktvägen är tillgänglig."
      }]
    },
    {
      "id" : "CareTeam.telecom.extension:availability.value[x].availableTime.availableStartTime",
      "path" : "CareTeam.telecom.extension.value[x].availableTime.availableStartTime",
      "mapping" : [{
        "identity" : "RIVCareManager-to-fast-kontakt-im",
        "map" : "Kontakttid.starttid",
        "comment" : "Tidpunkt då kontakttiden börjar."
      }]
    },
    {
      "id" : "CareTeam.telecom.extension:availability.value[x].availableTime.availableEndTime",
      "path" : "CareTeam.telecom.extension.value[x].availableTime.availableEndTime",
      "mapping" : [{
        "identity" : "RIVCareManager-to-fast-kontakt-im",
        "map" : "Kontakttid.sluttid",
        "comment" : "Tidpunkt då kontakttiden slutar."
      }]
    },
    {
      "id" : "CareTeam.telecom.system",
      "path" : "CareTeam.telecom.system",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVCareManager-to-fast-kontakt-im",
        "map" : "Kontaktväg.kontaktvägstyp",
        "comment" : "Typ av kontaktväg, exempelvis telefon, e-post eller webbadress."
      }]
    },
    {
      "id" : "CareTeam.telecom.value",
      "path" : "CareTeam.telecom.value",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVCareManager-to-fast-kontakt-im",
        "map" : "Kontaktväg.värde",
        "comment" : "Värdet för kontaktvägen, exempelvis telefonnummer, e-postadress eller URL."
      }]
    },
    {
      "id" : "CareTeam.note",
      "path" : "CareTeam.note",
      "short" : "Kommentar",
      "definition" : "Kommentar eller kompletterande information om den fasta kontakten.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVCareManager-to-fast-kontakt-im",
        "map" : "Fast kontakt.kommentar",
        "comment" : "Kommentar eller vägledning i fritext kring den fasta kontakten. Förutsätter att note används i profilen."
      }]
    }]
  }
}

```
