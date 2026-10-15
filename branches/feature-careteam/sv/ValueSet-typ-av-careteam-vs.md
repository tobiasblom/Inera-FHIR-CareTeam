# Urval typ av CareTeam - Inera FHIR CareTeam v0.9

## ValueSet: Urval typ av CareTeam 

 **References** 

* [Fast kontakt](StructureDefinition-riv-care-manager-careteam.md)
* [Team](StructureDefinition-riv-managing-team-careteam.md)

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
  "title" : "Urval typ av CareTeam",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-15T14:04:45+00:00",
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
