// =====================================================================
// Profil: Team
// =====================================================================
// Profil som beskriver ett team i en vård- och omsorgskontext.
// Profilen är baserad på FHIR-resursen CareTeam och beskriver ett vård-
// eller omsorgsteam som kan vara relevant för invånaren eller utgöra
// organisatoriskt sammanhang för en fast kontakt.

Profile:        RIVManagingTeam
Parent:         CareTeam
Id:             riv-managing-team-careteam
Title:          "Team"
Description:    "Profil som beskriver ett vård- eller omsorgsteam i svensk vård och omsorg. Ett team kan vara kopplat till en invånare och kan ha egna kontaktuppgifter. Teamet kan också utgöra kontaktväg eller organisatoriskt sammanhang för en fast kontakt."

* ^publisher = "Inera AB"

* insert SvenskaBasbeskrivningar

* . ^short = "Team"
* . ^definition = "Ett vård- eller omsorgsteam vid en vårdande enhet eller omsorgsenhet. Teamet kan vara organiserat kring en invånare, ha egna kontaktvägar och utgöra kontaktväg för en fast kontakt."

* identifier MS
* identifier ^short = "Teamets id"
* identifier ^definition = "Unik identifierare för teamet."

* status ^short = "proposed | active | suspended | inactive | entered-in-error"
* status ^definition = "Anger teamets status: active betyder att teamet är aktuellt, inactive att det har upphört, suspended att det tillfälligt inte är aktuellt, proposed att det är föreslaget men inte fastställt och entered-in-error att resursen har registrerats felaktigt och inte ska användas."
* status ^binding.description = "Status för teamet."

* name 0..1 MS
* name ^short = "Teamets namn"
* name ^definition = "Teamets namn i den form det ska visas för invånaren."

* subject 0..1 MS
* subject only Reference(Patient)
* subject ^short = "Invånare"
* subject ^definition = "Den invånare som teamet är organiserat kring. Utelämnas om teamet inte är kopplat till en specifik invånare."

* category 1..1 MS
* category from TypAvCareTeamVS (required)
* category ^short = "Kategori: team"
* category ^definition = "Anger att resursen beskriver ett team och skiljer den från andra användningar av CareTeam, till exempel fast kontakt. Värdet är fast och är alltid koden team."
* category ^binding.description = "Typ av CareTeam enligt Ineras kodverk."
* category.coding 1..1
* category.coding.system 1..1
* category.coding.code 1..1
* category = TypAvCareTeamCS#team
* insert SvenskaKategoribeskrivningar

* period MS
* period ^short = "Giltighetsperiod"
* period ^definition = "Den period under vilken teamet gäller. Om subject är angivet avser perioden teamets koppling till invånaren, annars teamets giltighet i allmänhet."
* period.start 0..1 MS
* period.start ^short = "Startdatum"
* period.start ^definition = "Datum då teamet börjar gälla."
* period.end 0..1 MS
* period.end ^short = "Slutdatum"
* period.end ^definition = "Datum då teamet upphör att gälla. Saknas slutdatum gäller teamet tills vidare."

* participant 0..* MS
* participant ^short = "Deltagare i teamet"
* participant ^definition = "Vård- eller omsorgspersonal som ingår i teamet."

* participant.role ^short = "Deltagarens roll i teamet"
* participant.role ^definition = "Den roll eller funktion som deltagaren har i teamet."

* participant.member 0..1 MS
* participant.member only Reference(PractitionerRole or Practitioner)
* participant.member ^short = "Teamdeltagare"
* participant.member ^definition = "Den person som ingår i teamet, uttryckt antingen som personen i sin roll vid en enhet (PractitionerRole) eller som person (Practitioner)."

* participant.onBehalfOf ^short = "Organisation som deltagaren företräder"
* participant.onBehalfOf ^definition = "Organisation som deltagaren företräder i teamet. Förväntas normalt inte användas."
* participant.coverage[x] ^short = "Deltagarens tillgänglighet"
* participant.coverage[x] ^definition = "Period eller schema då deltagaren ingår i teamet. Förväntas normalt inte användas."

* reason ^short = "Anledning"
* reason ^definition = "Används inte för team."

* managingOrganization ^short = "Enhet som teamet tillhör"
* managingOrganization ^definition = "Den vårdande enhet eller omsorgsenhet som teamet tillhör."

* telecom 0..* MS
* telecom.system MS
* telecom.value MS
* telecom.extension contains RIVContactPointAvailabilityExtension named availability 0..1 MS
* telecom ^short = "Kontaktväg till teamet"
* telecom ^definition = "Kontaktväg som invånaren använder för att nå teamet, till exempel ett telefonnummer eller en webbadress. Kontaktvägen används även när en fast kontakt nås via teamet."
* insert SvenskaKontaktvagsbeskrivningar

* note MS
* note ^short = "Kommentar"
* note ^definition = "Kommentar i fritext om teamet, till exempel vägledning om när och hur invånaren kan ta kontakt."
