# Mappning mot GetCareManagers - Inera FHIR CareTeam v0.9

## Mappning mot GetCareManagers

Denna sida beskriver hur tjänstekontraktet **GetCareManagers** motsvaras av FHIR-profilerna i denna IG. Sidan är avsedd för producenter och konsumenter som i dag använder tjänstekontraktet och behöver förstå var samma information finns i FHIR.

Mappningen utgår från tjänstekontraktet i den version som justerats efter avstämning med tjänstekontraktets förvaltning. Mappningen mot informationsmodellen beskrivs på sidan [Mappning mot informationsmodellen](mappings.md).

### Läsanvisning

Varje tabell visar ett element i tjänstekontraktet, dess motsvarighet i FHIR och om motsvarigheten är fullständig.

| | |
| :--- | :--- |
| OK | Motsvarighet finns, eller elementet utgår ur tjänstekontraktet. |
| Avvikelse | Motsvarighet finns men avviker, till exempel i struktur eller kardinalitet. |
| Avgränsning | Hanteras inte i denna version. Se avsnittet Avgränsningar nedan. |

Sökvägar i tjänstekontraktet anges relativt svarets eller begärans rot. `*` står för samtliga tre organisationselement (`managingCareGiver`, `managingCareUnit` och `careProvidingCareUnit`).

### Övergripande skillnader

**En resurs per fast kontakt.** Varje `careManager` i svaret motsvaras av en instans av profilen [Fast kontakt](StructureDefinition-riv-care-manager-careteam.md). Ett sökresultat (`Bundle`) innehåller därför en resurs per fast kontakt.

**Fast kontakt och team skiljs åt med kategori.** Båda profilerna bygger på `CareTeam`. `CareTeam.category` anger om resursen är en fast kontakt eller ett team. Kategorin saknar motsvarighet i tjänstekontraktet.

**Personal och organisation är egna resurser.** Information om medarbetare och organisation ligger i tjänstekontraktet direkt under `careManager`. I FHIR refererar Fast kontakt till en `PractitionerRole`, som i sin tur refererar till `Practitioner` (personen) och `Organization` (enheten).

### Begäran

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `patientId` | 1..1 | Sökning på`CareTeam`med`subject` | Avgränsning | Sökparametrar beskrivs i en senare version. Kräver kedjad sökning (`subject:Patient.identifier`) eller uppslag av Patient följt av sökning med`subject=Patient/{id}`. |
| `patientId.root` | 1..1 | `Patient.identifier.system` | OK | Personnummer, samordningsnummer eller nationellt reservnummer, uttryckt som`urn:oid:`. |
| `patientId.extension` | 1..1 | `Patient.identifier.value` | OK | 12 tecken utan avskiljare. |
| `careGiverId` | 0..1 | Ingen standardparameter | Avgränsning | Sökparametrar beskrivs i en senare version. |
| `careUnitId` | 0..1 | Ingen standardparameter | Avgränsning | Som`careGiverId`. |
| `careManagerType` | 0..1 | Ingen standardparameter | Avgränsning | `CareTeam`saknar sökparameter för`participant.role`. |
| `careProcessId` | 0..1 | Ingen motsvarighet | Avgränsning | Hälsoärende ingår inte i denna version. |
| – | – | Sökning på`category` | OK | Behövs i FHIR för att skilja fasta kontakter från team. Saknas i tjänstekontraktet. |

### Svar – fast kontakt

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `careManager` | 0..* | En instans av Fast kontakt | 0..* | OK | En resurs per fast kontakt. |
| `careManager.code` | 1..1 | `CareTeam.participant.role` | 1..1 | OK | Kodverket Typ av fast kontakt. FHIR tillåter även typ i klartext när koden saknas. |
| `careManager.period` | 0..1 | `CareTeam.period` | 0..1 | OK |   |
| `careManager.period.start` | – | `CareTeam.period.start` | 0..1 | OK | Startdatum finns inte alltid i källsystemen. |
| `careManager.period.end` | – | `CareTeam.period.end` | 0..1 | OK |   |
| `careManager.externalNotes` | 0..1 | `CareTeam.note` | 0..* | OK | Kommentar som får visas för invånaren. |
| `careManager.internalNotes` | – | – | – | OK | Utgår ur tjänstekontraktet. Interna kommentarer förmedlas inte. |
| `careManager.contact` | 0..* | `CareTeam.telecom` | 0..* | OK | Kontaktvägar. Adress hör till organisationen, se avsnittet Kontaktväg. |
| `careManager.careTeam` | 0..1 | `CareTeam.participant.extension[contactViaTeam]` | 0..1 | OK | Referens till ett[Team](StructureDefinition-riv-managing-team-careteam.md)som den fasta kontakten nås via. Används när kontaktvägen inte kan anges direkt på den fasta kontakten. |

### Svar – medarbetare

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `careManager.practitioner` | 1..1 | `CareTeam.participant.member`→`PractitionerRole.practitioner` | 1..1 | OK |   |
| `practitioner.id` | 1..1 | `Practitioner.identifier` | 0..* | OK | HSA-id (`urn:oid:1.2.752.129.2.1.4.1`) i första hand, annars personnummer. Producenten ansvarar för hantering av skyddade personuppgifter. |
| `practitioner.name` | 0..1 | `Practitioner.name.text` | 0..* | OK | Sträng i tjänstekontraktet,`HumanName`i FHIR. |
| Befattning på`careManager` | 0..1 | `PractitionerRole.code` | 0..* | OK | Befattning enligt KV Befattning (`urn:oid:1.2.752.129.2.2.1.4`). Befattningen har flyttats i tjänstekontraktet från medarbetaren till rollen, i linje med HSA. |

### Svar – organisation

`PractitionerRole.organization` refererar till den mest specifika organisation som finns, i ordningen vårdutförande enhet, vård- eller omsorgsenhet och vård- eller omsorgsgivare. Överordnade organisationer nås via `Organization.partOf`.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `careManager.careProvidingCareUnit` | 0..1 | `PractitionerRole.organization` | 0..1 | OK | Vårdutförande enhet. |
| `careManager.managingCareUnit` | 0..1 | `PractitionerRole.organization`, eller via`Organization.partOf` | – | OK | Vård- eller omsorgsenhet. Refereras direkt när vårdutförande enhet saknas. |
| `careManager.managingCareGiver` | 1..1 | Via`Organization.partOf` | – | OK | Vård- eller omsorgsgivare. Refereras direkt när ingen underliggande enhet finns. |
| `*.hsaId` | 1..1 | `Organization.identifier` | 0..* | OK | `system`=`urn:oid:1.2.752.129.2.1.4.1`. |
| `*.name` | 0..1 | `Organization.name` | 0..1 | OK |   |
| `*.contact` | 0..* | `Organization.contact` | 0..* | OK | `ExtendedContactDetail`rymmer både kontaktvägar och adress. |

### Svar – team

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `careTeam.id` | 1..1 | `CareTeam.identifier` | 0..* | Avvikelse | Frivillig i profilen enligt designbeslut. |
| `careTeam.name` | 1..1 | `CareTeam.name` | 0..1 | Avvikelse | Frivillig i profilen enligt designbeslut. |
| `careTeam.externalNotes` | 0..1 | `CareTeam.note` | 0..* | OK | Kommentar som får visas för invånaren. |
| `careTeam.internalNotes` | – | – | – | OK | Utgår ur tjänstekontraktet. Interna kommentarer förmedlas inte. |
| `careTeam.contact` | 0..* | `CareTeam.telecom` | 0..* | OK | Kontaktvägar. |

### Kontaktväg

Kontaktvägar kan anges för den fasta kontakten, teamet och organisationerna. Adress hör bara till organisationerna.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `contact.telecom` | 0..* | `CareTeam.telecom`eller`Organization.contact.telecom` | 0..* | OK |   |
| `telecom.system` | 1..1 | `ContactPoint.system` | 0..1 | OK | Samma värden: phone, fax, email, pager, url, sms, other. |
| `telecom.value` | 0..1 | `ContactPoint.value` | 0..1 | OK |   |
| `telecom.period` | 0..1 | `ContactPoint.extension[availability]` | 0..1 | OK | Kontakttider uttrycks med extensionen[Tillgänglighet för kontaktväg](StructureDefinition-contact-point-availability.md). Se avsnittet Tillgänglighet. |
| `*.contact.address` | 0..1 | `Organization.contact.address` | 0..1 | OK | Adress utgår för fast kontakt och team i tjänstekontraktet. |
| `address.type` | 0..1 | `Organization.contact.address.type` | 0..1 | OK | postal, physical, both. |
| `address.line` | 0..* | `Organization.contact.address.line` | 0..* | OK |   |
| `address.city` | 0..1 | `Organization.contact.address.city` | 0..1 | OK |   |
| `address.postalCode` | 0..1 | `Organization.contact.address.postalCode` | 0..1 | OK |   |
| `address.period` | – | – | – | OK | Utgår ur tjänstekontraktet. Adressen har ingen kontakttid. |

### Tillgänglighet

`HoursOfServiceType` i tjänstekontraktet motsvaras av `Availability` i extensionen [Tillgänglighet för kontaktväg](StructureDefinition-contact-point-availability.md). Varje förekomst av `hoursOfService` blir en `availableTime`.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `hoursOfService.weekDay` | 0..* | `availableTime.daysOfWeek` | 0..* | OK | `Monday`→`mon`,`Tuesday`→`tue`osv. Saknas veckodag gäller tiderna alla dagar. |
| `hoursOfService.time.start` | 0..1 | `availableTime.availableStartTime` | 0..1 | OK | `080000`→`08:00:00`. Saknas starttid gäller tillgängligheten från dagens början. |
| `hoursOfService.time.end` | 0..1 | `availableTime.availableEndTime` | 0..1 | OK | Saknas sluttid gäller tillgängligheten till dagens slut. |
| `hoursOfService.datePeriod` | 0..1 | `availableTime.extension[period].valuePeriod` | 0..1 | OK | Extensionen[Period för tillgänglig tid](StructureDefinition-available-time-period.md). Datumprecision. |
| `hoursOfService.month` | – | – | – | OK | Utgår ur tjänstekontraktet. |

**Tolkningsregler**

* `availableTime.allDay` används inte. Hela dagen uttrycks genom att starttid och sluttid utelämnas.
* Om kontaktvägen alltid är tillgänglig utelämnas extensionen.
* Tider med angiven period har företräde framför tider utan period under den perioden.
* Tider med angivna perioder får inte överlappa varandra.

Se exemplet [Fast kontakt med typ i klartext](CareTeam-ExampleCareManagerAnnanFastKontakt.md) för ordinarie tider kombinerade med sommartider.

### Header och spärrinformation

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `careManagerHeader.sourceSystemId` | 1..1 | `CareTeam.meta.source` | Avgränsning |   |
| `accessControlHeader.accountableHealthcareProviderId` | 1..1 | – | Avgränsning | Personuppgiftsansvarig vårdgivare. |
| `accessControlHeader.accountableCareUnitId` | 1..1 | – | Avgränsning | Personuppgiftsansvarig vårdenhet. |
| `accessControlHeader.patientId` | 1..1 | `CareTeam.subject` | OK | Redundant med`subject`. |
| `accessControlHeader.careProcessId` | 0..1 | – | Avgränsning | Hälsoärende ingår inte i denna version. |
| `accessControlHeader.blockComparisonTime` | 1..1 | – | Avgränsning | Dokumentationstidpunkt för spärrkontroll. |

### Affärsregler

Regler som inte kan uttryckas i profilerna beskrivs på sidan [Roller och ansvar](roles-and-responsibilities.md). Följande motsvarar regler i tjänstekontraktet:

| | |
| :--- | :--- |
| `rule001`: högst en fast läkarkontakt per patient | Gäller över flera resurser och kan inte uttryckas som invariant i profilen. Producenten ansvarar för att regeln följs. |
| Kontaktväg bör förmedlas på minst en nivå | Gäller oförändrat. Kontaktvägen bör dessutom anges direkt på den fasta kontakten. |
| Sammanställt svar för sammanlänkade patientidentiteter | Gäller oförändrat. |

### Avgränsningar

Följande hanteras inte i denna version av IG:n:

* **Sökparametrar.** Sökning på patient, vårdgivare, vårdenhet och typ av fast kontakt beskrivs i en senare version, tillsammans med övriga interaktioner.
* **Header- och spärrinformation.** Hur personuppgiftsansvar och spärrkontroll uttrycks i FHIR är en gemensam fråga för samverkansinfrastrukturen och hanteras inte i denna IG.
* **Hälsoärende.** Filtrering på och koppling till hälsoärende ingår inte.

