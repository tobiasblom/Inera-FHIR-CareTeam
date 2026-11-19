Denna sida beskriver hur informationsunderlaget för **Fasta kontakter** har realiserats med HL7 FHIR.

Mappningarna syftar till att skapa spårbarhet mellan den informatiska modellen och de FHIR-profiler som används i informationsutbytet. De visar vilket FHIR-element som bär respektive informationsmängd och dokumenterar designval där FHIR-realiseringen inte direkt motsvarar strukturen i informationsmodellen.

### Omfattade delar

Denna IG realiserar de delar av informationsmodellen som behövs för att tillhandahålla information om en persons fasta kontakter, inklusive:

- den person som den fasta kontakten avser
- typ av fast kontakt
- den personal som är utsedd till fast kontakt, och personalens befattning
- giltighetstid för den fasta kontakten
- kontaktvägar och kontakttider
- team som den fasta kontakten tillhör eller kan nås genom
- vård- och omsorgsgivare och de enheter där uppdraget som fast kontakt finns, med besöksadress

Den centrala informationsmängden **Fast kontakt** realiseras genom profilen [Fast kontakt](StructureDefinition-riv-care-manager-careteam.html) (`RIVCareManager`).

Information om ett team realiseras genom profilen [Team](StructureDefinition-riv-managing-team-careteam.html) (`RIVManagingTeam`).

Information om personal och organisationer realiseras genom referenser till FHIR-resurserna `PractitionerRole`, `Practitioner` och `Organization`. Dessa resurser är inte profilerade i denna version.

### Avvikelser och designbeslut

#### Fast kontakt representeras med CareTeam

Informationsmodellen beskriver **Fast kontakt** som en relation mellan en invånare och en namngiven vård- eller omsorgspersonal med samordnande funktion.

I denna IG realiseras relationen med FHIR-resursen `CareTeam`. Resursen har valts eftersom den kan uttrycka både invånaren (`CareTeam.subject`) och personalens roll i relationen (`CareTeam.participant.role`). `PractitionerRole`, som annars ligger nära begreppet, beskriver personalens roll i en organisation men saknar koppling till en invånare.

En fast kontakt är alltså inte ett team i egentlig mening. Profilen `RIVCareManager` begränsar resursen så att den representerar en fast kontakt och inte ett generellt vård- eller omsorgsteam. Varje resurs beskriver en fast kontakt. En invånare med flera fasta kontakter har därför flera resurser.

`CareTeam.category` är fixerad till kategorin `fast-kontakt`. Typen av fast kontakt, exempelvis fast vårdkontakt eller fast omsorgskontakt, uttrycks separat med `CareTeam.participant.role`.

#### Typ av fast kontakt

Informationsmodellen anger att andra typer av fasta kontakter än de som finns i kodverket kan anges som fritext. `CareTeam.participant.role` har därför en bindning av styrkan extensible till kodverket Typ av fast kontakt, och en invariant kräver att typen anges med kod, text eller båda. Koder från andra kodverk tillåts inte.

#### Den fasta kontakten representeras genom PractitionerRole

Den namngivna personal som är fast kontakt representeras genom `CareTeam.participant.member`, som refererar till `PractitionerRole`.

Detta gör det möjligt att skilja mellan personen och den roll eller organisatoriska kontext som personen verkar inom.

Personens namn och identifierare representeras genom den `Practitioner` som refereras från `PractitionerRole.practitioner`.

#### Befattning uttrycks på PractitionerRole

Befattning enligt KV Befattning uttrycks på `PractitionerRole.code` och inte på `Practitioner`. Befattning är knuten till personalens uppdrag i en organisation, vilket också är hur befattning hanteras i HSA. Tjänstekontraktet GetCareManagers har justerats på samma sätt. Ett legitimerat yrke kan vid behov uttryckas på `Practitioner.qualification`.

#### Organisationer

Informationsmodellen beskriver flera organisationer kopplade till den fasta kontakten: vårdande enhet, vårdenhet och vårdgivare inom hälso- och sjukvård, samt omsorgsenhet och omsorgsgivare inom omsorg. Samtliga realiseras med `Organization`.

`PractitionerRole.organization` refererar till den mest specifika organisation där uppdraget som fast kontakt finns, i ordningen vårdande enhet, vårdenhet eller omsorgsenhet, och vårdgivare eller omsorgsgivare. Överordnade organisationer uttrycks med `Organization.partOf`. Vårdgivaren eller omsorgsgivaren nås därmed alltid genom att följa `partOf` uppåt.

#### Startdatum för fast kontakt

Informationsmodellen anger `Fast kontakt.startdatum` som obligatoriskt. I källsystemen finns dock inte alltid information om när den fasta kontakten började gälla.

`CareTeam.period.start` har därför kardinaliteten `0..1` i `RIVCareManager`. Tjänstekontraktet GetCareManagers har justerats på samma sätt.

En producent SKA tillhandahålla startdatum när uppgiften finns tillgänglig, men avsaknad av startdatum ska inte hindra att information om den fasta kontakten kan tillhandahållas.

#### Team och kontakt via team

Informationsmodellen beskriver team som det team som den fasta kontakten tillhör.

Kontaktvägen BÖR anges direkt på den fasta kontakten (`CareTeam.telecom`), även när den går till ett team, till exempel ett gemensamt telefonnummer. Bara när det inte är möjligt anges kontaktvägen på teamet, och den fasta kontakten kopplas till teamet med extensionen [Kontakt via team](StructureDefinition-contact-via-team.html) (`contactViaTeam`) på `CareTeam.participant`. Extensionen refererar till ett `RIVManagingTeam`, och kontaktuppgifterna hämtas då från teamets `telecom`.

#### Team representeras som en separat CareTeam

Informationsmodellens `Team` representeras med en separat `CareTeam`-resurs genom profilen `RIVManagingTeam`.

För att skilja denna resurs från `RIVCareManager` är `CareTeam.category` fixerad till kategorin `team`.

Teamet kan vara kopplat till en specifik invånare genom `CareTeam.subject`, men kopplingen är valfri eftersom ett team även kan existera oberoende av en viss invånare.

Deltagare i teamet kan anges med `CareTeam.participant.member`. En deltagare kan representeras med antingen `PractitionerRole` eller `Practitioner`.

#### Kontaktväg

Informationsmodellens `Kontaktväg` realiseras med `CareTeam.telecom` i både `RIVCareManager` och `RIVManagingTeam`, och med `Organization.contact.telecom` för organisationer.

FHIR:s `ContactPoint.system` används för att ange kommunikationskanal, exempelvis `phone`, `email` eller `url`.

Informationsmodellen möjliggör en mer detaljerad indelning av kontaktvägar, exempelvis publikt telefonnummer och direkttelefonnummer. Denna indelning realiseras inte i FHIR-profilerna eftersom skillnaden inte bedömts vara tillräckligt viktig för informationsutbytet för att motivera en egen extension. Olika typer av telefonnummer representeras därför som `phone`.

#### Kontakttid

Kontaktvägens tillgänglighet, exempelvis veckodagar och tider, uttrycks med extensionen [Tillgänglighet för kontaktväg](StructureDefinition-contact-point-availability.html) (`availability`), som har datatypen `Availability`.

HL7:s extension `extended-contact-availability` har samma datatyp men får inte användas på `ContactPoint`, bara på `ExtendedContactDetail`, `ContactDetail` och `Address`. Eftersom `CareTeam.telecom` är av typen `ContactPoint` behövs en egen extension.

För organisationer uttrycks kontakttider med HL7:s extension `extended-contact-availability` på `Organization.contact`.

#### Adress

Adress kopplas till organisationen och inte till den fasta kontakten eller teamet. Informationsmodellens `Besöksadress` för den vårdande enheten realiseras med `Organization.contact.address`. Adressen har ingen kontakttid. Tjänstekontraktet GetCareManagers justeras på samma sätt.

### Syfte med mappningarna

Mappningarna nedan visar hur informationsmodellens element motsvaras av element i FHIR-profilerna.

Mappningarna används för att:

- verifiera att informationsbehovet täcks av profilerna
- skapa spårbarhet mellan informationsmodell och teknisk realisering
- synliggöra avvikelser mellan informationsmodellen och FHIR-realiseringen
- dokumentera designbeslut som inte framgår direkt av profilerna
- stödja implementatörer som behöver förstå var informationen representeras i FHIR

Kardinaliteterna för informationsmodellen och FHIR-profilen redovisas separat när de skiljer sig åt.

### Mappningstabeller

#### Fast kontakt → RIVCareManager

| Modellelement | Kard. IM | FHIR-profilelement | Kard. FHIR | Notering |
|---|---:|---|---:|---|
| Person.person-id | 1 | `CareTeam.subject` | 1..1 | Refererar till `Patient`. Personens identifierare finns på den refererade Patient-resursen i `Patient.identifier`. |
| Fast kontakt.typ | 1 | `CareTeam.participant.role` | 1..1 | Anger vilken typ av fast kontakt relationen avser. Kod från `TypAvFastKontaktVS`, text eller båda. |
| Fast kontakt.kommentar | 0..1 | `CareTeam.note` | 0..* | Kommentar som får visas för invånaren. Interna kommentarer förmedlas inte. FHIR-modellens öppnare kardinalitet har behållits. |
| Fast kontakt.startdatum | 1 | `CareTeam.period.start` | 0..1 | Startdatum finns inte alltid dokumenterat i källsystemen och är därför frivilligt i FHIR-profilen. |
| Fast kontakt.slutdatum | 0..1 | `CareTeam.period.end` | 0..1 | Datum då den fasta kontakten upphör att gälla. |
| Personal | — | `CareTeam.participant.member` | 1..1 | Referens till `PractitionerRole` som representerar den namngivna vård- eller omsorgspersonalen i den aktuella rollen. |
| Team | — | `CareTeam.participant.extension[contactViaTeam]` | 0..1 | Referens till `RIVManagingTeam` när kontaktvägen inte kan anges direkt på den fasta kontakten. |
| Kontaktväg.kontaktvägstyp | 1 | `CareTeam.telecom.system` | 0..1 | Anger kommunikationskanal enligt FHIR `ContactPoint.system`. Informationsmodellens mer detaljerade typer av telefonnummer realiseras inte. |
| Kontaktväg.värde | 0..1 | `CareTeam.telecom.value` | 0..1 | Telefonnummer, e-postadress, URL eller motsvarande. |
| Kontakttid.veckodag | 0..1 | `CareTeam.telecom.extension[availability].valueAvailability.availableTime.daysOfWeek` | 0..* | Flera veckodagar kan anges för samma tider. Saknas veckodag gäller tiderna alla dagar. |
| Kontakttid.starttid | 1 | `CareTeam.telecom.extension[availability].valueAvailability.availableTime.availableStartTime` | 0..1 | Frivillig i FHIR. Saknas starttid gäller tillgängligheten från dagens början. |
| Kontakttid.sluttid | 1 | `CareTeam.telecom.extension[availability].valueAvailability.availableTime.availableEndTime` | 0..1 | Frivillig i FHIR. Saknas sluttid gäller tillgängligheten till dagens slut. |

#### Team → RIVManagingTeam

| Modellelement | Kard. IM | FHIR-profilelement | Kard. FHIR | Notering |
|---|---:|---|---:|---|
| Team.id | 1 | `CareTeam.identifier` | 0..* | Identifierare för teamet. Frivillig i FHIR-profilen enligt designbeslut, eftersom alla källsystem inte har en identifierare för team. |
| Team.namn | 0..1 | `CareTeam.name` | 0..1 | Teamets namn. |
| Team.kommentar | 0..1 | `CareTeam.note` | 0..* | Kommentar som får visas för invånaren. Interna kommentarer förmedlas inte. FHIR-modellens öppnare kardinalitet har behållits. |
| Person.person-id | 1 | `CareTeam.subject` | 0..1 | Refererar till `Patient` när teamet är kopplat till en specifik invånare. Personens identifierare finns i `Patient.identifier`. |
| Personal | — | `CareTeam.participant.member` | 0..1 per deltagare | En deltagare representeras med `PractitionerRole` eller `Practitioner`. `CareTeam.participant` kan upprepas för flera deltagare. |
| Vårdande enhet / Omsorgsenhet | — | `CareTeam.managingOrganization` | 0..* | Den enhet som teamet tillhör. |
| Kontaktväg.kontaktvägstyp | 1 | `CareTeam.telecom.system` | 0..1 | Anger kommunikationskanal. Informationsmodellens mer detaljerade typer av telefonnummer realiseras inte. |
| Kontaktväg.värde | 0..1 | `CareTeam.telecom.value` | 0..1 | Telefonnummer, e-postadress, URL eller motsvarande. |
| Kontakttid.veckodag | 0..1 | `CareTeam.telecom.extension[availability].valueAvailability.availableTime.daysOfWeek` | 0..* | Flera veckodagar kan anges för samma tider. Saknas veckodag gäller tiderna alla dagar. |
| Kontakttid.starttid | 1 | `CareTeam.telecom.extension[availability].valueAvailability.availableTime.availableStartTime` | 0..1 | Frivillig i FHIR. Saknas starttid gäller tillgängligheten från dagens början. |
| Kontakttid.sluttid | 1 | `CareTeam.telecom.extension[availability].valueAvailability.availableTime.availableEndTime` | 0..1 | Frivillig i FHIR. Saknas sluttid gäller tillgängligheten till dagens slut. |

Kardinaliteter markerade med `—` preciseras av respektive refererad profil eller extension.

#### Personal → PractitionerRole och Practitioner

`PractitionerRole` och `Practitioner` är inte profilerade i denna version. Kardinaliteterna i FHIR är basresursens.

| Modellelement | Kard. IM | FHIR-element | Kard. FHIR | Notering |
|---|---:|---|---:|---|
| Personal.id | 1 | `Practitioner.identifier` | 0..* | HSA-id (`urn:oid:1.2.752.129.2.1.4.1`) för hälso- och sjukvårdspersonal. För omsorgspersonal kan annan identifierare användas. |
| Personal.namn | 1 | `Practitioner.name` | 0..* | Fullständigt namn i `HumanName.text`, eller uppdelat i `given` och `family` om källsystemet har namnet uppdelat. |
| Personal.befattning | 0..1 | `PractitionerRole.code` | 0..* | Kod enligt KV Befattning (`urn:oid:1.2.752.129.2.2.1.4`). |

`RIVManagingTeam` tillåter även en direkt referens till `Practitioner` för en teamdeltagare.

#### Organisationer → Organization

`Organization` är inte profilerad i denna version. Kardinaliteterna i FHIR är basresursens.

| Modellelement | Kard. IM | FHIR-element | Kard. FHIR | Notering |
|---|---:|---|---:|---|
| Vårdande enhet | — | `PractitionerRole.organization` → `Organization` | 0..1 | Den mest specifika organisationen för uppdraget som fast kontakt. |
| Vårdenhet, Vårdgivare | — | `Organization.partOf` | 0..1 | Överordnade organisationer nås via `partOf`. |
| Omsorgsenhet, Omsorgsgivare | — | `PractitionerRole.organization` respektive `Organization.partOf` | 0..1 | Motsvarande struktur inom omsorg. |
| *.id | 1 / 0..1 | `Organization.identifier` | 0..* | HSA-id (`urn:oid:1.2.752.129.2.1.4.1`). Valfri för omsorgsenhet och omsorgsgivare i informationsmodellen. |
| *.namn | 1 | `Organization.name` | 0..1 | |
| Omsorgsenhet.ort | 0..1 | `Organization.contact.address.city` | 0..1 | |
| Besöksadress.adress | 1 | `Organization.contact.address.line` | 0..* | `Address.type` = `physical`. |
| Besöksadress.ort | 1 | `Organization.contact.address.city` | 0..1 | |
| Kontaktväg | — | `Organization.contact.telecom` | 0..* | Kontakttider uttrycks med HL7:s extension `extended-contact-availability` på `Organization.contact`. |

### FHIR-element utan direkt motsvarighet i informationsmodellen

Vissa element behövs i FHIR-realiseringen men har ingen direkt motsvarighet som attribut i informationsmodellen.

| FHIR-element | Användning |
|---|---|
| `CareTeam.category` | Skiljer en `RIVCareManager` från ett `RIVManagingTeam` genom de fixerade kategorierna `fast-kontakt` respektive `team`. |
| `CareTeam.status` | Användningen är inte fastställd i denna version. Giltighetstiden uttrycks med `period`. |
| `RIVCareManager.identifier` | Identifierare som källsystemet använder för relationen fast kontakt. |
| `RIVManagingTeam.period` | Kan beskriva under vilken period teamet är relevant i det aktuella sammanhanget. |
| `RIVManagingTeam.participant` | Möjliggör representation av de aktörer som ingår i teamet. |
| `availableTime.extension[period]` | Anger under vilken datumperiod veckodagar och tider gäller, till exempel sommartider. Perioden finns inte i informationsmodellen men behövs eftersom källsystemen har tider som gäller under begränsade perioder. Tider med period har företräde framför tider utan period. |

### Omappade element

Följande delar av informationsmodellen realiseras inte i nuvarande version av IG:n.

| Modellelement | Orsak till att det inte mappas |
|---|---|
| Hälsoärende | Det finns i nuläget inte verksamhetsmässigt stöd för att strukturerat ange vilket hälsoärende den fasta kontakten hör till. |
| Ändringsorsak | Det finns i nuläget inte verksamhetsmässigt stöd för att strukturerat dokumentera orsaken till en ändring av den fasta kontakten. |
| Version | Det finns i nuläget inte verksamhetsmässigt stöd för att strukturerat dokumentera versionen av den fasta kontakten. |
| Person, utöver person-id | `Patient` är inte profilerad. Namn och kön hämtas från andra källor. |
| Person.sekretessmarkering, Person.skyddad folkbokföring | Hanteras inom frågan om åtkomst och spärr, som inte ingår i denna version. |
| Adress (personens kontaktadress) | Ingår inte i informationsutbytet om fasta kontakter. |
| Listning | Tillhör domänen Listning och realiseras inte i denna IG. |
