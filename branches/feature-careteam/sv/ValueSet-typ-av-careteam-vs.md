# Typ av CareTeam - Inera FHIR CareTeam v0.9

## ValueSet: Typ av CareTeam 

 
ValueSet som innehåller tillåtna typer av CareTeam. 

 **References** 

Denna värdemängd används inte här; den kan användas på andra ställen (t.ex. specifikationer och/eller implementationer som använder detta innehåll)

### Logisk definition (CLD)

 

### Expansion

-------

 [Beskrivning av ovanstående tabell(er)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "typ-av-careteam-vs",
  "url" : "https://fhir.inera.se/ig/careteam/ValueSet/typ-av-careteam-vs",
  "version" : "0.9",
  "name" : "TypAvCareTeamVS",
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
  "description" : "ValueSet som innehåller tillåtna typer av CareTeam.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/ig/careteam/CodeSystem/typ-av-careteam-cs"
    }]
  }
}

```
