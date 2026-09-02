# Typ av CareTeam - Inera FHIR CareTeam v0.9

## CodeSystem: Typ av CareTeam 

 
Kodverk som anger vilken typ av CareTeam som avses, till exempel fast kontakt eller vårdteam. 

Detta kodsystem refereras i definitionen av följande värdemängder:

* [Typ av CareTeam](ValueSet-typ-av-careteam-vs.md)

-------

 [Beskrivning av ovanstående tabell(er)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "typ-av-careteam-cs",
  "url" : "https://fhir.inera.se/ig/careteam/CodeSystem/typ-av-careteam-cs",
  "version" : "0.9",
  "name" : "TypAvCareTeamCS",
  "title" : "Typ av CareTeam",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T08:14:00+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk som anger vilken typ av CareTeam som avses, till exempel fast kontakt eller vårdteam.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "fast-kontakt",
    "display" : "Fast kontakt",
    "definition" : "CareTeam vars syfte är att beskriva fast kontakt för en vård- eller omsorgstagare."
  },
  {
    "code" : "team",
    "display" : "Team",
    "definition" : "CareTeam som beskriver ett vård- eller omsorgsteam."
  }]
}

```
