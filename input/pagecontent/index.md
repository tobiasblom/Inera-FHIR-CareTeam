### Fasta kontakter

Denna implementationsguide beskriver hur information om fasta kontakter representeras och utbyts med HL7 FHIR inom Ineras informationsförsörjning.

Med **fast kontakt** avses en namngiven person inom vård eller omsorg som har tilldelats en samordnande roll för en patient eller omsorgstagare i syfte att skapa trygghet och kontinuitet. Begreppet används i informationsmodellen som ett övergripande begrepp för olika typer av fasta kontakter, till exempel fast vårdkontakt, fast läkarkontakt och fast omsorgskontakt i hemtjänsten.

Implementationsguiden beskriver de FHIR-profiler, terminologier och regler som en informationsproducent behöver följa för att informationen ska kunna tas emot och användas av Ineras konsumerande tjänster.

#### Status

Implementationsguiden är ett utkast (version 0.9). Den tas fram för att pröva arbetssätt och principer för FHIR-profilering på Inera och kan komma att ändras.

#### Omfattning

Implementationsguiden realiserar informationsbehovet för fasta kontakter som identifierats inom arbetet med Sammanhållen planering på 1177.

Informationsutbytet omfattar:

- vilken typ av fast kontakt det är
- den person som är utsedd till fast kontakt, och personens befattning
- vård- eller omsorgsgivare och enhet där uppdraget som fast kontakt finns
- team som är kopplat till den fasta kontakten, när det är relevant
- kontaktvägar och kontakttider

Implementationsguiden beskriver enbart informationsutbytet och ställer inte krav på hur informationen lagras eller hanteras i producentens verksamhetssystem. Vad som är avgränsat i denna version beskrivs i [Inledning](introduction.html).

#### Syfte

Syftet med implementationsguiden är att möjliggöra ett enhetligt och strukturerat informationsutbyte om fasta kontakter mellan informationsproducenter och Ineras tjänster, exempelvis för presentation för invånare via 1177.

#### Målgrupp

Implementationsguiden vänder sig främst till personer som utvecklar eller ansvarar för system som ska producera eller konsumera information om fasta kontakter, exempelvis:

- system- och lösningsarkitekter
- utvecklare
- informationsarkitekter
- systemleverantörer och tekniska förvaltningar hos anslutande organisationer

För sammanhang, läsanvisning och avgränsningar, se [Inledning](introduction.html). API:et, med interaktioner och sökparametrar, beskrivs i en senare version av implementationsguiden.

#### Terminologi

Implementationsguiden använder följande kodverk:

- **Typ av fast kontakt**, som förvaltas av Inera och finns i [Ineras terminologitjänst](https://www.inera.se/tjanster/alla-tjanster-a-o/terminologitjanst-for-nationell-e-halsa/).
- **Typ av CareTeam**, som definieras i denna implementationsguide och skiljer en fast kontakt från ett team.
- **KV Befattning** (OID 1.2.752.129.2.2.1.4), som förvaltas inom HSA.

Övriga kodverk kommer från FHIR-standarden.

#### Beroenden

Implementationsguiden bygger på:

- HL7 FHIR R5 (5.0.0)
- HL7 Terminology (hl7.terminology.r5)
- FHIR Extensions Pack (hl7.fhir.uv.extensions.r5)

Profilerna bygger i denna version direkt på basresurserna i FHIR R5. Nationella basprofiler för R5 från HL7 Sverige finns ännu inte. När de finns kommer profilerna att ses över för att bygga på dem.

#### Dokumentation

Mer information om FHIR på Inera finns på [fhir.inera.se](https://fhir.inera.se/).

Information om hur implementationsguiden förvaltas finns under [Om](about.html).