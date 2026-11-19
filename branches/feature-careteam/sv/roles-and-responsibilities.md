# Roller och ansvar - Inera FHIR CareTeam v0.9

## Roller och ansvar

Denna implementationsguide beskriver informationsutbyte mellan en **informationsproducent** och en **informationskonsument**.

Rollerna avser systemens ansvar i informationsutbytet.

| | |
| :--- | :--- |
| **Informationsproducent** | Tillhandahåller information om fasta kontakter för en person och ansvarar för att information som lämnas följer profiler och övriga krav i denna IG. |
| **Informationskonsument** | Efterfrågar information om fasta kontakter och ansvarar för att kunna ta emot, tolka och använda information som följer denna IG. |

### Förväntningar vid implementation

#### Informationsproducent

En informationsproducent SKA:

* kunna ta emot de förfrågningar som definieras för informationsutbytet
* kunna identifiera den person som förfrågan avser
* kunna returnera information om fasta kontakter enligt de FHIR-profiler som definieras i denna IG
* följa de kardinaliteter, terminologibindningar och övriga konformanskrav som gäller för profilerna
* endast lämna information som får tillgängliggöras för den aktuella konsumenten

IG:n ställer inte krav på hur informationen lagras eller struktureras internt hos producenten.

#### Regler för informationsproducenten

Följande regler kan inte uttryckas i profilerna och SKA följas av producenten:

* **Fast läkarkontakt:** En patient SKA ha högst en fast läkarkontakt i svaret från en producent.
* **Sammanlänkade identiteter:** Om producenten har information om samma person under flera sammanlänkade identiteter, till exempel personnummer och reservnummer, SKA svaret sammanställas till ett svar för personen.
* **Skyddade personuppgifter:** Producenten ansvarar för att information om medarbetare med skyddade personuppgifter inte lämnas ut när det inte är tillåtet.
* **Organisation:** `PractitionerRole.organization` SKA referera till den mest specifika organisation där uppdraget som fast kontakt finns, i ordningen vårdutförande enhet, vård- eller omsorgsenhet och vård- eller omsorgsgivare. Överordnade organisationer anges med `Organization.partOf`.
* **Kontakttider:** Tider som har en angiven period gäller före tider utan period. Angivna perioder för samma kontaktväg SKA inte överlappa.
* **Kontaktvägar:** Det är frivilligt att förmedla kontaktvägar för den fasta kontakten, teamet och organisationerna, men svaret BÖR innehålla minst en kontaktväg på någon av dessa nivåer. Kontaktvägen BÖR anges direkt på den fasta kontakten (`CareTeam.telecom`), även när den går till ett team, till exempel ett gemensamt telefonnummer för teamet. Bara när det inte är möjligt BÖR kontaktvägen anges på teamet och den fasta kontakten kopplas till teamet med extensionen [Kontakt via team](StructureDefinition-contact-via-team.md).

#### Informationskonsument

En informationskonsument SKA:

* kunna begära information om fasta kontakter enligt de interaktioner som definieras i denna IG
* kunna ta emot och bearbeta resurser som följer profilerna i denna IG
* kunna hantera de element som markerats som Must Support enligt den betydelse som definieras i IG:n
* kunna hantera ett giltigt svar även när inga fasta kontakter motsvarar förfrågan
* använda informationen i enlighet med de behörighets- och åtkomstregler som gäller för den aktuella tjänsten

### Samspel mellan rollerna

Informationsutbytet initieras när en informationskonsument behöver information om en persons fasta kontakter.

Konsumenten skickar en förfrågan till producenten. Producenten identifierar relevant information och returnerar ett svar enligt profilerna i denna IG. Konsumenten kan därefter använda informationen i sitt eget sammanhang, exempelvis för presentation i en användartjänst.

Förfrågan kommer troligen att föregås av en fråga till ett index som anger vilka producenter som har information om personen, och svaren från flera producenter kommer att sammanställas innan de används. Vilka tjänster som har de rollerna är ännu inte fastställt. Se [Användningsfall](use-cases.md) för den funktionella beskrivningen av flödet. Den tekniska realiseringen beskrivs i en senare version av implementationsguiden.

