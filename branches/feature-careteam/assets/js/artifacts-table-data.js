window.artifactsTableData = {
  "sv": {
    "labels": {
      "type":        "Type",
      "category":    "Category",
      "useGrouping": "Use grouping",
      "clearAll":    "Clear all"
    },
    "groupDescriptions": {
      "-str-profile": "<p>Dessa definierar begränsningar på FHIR-resurser för system som följer denna implementationsguide.</p>\n"
      ,"-str-extension": "<p>Dessa definierar begränsningar på FHIR-datatyper för system som följer denna implementationsguide.</p>\n"
      ,"-term-valueset": "<p>Dessa definierar uppsättningar av koder som används av system som följer denna implementationsguide.</p>\n"
      ,"-term-codesystem": "<p>Dessa definierar nya kodsystem som används av system som följer denna implementationsguide.</p>\n"
      ,"-ex-example": "<p>Detta är exempelinstanser som visar hur data som produceras och konsumeras av system som följer denna implementationsguide kan se ut.</p>\n"
    },
    "rows": [
      { "p":1, "gid":"-str-profile", "g":"Strukturer: Resursprofiler", "n":"Fast kontakt", "i":"RIVCareManager-careteam", "t":"StructureDefinition", "u":"StructureDefinition-RIVCareManager-careteam.html", "r":"StructureDefinition/RIVCareManager-careteam", "d":"<p>Profil som beskriver relationen Fast kontakt som kan finnas mellan en invånare och namngiven vård- och omsorgspersonal i svensk vård och omsorg. En fast kontakt är en namngiven vård- eller omsorgspersonal som tilldelats en samordnande roll för en vård- och/eller omsorgstagare i syfte att skapa trygghet och kontinuitet.</p>" },
      { "p":1, "gid":"-str-profile", "g":"Strukturer: Resursprofiler", "n":"Team", "i":"RIVManagingTeam-careteam", "t":"StructureDefinition", "u":"StructureDefinition-RIVManagingTeam-careteam.html", "r":"StructureDefinition/RIVManagingTeam-careteam", "d":"<p>Profil som beskriver ett vård- eller omsorgsteam i svensk vård och omsorg. Ett team kan vara kopplat till en invånare och kan ha egna kontaktuppgifter. Teamet kan också utgöra kontaktväg eller organisatoriskt sammanhang för en fast kontakt.</p>" },
      { "p":2, "gid":"-str-extension", "g":"Strukturer: Extensiondefinitioner", "n":"Kontakt via team", "i":"riv-contact-via-team-extension", "t":"StructureDefinition", "u":"StructureDefinition-riv-contact-via-team-extension.html", "r":"StructureDefinition/riv-contact-via-team-extension", "d":"<p>Anger ett team som en fast kontakt kan nås via.</p>" },
      { "p":2, "gid":"-str-extension", "g":"Strukturer: Extensiondefinitioner", "n":"Tillgänglighet för kontaktväg", "i":"RIVContactPointAvailability", "t":"StructureDefinition", "u":"StructureDefinition-RIVContactPointAvailability.html", "r":"StructureDefinition/RIVContactPointAvailability", "d":"<p>Anger när en kontaktväg är tillgänglig.</p>" },
      { "p":3, "gid":"-term-valueset", "g":"Terminologi: Värdemängder", "n":"Typ av CareTeam", "i":"typ-av-careteam-vs", "t":"ValueSet", "u":"ValueSet-typ-av-careteam-vs.html", "r":"ValueSet/typ-av-careteam-vs", "d":"<p>ValueSet som innehåller tillåtna typer av CareTeam.</p>" },
      { "p":3, "gid":"-term-valueset", "g":"Terminologi: Värdemängder", "n":"Typ av fast kontakt", "i":"typ-av-fast-kontakt-vs", "t":"ValueSet", "u":"ValueSet-typ-av-fast-kontakt-vs.html", "r":"ValueSet/typ-av-fast-kontakt-vs", "d":"<p>Tillåtna typer av fast kontakt</p>" },
      { "p":3, "gid":"-term-valueset", "g":"Terminologi: Värdemängder", "n":"Veckodag", "i":"weekday-vs", "t":"ValueSet", "u":"ValueSet-weekday-vs.html", "r":"ValueSet/weekday-vs", "d":"<p>Tillåtna veckodagar för kontakttid.</p>" },
      { "p":4, "gid":"-term-codesystem", "g":"Terminologi: Kodsystem", "n":"Typ av CareTeam", "i":"typ-av-careteam-cs", "t":"CodeSystem", "u":"CodeSystem-typ-av-careteam-cs.html", "r":"CodeSystem/typ-av-careteam-cs", "d":"<p>Kodverk som anger vilken typ av CareTeam som avses, till exempel fast kontakt eller vårdteam.</p>" },
      { "p":4, "gid":"-term-codesystem", "g":"Terminologi: Kodsystem", "n":"Typ av fast kontakt", "i":"typ-av-fast-kontakt-cs", "t":"CodeSystem", "u":"CodeSystem-typ-av-fast-kontakt-cs.html", "r":"CodeSystem/typ-av-fast-kontakt-cs", "d":"<p>Typ av fast kontakt, dvs en specifik, namngiven person inom vården eller socialtjänsten som har ett ansvar för att ge trygghet, kontinuitet och samordning för en patient eller enskild person. Begreppet är framför allt reglerat i lag och syftar till att patienten/den enskilde vet vem hen ska vända sig till, samt att vården och insatserna blir mer samordnade och individuella.</p>" },
      { "p":5, "gid":"-ex-example", "g":"Exempel: Exempelinstanser", "n":"Exempel fast kontakt", "i":"ExampleCareManager", "t":"CareTeam", "u":"CareTeam-ExampleCareManager.html", "r":"CareTeam/ExampleCareManager", "d":"<p>Fast vårdkontakt för patient, där kontakt sker via ett team.</p>" },
      { "p":5, "gid":"-ex-example", "g":"Exempel: Exempelinstanser", "n":"Exempel vårdenhet", "i":"ExampleOrganization", "t":"Organization", "u":"Organization-ExampleOrganization.html", "r":"Organization/ExampleOrganization", "d":"<p>Vårdcentral där den fasta vårdkontakten arbetar.</p>" },
      { "p":5, "gid":"-ex-example", "g":"Exempel: Exempelinstanser", "n":"Exempel vårdpersonal", "i":"ExamplePractitioner", "t":"Practitioner", "u":"Practitioner-ExamplePractitioner.html", "r":"Practitioner/ExamplePractitioner", "d":"<p>Legitimerad sjuksköterska som är fast vårdkontakt.</p>" },
      { "p":5, "gid":"-ex-example", "g":"Exempel: Exempelinstanser", "n":"Exempelpatient", "i":"ExamplePatient", "t":"Patient", "u":"Patient-ExamplePatient.html", "r":"Patient/ExamplePatient", "d":"<p>Patient som har en fast vårdkontakt.</p>" },
      { "p":5, "gid":"-ex-example", "g":"Exempel: Exempelinstanser", "n":"Exempelroll för sjuksköterska", "i":"ExamplePractitionerRole", "t":"PractitionerRole", "u":"PractitionerRole-ExamplePractitionerRole.html", "r":"PractitionerRole/ExamplePractitionerRole", "d":"<p>Roll som beskriver vårdpersonalens funktion vid vårdenheten.</p>" },
      { "p":5, "gid":"-ex-example", "g":"Exempel: Exempelinstanser", "n":"Exempelteam", "i":"ExampleManagingTeam", "t":"CareTeam", "u":"CareTeam-ExampleManagingTeam.html", "r":"CareTeam/ExampleManagingTeam", "d":"<p>Team som den fasta vårdkontakten ingår i och som används för kontakt.</p>" }
    ]
  }
};
