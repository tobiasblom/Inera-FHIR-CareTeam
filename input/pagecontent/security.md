Säkerhets- och behörighetsförutsättningar för informationsutbytet är inte fastställda i denna version av IG:n. Ineras generella krav finns på [FHIR på Inera](https://fhir.inera.se/).

---

### Header- och spärrinformation

Tjänstekontraktet GetCareManagers förmedlar information för åtkomstkontroll i en header till varje fast kontakt. Hur motsvarande information uttrycks i FHIR är en gemensam fråga för samverkansinfrastrukturen och hanteras inte i denna IG.

| Element i tjänstekontraktet | Innehåll |
|---|---|
| `careManagerHeader.sourceSystemId` | Källsystem som informationen kommer från. |
| `accessControlHeader.accountableHealthcareProviderId` | Personuppgiftsansvarig vårdgivare. |
| `accessControlHeader.accountableCareUnitId` | Personuppgiftsansvarig vårdenhet. |
| `accessControlHeader.blockComparisonTime` | Dokumentationstidpunkt för spärrkontroll. |
| `accessControlHeader.careProcessId` | Hälsoärende. Realiseras inte i denna version. |

`accessControlHeader.patientId` motsvaras av `CareTeam.subject` och behöver inte förmedlas separat.

---

### Producentens ansvar

Oavsett hur åtkomstkontrollen utformas gäller följande för producenter:

- **Kommentarer.** Endast kommentarer som får visas för invånaren ska anges i `note`. Interna kommentarer som bara är avsedda för vård- och omsorgspersonal förmedlas inte.
- **Skyddade personuppgifter.** Producenten ansvarar för att uppgifter om personal med skyddade personuppgifter inte förmedlas på ett sätt som röjer dem, till exempel i `Practitioner.identifier` och `Practitioner.name`.

Se även [Mappning från GetCareManagers](mapping-getcaremanagers.html).