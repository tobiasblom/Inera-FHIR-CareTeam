# Inledning

Denna Implementation Guide (IG) beskriver det FHIR-baserade informationsutbytet för **Fasta kontakter** inom Ineras informationsförsörjning.

IG:n utgår från det informationsbehov som tagits fram inom arbetet med Sammanhållen planering på 1177. Informationsbehovet beskriver vilken information som behöver kunna delas om en persons fasta kontakter för att informationen ska kunna användas och presenteras av Ineras konsumerande tjänster.

IG:n är en kravspecifikation för informationsutbytet. Den beskriver de krav som informationsproducenter behöver uppfylla för att leverera information om fasta kontakter på ett enhetligt sätt med HL7 FHIR.

Profileringen är konsumentdriven. Det innebär att IG:n definierar vilken information en producent behöver kunna tillhandahålla för att mottagande tjänster ska kunna tolka och använda informationen. IG:n reglerar inte hur informationen lagras, dokumenteras eller struktureras internt i producentens verksamhetssystem.

Kraven uttrycks både genom maskintolkbara FHIR-artefakter, såsom profiler, ValueSets och CodeSystems, och genom kompletterande dokumentation i denna IG. För att uppfylla specifikationen behöver en implementation följa både de maskintolkbara reglerna och de krav och förtydliganden som beskrivs i dokumentationen.

---

## Läsanvisning

Under **Funktionellt** beskrivs bakgrunden till informationsutbytet och hur informationsbehovet har realiserats:

- [Informationsunderlag](information-basis.html) beskriver det informatiska underlag som ligger till grund för profileringen.
- [Användningsfall](use-cases.html) beskriver de situationer där informationen utbyts.
- [Roller och ansvar](roles-and-responsibilities.html) beskriver ansvarsfördelningen mellan aktörerna i informationsutbytet.
- [Mappning till profiler](mappings.html) beskriver hur informationsbehovet har realiserats med FHIR-resurser och profiler.

Under **Implementering** finns den tekniska information som behövs för att implementera och testa informationsutbytet, bland annat REST-interaktioner, sökparametrar, förväntade svar, felhantering och konformanskrav.
