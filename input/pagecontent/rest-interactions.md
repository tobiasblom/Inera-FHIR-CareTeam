REST-interaktioner och sökparametrar för denna IG tas fram tillsammans med lösningsarkitekturen och är inte fastställda i denna version.

---

### Vägledande sökning

En konsument som vill hämta en invånares fasta kontakter söker på `CareTeam` med invånaren och kategorin fast kontakt. Med standardparametrar i FHIR kan det uttryckas på två sätt:

- uppslag av `Patient` följt av sökning med referens:  
  `GET [base]/CareTeam?subject=Patient/[id]&category=https://fhir.inera.se/ig/careteam/CodeSystem/typ-av-careteam-cs|fast-kontakt`
- kedjad sökning på personnummer:  
  `GET [base]/CareTeam?subject:Patient.identifier=urn:oid:1.2.752.129.2.1.3.1|[personnummer]&category=https://fhir.inera.se/ig/careteam/CodeSystem/typ-av-careteam-cs|fast-kontakt`

Kategorin behövs för att skilja fasta kontakter från team, eftersom båda profilerna bygger på `CareTeam`.

---

### Avgränsning i denna version

Tjänstekontraktet GetCareManagers har sökvillkor som saknar standardparameter för `CareTeam` i FHIR. De beskrivs inte i denna version.

| Sökvillkor i tjänstekontraktet | Anledning |
|---|---|
| `careGiverId` | Kräver kedjad sökning via `PractitionerRole.organization` eller en egen `SearchParameter`. |
| `careUnitId` | Som `careGiverId`. |
| `careManagerType` | `CareTeam` saknar sökparameter för `participant.role`. Kräver en egen `SearchParameter`. |
| `careProcessId` | Hälsoärende realiseras inte i denna version. |

Se även [Mappning från GetCareManagers](mapping-getcaremanagers.html).