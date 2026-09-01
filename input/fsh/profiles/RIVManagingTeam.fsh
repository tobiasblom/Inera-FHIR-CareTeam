// Profil som beskriver ett team i en vård- och omsorgskontext.
// Profilen är baserad på FHIR-resursen CareTeam och beskriver ett vård-
// eller omsorgsteam som kan vara relevant för invånaren eller utgöra
// organisatoriskt sammanhang för en fast kontakt.

Profile:        RIVManagingTeam
Parent:         CareTeam
Id:             RIVManagingTeam-careteam
Title:          "Team"
Description:    "Profil som beskriver ett vård- eller omsorgsteam i svensk vård och omsorg. Ett team kan vara kopplat till en invånare och kan ha egna kontaktuppgifter. Teamet kan också utgöra kontaktväg eller organisatoriskt sammanhang för en fast kontakt."

* ^publisher = "Inera AB"

* identifier MS
* identifier ^short = "Identifierare för team"
* identifier ^definition = "Identifierare som kan användas för att identifiera teamet."

* name 0..1 MS
* name ^short = "Teamets namn"
* name ^definition = "Namn på det vård- eller omsorgsteam som beskrivs."

* subject 0..1 MS
* subject only Reference(Patient)
* subject ^short = "Invånare som teamet gäller för"
* subject ^definition = "Invånare som teamet gäller för. Kan utelämnas om teamet inte är direkt kopplat till en specifik invånare."

* category 1..1 MS
* category ^short = "Kategori av CareTeam"
* category ^definition = "Anger att resursen avser ett team."
* category.coding 1..1
* category = TypAvCareTeamCS#team

* period MS
* period.start 0..1 MS
* period.start ^short = "Startdatum"
* period.start ^definition = "Det datum då teamet börjar gälla i det aktuella sammanhanget."
* period.end 0..1 MS
* period.end ^short = "Slutdatum"
* period.end ^definition = "Det datum då teamet upphör att gälla i det aktuella sammanhanget."

* participant 0..* MS
* participant ^short = "Deltagare i teamet"
* participant ^definition = "Aktörer som ingår i eller representerar teamet. Deltagare kan exempelvis vara vård- och omsorgspersonal, roll/funktion eller annan relevant aktör."

* participant.member 0..1 MS
* participant.member only Reference(PractitionerRole or Practitioner)
* participant.member ^short = "Teamdeltagare"
* participant.member ^definition = "Aktör som ingår i teamet, exempelvis en person i roll eller en person."

* telecom 0..* MS
* telecom.system MS
* telecom.value MS
* telecom.extension contains RIVContactPointAvailability named availability 0..1 MS
* telecom ^short = "Kontaktuppgifter till teamet"
* telecom ^definition = "Kontaktuppgifter som ska användas av invånaren för att nå teamet. Kontaktuppgifterna kan även användas när en fast kontakt nås via detta team."

* telecom.extension[availability] ^short = "Tillgänglighet för kontaktväg"
* telecom.extension[availability] ^definition = "Anger under vilka tider och veckodagar kontaktvägen är tillgänglig."

* note MS
* note ^short = "Kommentar"
* note ^definition = "Kommentar eller kompletterande information om teamet."