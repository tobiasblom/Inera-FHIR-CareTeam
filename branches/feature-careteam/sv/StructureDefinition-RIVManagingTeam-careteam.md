# Team - Inera FHIR CareTeam v0.9

## Resursprofil: Team 

 
Profil som beskriver ett vård- eller omsorgsteam i svensk vård och omsorg. Ett team kan vara kopplat till en invånare och kan ha egna kontaktuppgifter. Teamet kan också utgöra kontaktväg eller organisatoriskt sammanhang för en fast kontakt. 

**Användningar:**

* Referera till denna Profil: [Kontakt via team](StructureDefinition-riv-contact-via-team-extension.md)
* Exempel för denna Profil: [Norra teamet](CareTeam-ExampleManagingTeam.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.fhir.careteam|current/StructureDefinition/RIVManagingTeam-careteam)

### Formella vyer av profilinnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabell med nyckelelement](#tabs-key) 
*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

#### Terminologibindningar

#### Begränsningar

** Sammanfattning **

Obligatorisk: 2 elements
 Måste stödjas: 14 elements

**Extensions**

Denna struktur refererar till dessa extensions:

* [https://fhir.inera.se/ig/careteam/StructureDefinition/RIVContactPointAvailability](StructureDefinition-RIVContactPointAvailability.md)

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

** Sammanfattning **

Obligatorisk: 2 elements
 Måste stödjas: 14 elements

**Extensions**

Denna struktur refererar till dessa extensions:

* [https://fhir.inera.se/ig/careteam/StructureDefinition/RIVContactPointAvailability](StructureDefinition-RIVContactPointAvailability.md)

 

Andra representationer av profilen: [CSV](../StructureDefinition-RIVManagingTeam-careteam.csv), [Excel](../StructureDefinition-RIVManagingTeam-careteam.xlsx), [Schematron](../StructureDefinition-RIVManagingTeam-careteam.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RIVManagingTeam-careteam",
  "url" : "https://fhir.inera.se/ig/careteam/StructureDefinition/RIVManagingTeam-careteam",
  "version" : "0.9",
  "name" : "RIVManagingTeam",
  "title" : "Team",
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
  "description" : "Profil som beskriver ett vård- eller omsorgsteam i svensk vård och omsorg. Ett team kan vara kopplat till en invånare och kan ha egna kontaktuppgifter. Teamet kan också utgöra kontaktväg eller organisatoriskt sammanhang för en fast kontakt.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "RIVManagingTeam-to-team-im",
    "uri" : "Informationsmodell - Team",
    "name" : "Mappning mellan informationsmodell och Team",
    "comment" : "Mappning mellan informationsmodellen för fasta kontakter och FHIR-profilen RIVManagingTeam."
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
      "id" : "CareTeam.identifier",
      "path" : "CareTeam.identifier",
      "short" : "Identifierare för team",
      "definition" : "Identifierare som kan användas för att identifiera teamet.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVManagingTeam-to-team-im",
        "map" : "Team.id",
        "comment" : "Identifierare för teamet."
      }]
    },
    {
      "id" : "CareTeam.category",
      "path" : "CareTeam.category",
      "short" : "Kategori av CareTeam",
      "definition" : "Anger att resursen avser ett team.",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.inera.se/ig/careteam/CodeSystem/typ-av-careteam-cs",
          "code" : "team"
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
      "id" : "CareTeam.name",
      "path" : "CareTeam.name",
      "short" : "Teamets namn",
      "definition" : "Namn på det vård- eller omsorgsteam som beskrivs.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVManagingTeam-to-team-im",
        "map" : "Team.namn",
        "comment" : "Namn på teamet."
      }]
    },
    {
      "id" : "CareTeam.subject",
      "path" : "CareTeam.subject",
      "short" : "Invånare som teamet gäller för",
      "definition" : "Invånare som teamet gäller för. Kan utelämnas om teamet inte är direkt kopplat till en specifik invånare.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVManagingTeam-to-team-im",
        "map" : "Person.person-id",
        "comment" : "Invånaren som teamet gäller för. Själva person-id:t finns på den refererade Patient-resursen, i Patient.identifier."
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
      "definition" : "Det datum då teamet börjar gälla i det aktuella sammanhanget.",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.period.end",
      "path" : "CareTeam.period.end",
      "short" : "Slutdatum",
      "definition" : "Det datum då teamet upphör att gälla i det aktuella sammanhanget.",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant",
      "path" : "CareTeam.participant",
      "short" : "Deltagare i teamet",
      "definition" : "Aktörer som ingår i eller representerar teamet. Deltagare kan exempelvis vara vård- och omsorgspersonal, roll/funktion eller annan relevant aktör.",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant.member",
      "path" : "CareTeam.participant.member",
      "short" : "Teamdeltagare",
      "definition" : "Aktör som ingår i teamet, exempelvis en person i roll eller en person.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVManagingTeam-to-team-im",
        "map" : "Personal.id",
        "comment" : "Teamdeltagare kan representeras som PractitionerRole eller Practitioner. Personalens identifierare finns på Practitioner.identifier, direkt eller via PractitionerRole.practitioner."
      },
      {
        "identity" : "RIVManagingTeam-to-team-im",
        "map" : "Personal.namn",
        "comment" : "Personalens namn finns på Practitioner.name, direkt eller via PractitionerRole.practitioner."
      },
      {
        "identity" : "RIVManagingTeam-to-team-im",
        "map" : "Personal.befattning",
        "comment" : "Personalens befattning kan uttryckas på PractitionerRole.code när deltagaren representeras via PractitionerRole."
      }]
    },
    {
      "id" : "CareTeam.telecom",
      "path" : "CareTeam.telecom",
      "short" : "Kontaktuppgifter till teamet",
      "definition" : "Kontaktuppgifter som ska användas av invånaren för att nå teamet. Kontaktuppgifterna kan även användas när en fast kontakt nås via detta team.",
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
        "identity" : "RIVManagingTeam-to-team-im",
        "map" : "Kontakttid.veckodag",
        "comment" : "Veckodag då kontaktvägen är tillgänglig."
      }]
    },
    {
      "id" : "CareTeam.telecom.extension:availability.value[x].availableTime.availableStartTime",
      "path" : "CareTeam.telecom.extension.value[x].availableTime.availableStartTime",
      "mapping" : [{
        "identity" : "RIVManagingTeam-to-team-im",
        "map" : "Kontakttid.starttid",
        "comment" : "Tidpunkt då kontakttiden börjar."
      }]
    },
    {
      "id" : "CareTeam.telecom.extension:availability.value[x].availableTime.availableEndTime",
      "path" : "CareTeam.telecom.extension.value[x].availableTime.availableEndTime",
      "mapping" : [{
        "identity" : "RIVManagingTeam-to-team-im",
        "map" : "Kontakttid.sluttid",
        "comment" : "Tidpunkt då kontakttiden slutar."
      }]
    },
    {
      "id" : "CareTeam.telecom.system",
      "path" : "CareTeam.telecom.system",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVManagingTeam-to-team-im",
        "map" : "Kontaktväg.kontaktvägstyp",
        "comment" : "Typ av kontaktväg, exempelvis telefon, e-post eller webbadress."
      }]
    },
    {
      "id" : "CareTeam.telecom.value",
      "path" : "CareTeam.telecom.value",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVManagingTeam-to-team-im",
        "map" : "Kontaktväg.värde",
        "comment" : "Värdet för kontaktvägen, exempelvis telefonnummer, e-postadress eller URL."
      }]
    },
    {
      "id" : "CareTeam.note",
      "path" : "CareTeam.note",
      "short" : "Kommentar",
      "definition" : "Kommentar eller kompletterande information om teamet.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "RIVManagingTeam-to-team-im",
        "map" : "Team.kommentar",
        "comment" : "Kommentar eller kompletterande information om teamet."
      }]
    }]
  }
}

```
