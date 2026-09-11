# Hem

### Fasta kontakter

Denna implementationsguide beskriver hur information om fasta kontakter representeras och utbyts med HL7 FHIR inom Ineras informationsförsörjning.

Med **fast kontakt** avses en namngiven person inom vård eller omsorg som har tilldelats en samordnande roll för en patient eller omsorgstagare i syfte att skapa trygghet och kontinuitet. Begreppet används i informatikleveransen som ett övergripande begrepp för olika typer av fasta kontakter.

Guiden beskriver de FHIR-profiler, terminologier och tekniska regler som en informationsproducent behöver följa för att informationen ska kunna tas emot och användas av Ineras konsumerande tjänster.

---

### Omfattning

Implementationsguiden realiserar informationsbehovet för fasta kontakter som identifierats inom arbetet med Sammanhållen planering på 1177.

Informationsutbytet omfattar bland annat information om:

- vilken typ av fast kontakt det är
- den person som är utsedd till fast kontakt
- organisation eller enhet där kontakten verkar
- team som kontakten tillhör, när det är relevant
- kontaktvägar och kontakttider

IG:n beskriver informationsutbytet och ställer inte krav på hur informationen ska lagras eller hanteras internt i producentens verksamhetssystem.

---

### Syfte

Syftet med implementationsguiden är att möjliggöra ett enhetligt och strukturerat informationsutbyte om fasta kontakter mellan informationsproducenter och Ineras tjänster, exempelvis för presentation för invånare.

---

### Målgrupp
Implementationsguiden vänder sig främst till personer som utvecklar eller ansvarar för system som ska producera eller konsumera information om fasta kontakter, exempelvis:

- system- och lösningsarkitekter
- utvecklare
- informationsarkitekter
- systemleverantörer och tekniska förvaltningar hos anslutande organisationer

För en övergripande beskrivning av sammanhang, informationsbehov och avgränsningar, se [Inledning](introduction.html).

För teknisk information om hur API:et används, se [REST-interaktioner och sökparametrar](rest-interactions.html).


---

### Terminologi

På [Inera Terminologitjänst](https://www.inera.se/tjanster/alla-tjanster-a-o/terminologitjanst-for-nationell-e-halsa/) finns alla refererade kodsystem och värdemängder som utvecklats av Inera.

---

### Beroenden

Denna IG bygger på FHIR-profiler och andra artefakter från de beroenden som anges i implementationsguidens paketdefinition.

[Beskriv här de viktigaste externa IG-beroendena när dessa har fastställts, exempelvis Inera Core eller profiler från HL7 Sweden.]

---

### Dokumentation

Mer information om FHIR på Inera  finns [här](https://fhir.inera.se/). FHIR på Inera är en del av RIVTA – referensarkitekturen för svensk hälso- och sjukvård.

Information om hur denna IG förvaltas finns under [Om](about.html).

---

### Om mallens struktur

Menyn i denna IG är medvetet utformad efter samma mönster som europeiska specifikationer, t.ex. FHIR ePS (Hem / Inledning / Funktionellt / Implementering / Om / Artefakter), för att ge implementatörer en igenkännbar ingång oavsett vilken europeisk FHIR-IG de arbetar med.

Informationsmodellen för denna förmåga publiceras externt och fristående i en egen informationsspecifikation (se [Informationsunderlag](information-basis.html) under Funktionellt) snarare än i denna IG. Det håller informationsspecifikationen som den auktoritativa källan för begrepp och informationsstruktur, och undviker att IG:n och specifikationen glider isär över tid.
