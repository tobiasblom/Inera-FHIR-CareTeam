# Användningsfall - Inera FHIR CareTeam v0.9

## Användningsfall

# Användningsfall

Denna implementationsguide stödjer informationsutbyte där en konsumerande tjänst behöver hämta information om en persons fasta kontakter från en informationsproducent. De verksamhetsprocesser där en fast kontakt utses, ändras eller avslutas sker i producentens verksamhetssystem och omfattas inte av denna IG. Resultatet av dessa processer påverkar däremot vilken information som ska kunna lämnas vid en efterföljande förfrågan.

## Hämta en persons fasta kontakter

En konsumerande tjänst behöver få tillgång till aktuella uppgifter om en persons fasta kontakter för att kunna presentera eller använda informationen.

### Utlösande händelse

Användningsfallet initieras när en konsument behöver information om vilka fasta kontakter som finns registrerade för en viss person.

Det kan exempelvis ske när informationen ska presenteras för en invånare eller användas av en behörig användare i en annan konsumerande tjänst.

### Aktörer

**Informationskonsument**
 System eller tjänst som efterfrågar information om en persons fasta kontakter.

**Informationsproducent**
 System eller tjänst som tillhandahåller information om fasta kontakter enligt denna IG.

### Förlopp

1. Konsumenten identifierar den person vars fasta kontakter ska hämtas.
1. Konsumenten skickar en förfrågan till producentens FHIR-API.
1. Producenten söker fram de fasta kontakter som motsvarar förfrågan.
1. Producenten returnerar informationen representerad enligt profilerna i denna IG.
1. Konsumenten tolkar informationen och använder den i sitt aktuella sammanhang.

### Resultat

Konsumenten får information om personens fasta kontakter, inklusive den information som krävs för att förstå vilken typ av kontakt det är, vem kontakten är och hur kontakten kan nås, i den utsträckning informationen finns tillgänglig och får lämnas till konsumenten.

Om inga fasta kontakter motsvarar förfrågan returneras ett giltigt svar utan matchande kontakter.

Se [REST-interaktioner och sökparametrar](rest-interactions.md) för den tekniska realiseringen av förfrågan och [Förväntade svar](expected-responses.md) för hur olika svarssituationer hanteras.

