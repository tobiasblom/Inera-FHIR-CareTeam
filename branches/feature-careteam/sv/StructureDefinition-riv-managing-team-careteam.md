# Team - Inera FHIR CareTeam v0.9

## Resursprofil: Team 

**Användningar:**

* Referera till denna Profil: [Kontakt via team](StructureDefinition-contact-via-team.md)
* Exempel för denna Profil: [Norra teamet](CareTeam-ExampleManagingTeam.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.fhir.careteam|current/StructureDefinition/riv-managing-team-careteam)

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

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [CareTeam](http://hl7.org/fhir/R5/careteam.html) 

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

Denna struktur är härledd från [CareTeam](http://hl7.org/fhir/R5/careteam.html) 

#### Terminologibindningar (differential)

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [CareTeam](http://hl7.org/fhir/R5/careteam.html) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-riv-managing-team-careteam.csv), [Excel](../StructureDefinition-riv-managing-team-careteam.xlsx), [Schematron](../StructureDefinition-riv-managing-team-careteam.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "riv-managing-team-careteam",
  "url" : "https://fhir.inera.se/ig/careteam/StructureDefinition/riv-managing-team-careteam",
  "version" : "0.9",
  "name" : "RIVManagingTeam",
  "title" : "Team",
  "status" : "draft",
  "date" : "2026-10-15T13:47:34+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Profil som beskriver ett vård- eller omsorgsteam i svensk vård och omsorg. Ett team kan vara kopplat till en invånare och kan ha egna kontaktuppgifter. Teamet kan också utgöra kontaktväg eller organisatoriskt sammanhang för en fast kontakt.",
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
    "name" : "Informationsmodell - Team",
    "comment" : "Mappning mellan informationsmodellen för fasta kontakter och FHIR-profilen RIVManagingTeam."
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
      "short" : "Team",
      "definition" : "Ett vård- eller omsorgsteam vid en vårdande enhet eller omsorgsenhet. Teamet kan vara organiserat kring en invånare, ha egna kontaktvägar och utgöra kontaktväg för en fast kontakt."
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
      "short" : "Teamets id",
      "definition" : "Unik identifierare för teamet.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Team.id",
        "comment" : "Identifierare för teamet."
      }]
    },
    {
      "id" : "CareTeam.status",
      "path" : "CareTeam.status",
      "definition" : "Anger teamets status: active betyder att teamet är aktuellt, inactive att det har upphört, suspended att det tillfälligt inte är aktuellt, proposed att det är föreslaget men inte fastställt och entered-in-error att resursen har registrerats felaktigt och inte ska användas.",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "CareTeamStatus"
        }],
        "strength" : "required",
        "description" : "Status för teamet.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/care-team-status|5.0.0"
      }
    },
    {
      "id" : "CareTeam.category",
      "path" : "CareTeam.category",
      "short" : "Kategori: team",
      "definition" : "Anger att resursen beskriver ett team och skiljer den från andra användningar av CareTeam, till exempel fast kontakt. Värdet är fast och är alltid koden team.",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.inera.se/ig/careteam/CodeSystem/typ-av-careteam-cs",
          "code" : "team"
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
      "short" : "Teamets namn",
      "definition" : "Teamets namn i den form det ska visas för invånaren.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Team.namn",
        "comment" : "Namn på teamet."
      }]
    },
    {
      "id" : "CareTeam.subject",
      "path" : "CareTeam.subject",
      "short" : "Invånare",
      "definition" : "Den invånare som teamet är organiserat kring. Utelämnas om teamet inte är kopplat till en specifik invånare.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Person.person-id",
        "comment" : "Invånaren som teamet gäller för. Själva person-id:t finns på den refererade Patient-resursen, i Patient.identifier."
      }]
    },
    {
      "id" : "CareTeam.period",
      "path" : "CareTeam.period",
      "short" : "Giltighetsperiod",
      "definition" : "Den period under vilken teamet gäller. Om subject är angivet avser perioden teamets koppling till invånaren, annars teamets giltighet i allmänhet.",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.period.start",
      "path" : "CareTeam.period.start",
      "short" : "Startdatum",
      "definition" : "Datum då teamet börjar gälla.",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.period.end",
      "path" : "CareTeam.period.end",
      "short" : "Slutdatum",
      "definition" : "Datum då teamet upphör att gälla. Saknas slutdatum gäller teamet tills vidare.",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant",
      "path" : "CareTeam.participant",
      "short" : "Deltagare i teamet",
      "definition" : "Vård- eller omsorgspersonal som ingår i teamet.",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant.role",
      "path" : "CareTeam.participant.role",
      "short" : "Deltagarens roll i teamet",
      "definition" : "Den roll eller funktion som deltagaren har i teamet."
    },
    {
      "id" : "CareTeam.participant.member",
      "path" : "CareTeam.participant.member",
      "short" : "Teamdeltagare",
      "definition" : "Den person som ingår i teamet, uttryckt antingen som personen i sin roll vid en enhet (PractitionerRole) eller som person (Practitioner).",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Personal",
        "comment" : "Teamdeltagare representeras med PractitionerRole eller Practitioner. Personens identifierare och namn uttrycks på Practitioner. Befattning kan uttryckas på PractitionerRole.code när PractitionerRole används."
      }]
    },
    {
      "id" : "CareTeam.participant.onBehalfOf",
      "path" : "CareTeam.participant.onBehalfOf",
      "short" : "Organisation som deltagaren företräder",
      "definition" : "Organisation som deltagaren företräder i teamet. Förväntas normalt inte användas."
    },
    {
      "id" : "CareTeam.participant.coverage[x]",
      "path" : "CareTeam.participant.coverage[x]",
      "short" : "Deltagarens tillgänglighet",
      "definition" : "Period eller schema då deltagaren ingår i teamet. Förväntas normalt inte användas."
    },
    {
      "id" : "CareTeam.reason",
      "path" : "CareTeam.reason",
      "short" : "Anledning",
      "definition" : "Används inte för team."
    },
    {
      "id" : "CareTeam.managingOrganization",
      "path" : "CareTeam.managingOrganization",
      "short" : "Enhet som teamet tillhör",
      "definition" : "Den vårdande enhet eller omsorgsenhet som teamet tillhör."
    },
    {
      "id" : "CareTeam.telecom",
      "path" : "CareTeam.telecom",
      "short" : "Kontaktväg till teamet",
      "definition" : "Kontaktväg som invånaren använder för att nå teamet, till exempel ett telefonnummer eller en webbadress. Kontaktvägen används även när en fast kontakt nås via teamet.",
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
      "definition" : "Kommentar i fritext om teamet, till exempel vägledning om när och hur invånaren kan ta kontakt.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "informationsmodell",
        "map" : "Team.kommentar",
        "comment" : "Kommentar eller kompletterande information om teamet."
      }]
    }]
  }
}

```
