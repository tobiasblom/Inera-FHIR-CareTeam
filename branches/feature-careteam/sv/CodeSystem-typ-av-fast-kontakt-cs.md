# Typ av fast kontakt - Inera FHIR CareTeam v0.9

## CodeSystem: Typ av fast kontakt 

 
Typ av fast kontakt, dvs en specifik, namngiven person inom vården eller socialtjänsten som har ett ansvar för att ge trygghet, kontinuitet och samordning för en patient eller enskild person. Begreppet är framför allt reglerat i lag och syftar till att patienten/den enskilde vet vem hen ska vända sig till, samt att vården och insatserna blir mer samordnade och individuella. 

Detta kodsystem refereras i definitionen av följande värdemängder:

* [Typ av fast kontakt](ValueSet-typ-av-fast-kontakt-vs.md)

-------

 [Beskrivning av ovanstående tabell(er)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "typ-av-fast-kontakt-cs",
  "url" : "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_typ_av_fast_kontakt",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.752.129.5.1.69"
  }],
  "version" : "0.9",
  "name" : "TypAvFastKontaktCS",
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
  "description" : "Typ av fast kontakt, dvs en specifik, namngiven person inom vården eller socialtjänsten som har ett ansvar för att ge trygghet, kontinuitet och samordning för en patient eller enskild person. Begreppet är framför allt reglerat i lag och syftar till att patienten/den enskilde vet vem hen ska vända sig till, samt att vården och insatserna blir mer samordnade och individuella.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "1",
    "display" : "fast vårdkontakt",
    "definition" : "namngiven personal inom hälso- och sjukvård som ska bistå och stödja patienten genom att samordna vårdens insatser och övriga kontakter"
  },
  {
    "code" : "2",
    "display" : "fast läkarkontakt i primärvård",
    "definition" : "namngiven läkare på den hälso- eller vårdcentral där patienten är listad, som ansvarar för och samordnar patientens medicinska vård"
  },
  {
    "code" : "3",
    "display" : "fast omsorgskontakt i hemtjänsten",
    "definition" : "namngiven personal inom hemtjänstens verkställande verksamhet som ska bistå och stödja omsorgstagaren och hens anhöriga genom att samordna insatser och övriga kontakter"
  },
  {
    "code" : "4",
    "display" : "fast vårdkontakt med övergripande samordningsansvar",
    "definition" : "en fast vårdkontakt med övergripande ansvar för samordning, i de fall en patient har flera fasta vårdkontakter"
  }]
}

```
