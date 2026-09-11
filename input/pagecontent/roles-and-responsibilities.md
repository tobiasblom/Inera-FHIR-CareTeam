# Roller och ansvar

Denna implementationsguide beskriver informationsutbyte mellan en **informationsproducent** och en **informationskonsument**.

Rollerna avser systemens ansvar i informationsutbytet.

| Roll | Ansvar |
|------|--------|
| **Informationsproducent** | Tillhandahåller information om fasta kontakter för en person och ansvarar för att information som lämnas följer profiler och övriga krav i denna IG. |
| **Informationskonsument** | Efterfrågar information om fasta kontakter och ansvarar för att kunna ta emot, tolka och använda information som följer denna IG. |

## Förväntningar vid implementation

### Informationsproducent

En informationsproducent ska:

- kunna ta emot de förfrågningar som definieras för informationsutbytet
- kunna identifiera den person som förfrågan avser
- kunna returnera information om fasta kontakter enligt de FHIR-profiler som definieras i denna IG
- följa de kardinaliteter, terminologibindningar och övriga konformanskrav som gäller för profilerna
- endast lämna information som får tillgängliggöras för den aktuella konsumenten

IG:n ställer inte krav på hur informationen lagras eller struktureras internt hos producenten.

### Informationskonsument

En informationskonsument ska:

- kunna begära information om fasta kontakter enligt de interaktioner som definieras i denna IG
- kunna ta emot och bearbeta resurser som följer profilerna i denna IG
- kunna hantera de element som markerats som Must Support enligt den betydelse som definieras i IG:n
- kunna hantera ett giltigt svar även när inga fasta kontakter motsvarar förfrågan
- använda informationen i enlighet med de behörighets- och åtkomstregler som gäller för den aktuella tjänsten

## Samspel mellan rollerna

Informationsutbytet initieras när en informationskonsument behöver information om en persons fasta kontakter.

Konsumenten skickar en förfrågan till producenten. Producenten identifierar relevant information och returnerar ett svar enligt profilerna i denna IG. Konsumenten kan därefter använda informationen i sitt eget sammanhang, exempelvis för presentation i en användartjänst.

Se [Användningsfall](use-cases.html) för den funktionella beskrivningen av flödet och [REST-interaktioner och sökparametrar](rest-interactions.html) för den tekniska realiseringen.
