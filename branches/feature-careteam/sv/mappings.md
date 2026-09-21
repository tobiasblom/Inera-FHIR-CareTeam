# Mappning till profiler - Inera FHIR CareTeam v0.9

## Mappning till profiler

# Mappning till profiler

Denna sida beskriver hur informationsunderlaget för **Fasta kontakter** har realiserats med HL7 FHIR.

Mappningarna syftar till att skapa spårbarhet mellan den informatiska modellen och de FHIR-profiler som används i informationsutbytet. De visar vilket FHIR-element som bär respektive informationsmängd och dokumenterar designval där FHIR-realiseringen inte direkt motsvarar strukturen i informationsmodellen.

-------

## Omfattade delar

Denna IG realiserar de delar av informationsmodellen som behövs för att tillhandahålla information om en persons fasta kontakter, inklusive:

* den person som den fasta kontakten avser
* typ av fast kontakt
* den person som är utsedd till fast kontakt
* giltighetstid för den fasta kontakten
* kontaktvägar och kontakttider
* team som den fasta kontakten tillhör eller kan nås genom
* relevanta organisationer och enheter

Den centrala informationsmängden **Fast kontakt** realiseras genom profilen `RIVCareManager`.

Information om ett team realiseras genom profilen `RIVManagingTeam`.

Information om personal och organisatorisk tillhörighet realiseras genom referenser till motsvarande FHIR-resurser, exempelvis `PractitionerRole` och `Organization`.

-------

## Avvikelser och designbeslut

### Fast kontakt representeras med CareTeam

Informationsmodellen beskriver **Fast kontakt** som en relation mellan en invånare och en namngiven vård- eller omsorgspersonal med samordnande funktion.

I denna IG realiseras relationen med FHIR-resursen `CareTeam`. Profilen `RIVCareManager` begränsar resursen så att den representerar en fast kontakt och inte ett generellt vård- eller omsorgsteam.

`CareTeam.category` är därför fixerad till kategorin `fast-kontakt`. Typen av fast kontakt, exempelvis fast vårdkontakt eller fast omsorgskontakt, uttrycks separat med `CareTeam.participant.role`.

### Den fasta kontakten representeras genom PractitionerRole

Den namngivna person som är fast kontakt representeras genom `CareTeam.participant.member`, som refererar till `PractitionerRole`.

Detta gör det möjligt att skilja mellan personen och den roll eller organisatoriska kontext som personen verkar inom.

Personens namn och identifierare representeras genom den `Practitioner` som refereras från `PractitionerRole`, medan exempelvis befattning kan uttryckas på `PractitionerRole.code`.

### Startdatum för fast kontakt

Informationsmodellen anger `Fast kontakt.startdatum` som obligatoriskt. I källsystemen finns dock inte alltid information om när den fasta kontakten började gälla.

`CareTeam.period.start` har därför kardinaliteten `0..1` i `RIVCareManager`.

En producent ska tillhandahålla startdatum när uppgiften finns tillgänglig, men avsaknad av startdatum ska inte hindra att information om den fasta kontakten kan tillhandahållas.

### Kontakt via team

En fast kontakt kan sakna en direkt kontaktväg och i stället nås genom ett team.

Detta realiseras med extensionen `contactViaTeam` på `CareTeam.participant`. Extensionen refererar till ett `RIVManagingTeam`. Kontaktuppgifter för teamet uttrycks då på den refererade teamresursens `telecom`.

### Team representeras som en separat CareTeam

Informationsmodellens `Team` representeras med en separat `CareTeam`-resurs genom profilen `RIVManagingTeam`.

För att skilja denna resurs från `RIVCareManager` är `CareTeam.category` fixerad till kategorin `team`.

Teamet kan vara kopplat till en specifik invånare genom `CareTeam.subject`, men kopplingen är valfri eftersom ett team även kan existera oberoende av en viss invånare.

Deltagare i teamet kan anges med `CareTeam.participant.member`. En deltagare kan representeras med antingen `PractitionerRole` eller `Practitioner`.

### Kontaktväg

Informationsmodellens `Kontaktväg` realiseras med `CareTeam.telecom` i både `RIVCareManager` och `RIVManagingTeam`.

FHIR:s `ContactPoint.system` används för att ange kommunikationskanal, exempelvis `phone`, `email` eller `url`.

Informationsmodellen möjliggör en mer detaljerad indelning av kontaktvägar, exempelvis publikt telefonnummer och direkttelefonnummer. Denna indelning realiseras inte i FHIR-profilerna eftersom skillnaden inte bedömts vara tillräckligt viktig för informationsutbytet för att motivera en egen extension.

Olika typer av telefonnummer representeras därför som `phone`.

Kontaktvägens tillgänglighet, exempelvis veckodagar och tider, uttrycks med extensionen `availability`.

-------

## Syfte med mappningarna

Mappningarna nedan visar hur informationsmodellens element motsvaras av element i FHIR-profilerna.

Mappningarna används för att:

* verifiera att informationsbehovet täcks av profilerna
* skapa spårbarhet mellan informationsmodell och teknisk realisering
* synliggöra avvikelser mellan informationsmodellen och FHIR-realiseringen
* dokumentera designbeslut som inte framgår direkt av profilerna
* stödja implementatörer som behöver förstå var informationen representeras i FHIR

Kardinaliteterna för informationsmodellen och FHIR-profilen redovisas separat när de skiljer sig åt.

-------

## Mappningstabeller

### Fast kontakt → RIVCareManager

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Person.person-id | 1 | `CareTeam.subject` | 1..1 | Refererar till`Patient`. Personens identifierare finns på den refererade Patient-resursen i`Patient.identifier`. |
| Fast kontakt.typ | 1 | `CareTeam.participant.role` | 1..1 | Anger vilken typ av fast kontakt relationen avser. Bundet till`TypAvFastKontaktVS`. |
| Fast kontakt.kommentar | 0..1 | `CareTeam.note` | 0..* | Kompletterande information eller vägledning om den fasta kontakten. FHIR-modellens öppnare kardinalitet har behållits. |
| Fast kontakt.startdatum | 1 | `CareTeam.period.start` | 0..1 | Startdatum finns inte alltid dokumenterat i källsystemen och är därför frivilligt i FHIR-profilen. |
| Fast kontakt.slutdatum | 0..1 | `CareTeam.period.end` | 0..1 | Datum då den fasta kontakten upphör att gälla. |
| Personal | — | `CareTeam.participant.member` | 1..1 | Referens till`PractitionerRole`som representerar den namngivna vård- eller omsorgspersonalen i den aktuella rollen. |
| Team | — | `CareTeam.participant.extension[contactViaTeam]` | 0..1 | Referens till`RIVManagingTeam`när den fasta kontakten nås genom ett team. |
| Kontaktväg.kontaktvägstyp | 1 | `CareTeam.telecom.system` | 0..1 | Anger kommunikationskanal enligt FHIR`ContactPoint.system`. Informationsmodellens mer detaljerade typer av telefonnummer realiseras inte. |
| Kontaktväg.värde | 0..1 | `CareTeam.telecom.value` | 0..1 | Telefonnummer, e-postadress, URL eller motsvarande. |
| Kontakttid.veckodag | 0..1 | `CareTeam.telecom.extension[availability].valueAvailability.availableTime.daysOfWeek` | — | Veckodag då kontaktvägen är tillgänglig. |
| Kontakttid.starttid | 1 | `CareTeam.telecom.extension[availability].valueAvailability.availableTime.availableStartTime` | — | Tid då tillgängligheten börjar. |
| Kontakttid.sluttid | 1 | `CareTeam.telecom.extension[availability].valueAvailability.availableTime.availableEndTime` | — | Tid då tillgängligheten slutar. |

### Team → RIVManagingTeam

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Team.id | 1 | `CareTeam.identifier` | 0..* | Identifierare för teamet. |
| Team.namn | 0..1 | `CareTeam.name` | 0..1 | Teamets namn. |
| Team.kommentar | 0..1 | `CareTeam.note` | 0..* | Kompletterande information eller vägledning om teamet. FHIR-modellens öppnare kardinalitet har behållits. |
| Person.person-id | 1 | `CareTeam.subject` | 0..1 | Refererar till`Patient`när teamet är kopplat till en specifik invånare. Personens identifierare finns i`Patient.identifier`. |
| Personal | — | `CareTeam.participant.member` | 0..1 per deltagare | En deltagare representeras med`PractitionerRole`eller`Practitioner`.`CareTeam.participant`kan upprepas för flera deltagare. |
| Kontaktväg.kontaktvägstyp | 1 | `CareTeam.telecom.system` | 0..1 | Anger kommunikationskanal. Informationsmodellens mer detaljerade typer av telefonnummer realiseras inte. |
| Kontaktväg.värde | 0..1 | `CareTeam.telecom.value` | 0..1 | Telefonnummer, e-postadress, URL eller motsvarande. |
| Kontakttid.veckodag | 0..1 | `CareTeam.telecom.extension[availability].valueAvailability.availableTime.daysOfWeek` | — | Veckodag då kontaktvägen är tillgänglig. |
| Kontakttid.starttid | 1 | `CareTeam.telecom.extension[availability].valueAvailability.availableTime.availableStartTime` | — | Tid då tillgängligheten börjar. |
| Kontakttid.sluttid | 1 | `CareTeam.telecom.extension[availability].valueAvailability.availableTime.availableEndTime` | — | Tid då tillgängligheten slutar. |

Kardinaliteter markerade med `—` preciseras av respektive refererad profil eller extension.

### Personal → PractitionerRole och Practitioner

Information om personal representeras inte direkt som attribut på `RIVCareManager` eller `RIVManagingTeam`.

När `PractitionerRole` används representeras personens identifierare och namn genom den `Practitioner` som refereras från `PractitionerRole.practitioner`. Befattning kan uttryckas på `PractitionerRole.code`.

`RIVManagingTeam` tillåter även en direkt referens till `Practitioner` för en teamdeltagare.

-------

## FHIR-element utan direkt motsvarighet i informationsmodellen

Vissa element behövs i FHIR-realiseringen men har ingen direkt motsvarighet som attribut i informationsmodellen.

| | |
| :--- | :--- |
| `CareTeam.category` | Skiljer en`RIVCareManager`från ett`RIVManagingTeam`genom de fixerade kategorierna`fast-kontakt`respektive`team`. |
| `RIVManagingTeam.period` | Kan beskriva under vilken period teamet är relevant i det aktuella sammanhanget. |
| `RIVManagingTeam.participant` | Möjliggör representation av de aktörer som ingår i teamet. |

-------

## Omappade element

Följande delar av informationsmodellen realiseras inte i nuvarande version av IG:n.

| | |
| :--- | :--- |
| Hälsoärende | Det finns i nuläget inte verksamhetsmässigt stöd för att strukturerat ange vilket hälsoärende den fasta kontakten hör till. |
| Ändringsorsak | Det finns i nuläget inte verksamhetsmässigt stöd för att strukturerat dokumentera orsaken till en ändring av den fasta kontakten. |

-------

