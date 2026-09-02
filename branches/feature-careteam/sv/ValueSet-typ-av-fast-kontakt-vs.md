# Typ av fast kontakt - Inera FHIR CareTeam v0.9

## ValueSet: Typ av fast kontakt 

 
Tillåtna typer av fast kontakt 

 **References** 

* [Fast kontakt](StructureDefinition-RIVCareManager-careteam.md)

### Logisk definition (CLD)

 

### Expansion

-------

 [Beskrivning av ovanstående tabell(er)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "typ-av-fast-kontakt-vs",
  "url" : "https://fhir.inera.se/ig/careteam/ValueSet/typ-av-fast-kontakt-vs",
  "version" : "0.9",
  "name" : "TypAvFastKontaktVS",
  "title" : "Typ av fast kontakt",
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
  "description" : "Tillåtna typer av fast kontakt",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_typ_av_fast_kontakt"
    }]
  }
}

```
