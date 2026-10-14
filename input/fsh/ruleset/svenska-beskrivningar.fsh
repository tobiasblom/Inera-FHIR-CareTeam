// =====================================================================
// Gemensamma svenska beskrivningar för element som ärvs från
// DomainResource. Utan dessa visas basspecifikationens engelska texter
// i IG:ns tabellvy.
// =====================================================================

RuleSet: SvenskaBasbeskrivningar
* id ^short = "Resursens logiska id"
* id ^definition = "Logiskt id som tilldelas av den server som lagrar resursen. Id:t ändras inte under resursens livstid."
* meta ^short = "Metadata om resursen"
* meta ^definition = "Metadata som hanteras av infrastrukturen, till exempel versions-id och tidpunkt för senaste ändring."
* implicitRules ^short = "Regler som innehållet skapats enligt"
* implicitRules ^definition = "Referens till regler som följdes när resursen skapades och som mottagaren måste känna till för att tolka innehållet. Förväntas inte användas."
* language ^short = "Språk för resursens innehåll"
* language ^definition = "Det språk som resursens textinnehåll är skrivet på."
* text ^short = "Läsbar sammanfattning"
* text ^definition = "Sammanfattning av resursens innehåll i läsbar form, avsedd för visning för människor."
* contained ^short = "Inbäddade resurser"
* contained ^definition = "Resurser som ingår i denna resurs och saknar egen identitet utanför den. Bör undvikas när de refererade resurserna kan hämtas separat."
* extension ^short = "Tillägg"
* extension ^definition = "Ytterligare information som inte ingår i basresursen, uttryckt med extensioner."
* modifierExtension ^short = "Tillägg som ändrar tolkningen"
* modifierExtension ^definition = "Extensioner som ändrar betydelsen av resursen eller av element i den. Mottagaren får inte ignorera dem. Förväntas inte användas."

// Beskrivningar för underelementen i en kategori med fast värde.
RuleSet: SvenskaKategoribeskrivningar
* category.text ^short = "Kategorin i klartext"
* category.text ^definition = "Kategorin uttryckt i klartext."
* category.coding ^short = "Kod som anger kategori"
* category.coding ^definition = "Kodad kategori från kodsystemet Typ av CareTeam. Värdet är fast."
* category.coding.system ^short = "Kodsystem"
* category.coding.system ^definition = "Identifierar det kodsystem som koden kommer från."
* category.coding.version ^short = "Version av kodsystemet"
* category.coding.version ^definition = "Version av kodsystemet, om det är relevant."
* category.coding.code ^short = "Kod"
* category.coding.code ^definition = "Koden för kategorin."
* category.coding.display ^short = "Klartext för koden"
* category.coding.display ^definition = "Kodens benämning i klartext, avsedd för visning."
* category.coding.userSelected ^short = "Vald direkt av användare"
* category.coding.userSelected ^definition = "Anger om koden valts direkt av en användare. Förväntas inte användas."

// Beskrivningar för kontaktvägar (telecom), gemensamma för båda profilerna.
RuleSet: SvenskaKontaktvagsbeskrivningar
* telecom.system ^short = "Typ av kontaktväg"
* telecom.system ^definition = "Anger vilken sorts kontaktväg det är, till exempel telefon, e-post eller webbadress."
* telecom.value ^short = "Kontaktuppgift"
* telecom.value ^definition = "Själva kontaktuppgiften, till exempel ett telefonnummer eller en webbadress, i den form den ska visas för invånaren."
* telecom.use ^short = "Avsedd användning"
* telecom.use ^definition = "Anger avsedd användning av kontaktvägen."
* telecom.rank ^short = "Prioritetsordning"
* telecom.rank ^definition = "Ordning i vilken kontaktvägarna bör användas. Värdet 1 anger högst prioritet."
* telecom.period ^short = "Giltighetsperiod för kontaktvägen"
* telecom.period ^definition = "Period under vilken kontaktvägen gäller."
* telecom.extension[availability] ^short = "Kontakttider"
* telecom.extension[availability] ^definition = "Anger veckodagar och tider då kontaktvägen är tillgänglig, till exempel telefontider."