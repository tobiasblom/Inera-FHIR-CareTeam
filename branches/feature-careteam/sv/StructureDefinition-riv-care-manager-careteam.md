# Fast kontakt - Inera FHIR CareTeam v0.9

## Resursprofil: Fast kontakt 

**Användningar:**

* Exempel för denna Profil: [CareTeam/ExampleCareManager](CareTeam-ExampleCareManager.md) and [CareTeam/ExampleCareManagerAnnanFastKontakt](CareTeam-ExampleCareManagerAnnanFastKontakt.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.fhir.careteam|current/StructureDefinition/riv-care-manager-careteam)

### Formella vyer av profilinnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabell med nyckelelement](#tabs-key) 
*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [CareTeam](http://hl7.org/fhir/R5/careteam.html) 

#### Terminologibindningar (differential)

#### Begränsningar

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [CareTeam](http://hl7.org/fhir/R5/careteam.html) 

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

Denna struktur är härledd från [CareTeam](http://hl7.org/fhir/R5/careteam.html) 

#### Terminologibindningar (differential)

#### Begränsningar

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [CareTeam](http://hl7.org/fhir/R5/careteam.html) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-riv-care-manager-careteam.csv), [Excel](../StructureDefinition-riv-care-manager-careteam.xlsx), [Schematron](../StructureDefinition-riv-care-manager-careteam.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "riv-care-manager-careteam",
  "url" : "https://fhir.inera.se/ig/careteam/StructureDefinition/riv-care-manager-careteam",
  "version" : "0.9",
  "name" : "RIVCareManager",
  "title" : "Fast kontakt",
  "status" : "draft",
  "date" : "2026-10-15T14:04:45+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Profil som beskriver relationen Fast kontakt som kan finnas mellan en invånare och namngiven vård- och omsorgspersonal i svensk vård och omsorg. En fast kontakt är en namngiven vård- eller omsorgspersonal som tilldelats en samordnande roll för en vård- och/eller omsorgstagare i syfte att skapa trygghet och kontinuitet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "informationsmodell",
    "uri" : "urn:inera:informationsmodell:fasta-kontakter",
    "name" : "Informationsmodell - Fast kontakt",
    "comment" : "Mappning mellan informationsmodellen för fasta kontakter och FHIR-profilen RIVCareManager."
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CareTeam",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CareTeam",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CareTeam",
      "path" : "CareTeam",
      "short" : "Fast kontakt",
      "definition" : "Relationen mellan en invånare och en namngiven vård- eller omsorgspersonal som tilldelats en samordnande roll för invånaren i syfte att skapa trygghet och kontinuitet. Varje resurs beskriver en fast kontakt. En invånare med flera fasta kontakter har därför flera resurser."
    },
    {
      "id" : "CareTeam.id",
      "path" : "CareTeam.id",
      "short" : "Resursens logiska id",
      "definition" : "Logiskt id som tilldelas av den server som lagrar resursen. Id:t ändras inte under resursens livstid."
    },
    {
      "id" : "CareTeam.meta",
      "path" : "CareTeam.meta",
      "short" : "Metadata om resursen",
      "definition" : "Metadata som hanteras av infrastrukturen, till exempel versions-id och tidpunkt för senaste ändring."
    },
    {
      "id" : "CareTeam.implicitRules",
      "path" : "CareTeam.implicitRules",
      "short" : "Regler som innehållet skapats enligt",
      "definition" : "Referens till regler som följdes när resursen skapades och som mottagaren måste känna till för att tolka innehållet. Förväntas inte användas."
    },
    {
      "id" : "CareTeam.language",
      "path" : "CareTeam.language",
      "short" : "Språk för resursens innehåll",
      "definition" : "Det språk som resursens textinnehåll är skrivet på."
    },
    {
      "id" : "CareTeam.text",
      "path" : "CareTeam.text",
      "short" : "Läsbar sammanfattning",
      "definition" : "Sammanfattning av resursens innehåll i läsbar form, avsedd för visning för människor."
    },
    {
      "id" : "CareTeam.contained",
      "path" : "CareTeam.contained",
      "short" : "Inbäddade resurser",
      "definition" : "Resurser som ingår i denna resurs och saknar egen identitet utanför den. Bör undvikas när de refererade resurserna kan hämtas separat."
    },
    {
      "id" : "CareTeam.extension",
      "path" : "CareTeam.extension",
      "short" : "Tillägg",
      "definition" : "Ytterligare information som inte ingår i basresursen, uttryckt med extensioner."
    },
    {
      "id" : "CareTeam.modifierExtension",
      "path" : "CareTeam.modifierExtension",
      "short" : "Tillägg som ändrar tolkningen",
      "definition" : "Extensioner som ändrar betydelsen av resursen eller av element i den. Mottagaren får inte ignorera dem. Förväntas inte användas."
    },
    {
      "id" : "CareTeam.identifier",
      "path" : "CareTeam.identifier",
      "short" : "Identifierare för relationen",
      "definition" : "Identifierare som källsystemet använder för relationen fast kontakt. Ingår inte i informationsmodellen."
    },
    {
      "id" : "CareTeam.status",
      "path" : "CareTeam.status",
      "definition" : "Anger relationens status: active betyder att den fasta kontakten gäller, inactive att relationen har avslutats, suspended att den tillfälligt inte gäller, proposed att den är föreslagen men inte fastställd och entered-in-error att resursen har registrerats felaktigt och inte ska användas.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "CareTeamStatus"
        }],
        "strength" : "required",
        "description" : "Status för relationen fast kontakt.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/care-team-status|5.0.0"
      }
    },
    {
      "id" : "CareTeam.category",
      "path" : "CareTeam.category",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.inera.se/ig/careteam/CodeSystem/typ-av-careteam-cs",
          "code" : "fast-kontakt"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "description" : "Typ av CareTeam enligt Ineras kodverk.",
        "valueSet" : "https://fhir.inera.se/ig/careteam/ValueSet/typ-av-careteam-vs"
      }
    },
    {
      "id" : "CareTeam.category.coding",
      "path" : "CareTeam.category.coding",
      "short" : "Kod som anger kategori",
      "definition" : "Kodad kategori från kodsystemet Typ av CareTeam. Värdet är fast.",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "CareTeam.category.coding.system",
      "path" : "CareTeam.category.coding.system",
      "short" : "Kodsystem",
      "definition" : "Identifierar det kodsystem som koden kommer från.",
      "min" : 1
    },
    {
      "id" : "CareTeam.category.coding.version",
      "path" : "CareTeam.category.coding.version",
      "short" : "Version av kodsystemet",
      "definition" : "Version av kodsystemet, om det är relevant."
    },
    {
      "id" : "CareTeam.category.coding.code",
      "path" : "CareTeam.category.coding.code",
      "short" : "Kod",
      "definition" : "Koden för kategorin.",
      "min" : 1
    },
    {
      "id" : "CareTeam.category.coding.display",
      "path" : "CareTeam.category.coding.display",
      "short" : "Klartext för koden",
      "definition" : "Kodens benämning i klartext, avsedd för visning."
    },
    {
      "id" : "CareTeam.category.coding.userSelected",
      "path" : "CareTeam.category.coding.userSelected",
      "short" : "Vald direkt av användare",
      "definition" : "Anger om koden valts direkt av en användare. Förväntas inte användas."
    },
    {
      "id" : "CareTeam.category.text",
      "path" : "CareTeam.category.text",
      "short" : "Kategorin i klartext",
      "definition" : "Kategorin uttryckt i klartext."
    },
    {
      "id" : "CareTeam.name",
      "path" : "CareTeam.name",
      "short" : "Namn",
      "definition" : "Används inte för fast kontakt. Namnet på den fasta kontakten framgår av den refererade personalen."
    },
    {
      "id" : "CareTeam.subject",
      "path" : "CareTeam.subject",
      "short" : "Invånare",
      "definition" : "Den invånare som har tilldelats den fasta kontakten. Avser patient inom hälso- och sjukvård eller brukare inom omsorg.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Person.person-id",
        "comment" : "Invånaren som den fasta kontakten gäller för. Själva person-id:t finns på den refererade Patient-resursen, i Patient.identifier."
      }]
    },
    {
      "id" : "CareTeam.period",
      "path" : "CareTeam.period",
      "short" : "Giltighetsperiod",
      "definition" : "Den period under vilken relationen fast kontakt gäller.",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.period.start",
      "path" : "CareTeam.period.start",
      "short" : "Startdatum",
      "definition" : "Datum då den fasta kontakten börjar gälla för invånaren.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Fast kontakt.startdatum",
        "comment" : "Datum då den fasta kontakten börjar gälla."
      }]
    },
    {
      "id" : "CareTeam.period.end",
      "path" : "CareTeam.period.end",
      "short" : "Slutdatum",
      "definition" : "Datum då den fasta kontakten upphör att gälla. Saknas slutdatum gäller relationen tills vidare.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Fast kontakt.slutdatum",
        "comment" : "Datum då den fasta kontakten upphör att gälla."
      }]
    },
    {
      "id" : "CareTeam.participant",
      "path" : "CareTeam.participant",
      "short" : "Fast kontakt",
      "definition" : "Den namngivna vård- eller omsorgspersonal som har rollen som fast kontakt, tillsammans med typen av fast kontakt. Exakt en deltagare anges.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant.extension",
      "path" : "CareTeam.participant.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "CareTeam.participant.extension:contactViaTeam",
      "path" : "CareTeam.participant.extension",
      "sliceName" : "contactViaTeam",
      "short" : "Team som den fasta kontakten nås via",
      "definition" : "Anger det team som den fasta kontakten kan nås via när det saknas kontaktvägar direkt till den namngivna personen. Kontaktvägarna hämtas då från det refererade teamets telecom.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.inera.se/ig/careteam/StructureDefinition/contact-via-team"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant.role",
      "path" : "CareTeam.participant.role",
      "short" : "Typ av fast kontakt",
      "definition" : "Anger vilken typ av fast kontakt relationen avser, till exempel fast vårdkontakt, fast läkarkontakt i primärvården eller fast omsorgskontakt i hemtjänsten. Rollen avser funktionen i relation till invånaren, inte yrkestitel eller befattning.",
      "min" : 1,
      "constraint" : [{
        "key" : "fast-kontakt-typ-kod-eller-text",
        "severity" : "error",
        "human" : "Typ av fast kontakt ska anges med kod från kodverket Typ av fast kontakt, med text eller med båda. Koder från andra kodverk får inte användas.",
        "expression" : "(coding.exists() or text.exists()) and coding.all(system = 'https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_typ_av_fast_kontakt')",
        "source" : "https://fhir.inera.se/ig/careteam/StructureDefinition/riv-care-manager-careteam"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "description" : "Typ av fast kontakt.",
        "valueSet" : "https://fhir.inera.se/ig/careteam/ValueSet/typ-av-fast-kontakt-vs"
      },
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Fast kontakt.typ",
        "comment" : "Typ av fast kontakt enligt kodverk. Mappas till ValueSet TypAvFastKontaktVS."
      }]
    },
    {
      "id" : "CareTeam.participant.member",
      "path" : "CareTeam.participant.member",
      "short" : "Vård- eller omsorgspersonal",
      "definition" : "Den person som har uppdraget som fast kontakt, uttryckt som personen i sin roll vid den vårdande enhet eller omsorgsenhet där personen tjänstgör. Via referensen anges personalens namn, identitet (för hälso- och sjukvårdspersonal HSA-id), befattning och enhet.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Personal.id",
        "comment" : "Den namngivna personalen representeras via PractitionerRole. Personalens identifierare finns på den Practitioner-resurs som refereras från PractitionerRole.practitioner."
      },
      {
        "identity" : "informationsmodell",
        "map" : "Personal.namn",
        "comment" : "Personalens namn finns på den Practitioner-resurs som refereras från PractitionerRole.practitioner."
      },
      {
        "identity" : "informationsmodell",
        "map" : "Personal.befattning",
        "comment" : "Personalens befattning kan uttryckas på PractitionerRole.code, exempelvis med HSA Innehåll Befattning."
      }]
    },
    {
      "id" : "CareTeam.participant.onBehalfOf",
      "path" : "CareTeam.participant.onBehalfOf",
      "short" : "Organisation som deltagaren företräder",
      "definition" : "Används inte för fast kontakt. Den enhet där den fasta kontakten tjänstgör anges i den refererade PractitionerRole."
    },
    {
      "id" : "CareTeam.participant.coverage[x]",
      "path" : "CareTeam.participant.coverage[x]",
      "short" : "Deltagarens tillgänglighet",
      "definition" : "Används inte för fast kontakt. Giltighetstiden anges i period och kontakttider anges på kontaktvägen."
    },
    {
      "id" : "CareTeam.reason",
      "path" : "CareTeam.reason",
      "short" : "Anledning",
      "definition" : "Används inte för fast kontakt."
    },
    {
      "id" : "CareTeam.managingOrganization",
      "path" : "CareTeam.managingOrganization",
      "short" : "Ansvarig organisation",
      "definition" : "Används inte för fast kontakt. Den enhet där den fasta kontakten tjänstgör anges i den refererade PractitionerRole."
    },
    {
      "id" : "CareTeam.telecom",
      "path" : "CareTeam.telecom",
      "short" : "Kontaktväg till den fasta kontakten",
      "definition" : "Kontaktväg som invånaren använder för att nå den fasta kontakten, till exempel ett telefonnummer eller en webbadress. Om den fasta kontakten nås via ett team kan teamet i stället anges i participant.extension[contactViaTeam], och kontaktvägen hämtas då från teamets telecom.",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.telecom.extension:availability",
      "path" : "CareTeam.telecom.extension",
      "sliceName" : "availability",
      "short" : "Kontakttider",
      "definition" : "Anger veckodagar och tider då kontaktvägen är tillgänglig, till exempel telefontider.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.inera.se/ig/careteam/StructureDefinition/contact-point-availability"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.telecom.extension:availability.value[x].availableTime.daysOfWeek",
      "path" : "CareTeam.telecom.extension.value[x].availableTime.daysOfWeek",
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Kontakttid.veckodag",
        "comment" : "Veckodag då kontaktvägen är tillgänglig."
      }]
    },
    {
      "id" : "CareTeam.telecom.extension:availability.value[x].availableTime.availableStartTime",
      "path" : "CareTeam.telecom.extension.value[x].availableTime.availableStartTime",
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Kontakttid.starttid",
        "comment" : "Tidpunkt då kontakttiden börjar."
      }]
    },
    {
      "id" : "CareTeam.telecom.extension:availability.value[x].availableTime.availableEndTime",
      "path" : "CareTeam.telecom.extension.value[x].availableTime.availableEndTime",
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Kontakttid.sluttid",
        "comment" : "Tidpunkt då kontakttiden slutar."
      }]
    },
    {
      "id" : "CareTeam.telecom.system",
      "path" : "CareTeam.telecom.system",
      "short" : "Typ av kontaktväg",
      "definition" : "Anger vilken sorts kontaktväg det är, till exempel telefon, e-post eller webbadress.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Kontaktväg.kontaktvägstyp",
        "comment" : "Typ av kontaktväg, exempelvis telefon, e-post eller webbadress."
      }]
    },
    {
      "id" : "CareTeam.telecom.value",
      "path" : "CareTeam.telecom.value",
      "short" : "Kontaktuppgift",
      "definition" : "Själva kontaktuppgiften, till exempel ett telefonnummer eller en webbadress, i den form den ska visas för invånaren.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Kontaktväg.värde",
        "comment" : "Värdet för kontaktvägen, exempelvis telefonnummer, e-postadress eller URL."
      }]
    },
    {
      "id" : "CareTeam.telecom.use",
      "path" : "CareTeam.telecom.use",
      "short" : "Avsedd användning",
      "definition" : "Anger avsedd användning av kontaktvägen."
    },
    {
      "id" : "CareTeam.telecom.rank",
      "path" : "CareTeam.telecom.rank",
      "short" : "Prioritetsordning",
      "definition" : "Ordning i vilken kontaktvägarna bör användas. Värdet 1 anger högst prioritet."
    },
    {
      "id" : "CareTeam.telecom.period",
      "path" : "CareTeam.telecom.period",
      "short" : "Giltighetsperiod för kontaktvägen",
      "definition" : "Period under vilken kontaktvägen gäller."
    },
    {
      "id" : "CareTeam.note",
      "path" : "CareTeam.note",
      "short" : "Kommentar",
      "definition" : "Kommentar i fritext om den fasta kontakten, till exempel vägledning om när och hur invånaren kan ta kontakt.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Fast kontakt.kommentar",
        "comment" : "Kommentar eller vägledning i fritext kring den fasta kontakten. Förutsätter att note används i profilen."
      }]
    }]
  }
}

```
