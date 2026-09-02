# Veckodag - Inera FHIR CareTeam v0.9

## ValueSet: Veckodag 

 
Tillåtna veckodagar för kontakttid. 

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
  "id" : "weekday-vs",
  "url" : "http://example.org/fhir/ValueSet/veckodag",
  "version" : "0.9",
  "name" : "WeekdayVS",
  "title" : "Veckodag",
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
  "description" : "Tillåtna veckodagar för kontakttid.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/days-of-week"
    }]
  }
}

```
