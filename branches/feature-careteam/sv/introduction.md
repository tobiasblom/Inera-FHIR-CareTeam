# Inledning - Inera FHIR CareTeam v0.9

## Inledning

Denna implementationsguide (IG) beskriver det FHIR-baserade informationsutbytet för **Fasta kontakter** inom Ineras informationsförsörjning.

IG:n utgår från det informationsbehov som tagits fram inom arbetet med Sammanhållen planering på 1177. Informationsbehovet beskriver vilken information som behöver kunna delas om en persons fasta kontakter för att informationen ska kunna användas och presenteras av Ineras konsumerande tjänster.

IG:n är en kravspecifikation för informationsutbytet. Den beskriver de krav som informationsproducenter behöver uppfylla för att leverera information om fasta kontakter på ett enhetligt sätt med HL7 FHIR.

Kraven uttrycks både genom maskintolkbara FHIR-artefakter, såsom profiler, ValueSets och CodeSystems, och genom kompletterande dokumentation i denna IG. För att uppfylla specifikationen behöver en implementation följa både de maskintolkbara reglerna och de krav och förtydliganden som beskrivs i dokumentationen.

### Läsanvisning

Under **Funktionellt** beskrivs bakgrunden till informationsutbytet och hur informationsbehovet har realiserats:

* [Informationsunderlag](information-basis.md) beskriver det informatiska underlag som ligger till grund för profileringen.
* [Användningsfall](use-cases.md) beskriver de situationer där informationen utbyts.
* [Roller och ansvar](roles-and-responsibilities.md) beskriver ansvarsfördelningen mellan aktörerna i informationsutbytet.
* [Mappning mot informationsmodellen](mappings.md) beskriver hur informationsmodellen har realiserats med FHIR-resurser och profiler.
* [Mappning mot GetCareManagers](mapping-getcaremanagers.md) beskriver hur tjänstekontraktet GetCareManagers motsvaras av profilerna.

Under **Artefakter** finns profiler, extensioner, kodverk och exempel.

Under **Om** finns information om förvaltning, nedladdningar och versionshistorik.

Teknisk information om REST-interaktioner, sökparametrar, förväntade svar, felhantering och säkerhet tillkommer i en senare version, under **Implementering**.

### Kravnivåer

I dokumentationen uttrycks krav med följande ord:

* **SKA** anger ett krav som måste uppfyllas.
* **BÖR** anger en rekommendation. Avsteg kan göras om det finns goda skäl.
* **KAN** anger något som är tillåtet men inte krävs.

### Must Support

För element som är markerade med flaggan **S** (Must Support) i profilerna gäller följande:

* **Producenten** SKA skicka elementet om informationen finns i källsystemet.
* **Mottagaren** SKA kunna ta emot elementet och använda det enligt sitt syfte, till exempel visa det för invånaren.

Element som saknar markeringen Must Support KAN förekomma i en instans, men mottagaren får bortse från dem. Det gäller också element som inte ingår i informationsmodellen. De behåller basresursens kardinalitet för att inte i onödan underkänna data som följer FHIR-standarden.

Element med minsta kardinalitet 1 SKA alltid finnas, oavsett markering.

### Avgränsningar i denna version

* **API:** Interaktioner, sökparametrar, svarets uppbyggnad och felhantering beskrivs i en senare version.
* **Åtkomst och spärr:** Information för spärrkontroll och personuppgiftsansvar enligt sammanhållen vård- och omsorgsdokumentation ingår inte. Frågan hanteras gemensamt inom samverkansinfrastrukturen.
* **Hälsoärende:** Koppling till hälsoärende ingår inte.
* **Status:** Hur status på CareTeam ska användas är inte fastställt. Giltighetstiden uttrycks med period.
* **Basprofiler:** Profilerna bygger direkt på FHIR R5 i väntan på nationella basprofiler från HL7 Sverige.

