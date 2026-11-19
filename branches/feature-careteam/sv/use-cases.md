# Användningsfall - Inera FHIR CareTeam v0.9

## Användningsfall

Denna implementationsguide stödjer informationsutbyte där en konsumerande tjänst behöver hämta information om en persons fasta kontakter från en informationsproducent. De verksamhetsprocesser där en fast kontakt utses, ändras eller avslutas sker i producentens verksamhetssystem och omfattas inte av denna IG. Resultatet av dessa processer påverkar däremot vilken information som ska kunna lämnas vid en efterföljande förfrågan.

### Hämta en persons fasta kontakter

En konsumerande tjänst behöver få tillgång till uppgifter om en persons fasta kontakter för att kunna presentera eller använda informationen.

#### Utlösande händelse

Användningsfallet initieras när en konsument behöver information om vilka fasta kontakter som finns registrerade för en viss person. Det kan exempelvis ske när:

* en invånare vill se sina fasta kontakter i en invånartjänst, till exempel 1177
* vård- eller omsorgspersonal behöver se en patients fasta kontakter i en tjänst för professionen

Åtkomst för vård- och omsorgspersonal till information från andra vård- eller omsorgsgivare omfattas av regelverket för sammanhållen vård- och omsorgsdokumentation. Hur information för spärrkontroll och åtkomst förmedlas ingår inte i denna version.

#### Aktörer

**Informationskonsument**
 System eller tjänst som efterfrågar information om en persons fasta kontakter.

**Informationsproducent**
 System eller tjänst som tillhandahåller information om fasta kontakter enligt denna IG.

#### Förlopp

1. Konsumenten identifierar den person vars fasta kontakter ska hämtas.
1. Konsumenten frågar ett index över var det finns information om personen och får tillbaka vilka producenter som har information om personens fasta kontakter.
1. Konsumenten skickar en förfrågan till var och en av dessa producenters FHIR-API.
1. Varje producent söker fram de fasta kontakter som motsvarar förfrågan och returnerar dem representerade enligt profilerna i denna IG.
1. Svaren från producenterna sammanställs till en samlad bild av personens fasta kontakter.
1. Konsumenten tolkar informationen och använder den i sitt aktuella sammanhang.

Förloppet utgår från hur informationsutbytet fungerar i dagens infrastruktur, där ett engagemangsindex anger var information om en patient finns och svaren från flera källsystem sammanställs innan de visas. Det är troligt att informationsutbytet med FHIR följer ett liknande mönster, men det är ännu inte fastställt. Indexering och sammanställning tas fram inom samverkansinfrastrukturen och beskrivs i en senare version av implementationsguiden.

#### Resultat

Konsumenten får information om personens fasta kontakter, i den utsträckning informationen finns tillgänglig och får lämnas till konsumenten. Informationen omfattar:

* vilken typ av fast kontakt det är
* vem den fasta kontakten är och vid vilken vård- eller omsorgsenhet uppdraget finns
* hur kontakten kan nås, direkt eller via ett team, och när kontaktvägarna är tillgängliga

Om inga fasta kontakter motsvarar förfrågan returneras ett giltigt svar utan matchande kontakter.

Den tekniska realiseringen av förfrågan och hur olika svarssituationer hanteras beskrivs i en senare version av implementationsguiden.

