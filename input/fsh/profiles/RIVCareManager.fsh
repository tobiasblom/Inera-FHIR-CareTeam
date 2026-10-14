// =====================================================================
// Profil: Fast kontakt
// =====================================================================
// Profil som beskriver en Fast kontakt i en vård- och omsorgskontext.
// Profilen är baserad på FHIR-resursen CareTeam och beskriver relationen
// mellan en invånare och en namngiven vård- eller omsorgspersonal med
// samordnande funktion.

Profile:        RIVCareManager
Parent:         CareTeam
Id:             RIVCareManager-careteam
Title:          "Fast kontakt"
Description:    "Profil som beskriver relationen Fast kontakt som kan finnas mellan en invånare och namngiven vård- och omsorgspersonal i svensk vård och omsorg. En fast kontakt är en namngiven vård- eller omsorgspersonal som tilldelats en samordnande roll för en vård- och/eller omsorgstagare i syfte att skapa trygghet och kontinuitet."

* ^publisher = "Inera AB"

* insert SvenskaBasbeskrivningar

* . ^short = "Fast kontakt"
* . ^definition = "Relationen mellan en invånare och en namngiven vård- eller omsorgspersonal som tilldelats en samordnande roll för invånaren i syfte att skapa trygghet och kontinuitet. Varje resurs beskriver en fast kontakt. En invånare med flera fasta kontakter har därför flera resurser."

* identifier ^short = "Identifierare för relationen"
* identifier ^definition = "Identifierare som källsystemet använder för relationen fast kontakt. Ingår inte i informationsmodellen."

* status ^short = "proposed | active | suspended | inactive | entered-in-error"
* status ^definition = "Anger relationens status: active betyder att den fasta kontakten gäller, inactive att relationen har avslutats, suspended att den tillfälligt inte gäller, proposed att den är föreslagen men inte fastställd och entered-in-error att resursen har registrerats felaktigt och inte ska användas."
* status ^binding.description = "Status för relationen fast kontakt."

// I framtiden ska denna referera till en CorePatientProfil
* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "Invånare"
* subject ^definition = "Den invånare som har tilldelats den fasta kontakten. Avser patient inom hälso- och sjukvård eller brukare inom omsorg."

* category 1..1 MS
* category ^short = "Kategori: fast kontakt"
* category ^definition = "Anger att resursen beskriver en fast kontakt och skiljer den från andra användningar av CareTeam, till exempel team. Värdet är fast och är alltid koden fast-kontakt."
* category ^binding.description = "Kategori av CareTeam."
* category.coding 1..1
* category = TypAvCareTeamCS#fast-kontakt
* insert SvenskaKategoribeskrivningar

* name ^short = "Namn"
* name ^definition = "Används inte för fast kontakt. Namnet på den fasta kontakten framgår av den refererade personalen."

* period MS
* period ^short = "Giltighetsperiod"
* period ^definition = "Den period under vilken relationen fast kontakt gäller."
* period.start 0..1 MS
* period.start ^short = "Startdatum"
* period.start ^definition = "Datum då den fasta kontakten börjar gälla för invånaren."
* period.end 0..1 MS
* period.end ^short = "Slutdatum"
* period.end ^definition = "Datum då den fasta kontakten upphör att gälla. Saknas slutdatum gäller relationen tills vidare."

* participant 1..1 MS
* participant ^short = "Fast kontakt"
* participant ^definition = "Den namngivna vård- eller omsorgspersonal som har rollen som fast kontakt, tillsammans med typen av fast kontakt. Exakt en deltagare anges."

* participant.extension contains RIVContactViaTeamExtension named contactViaTeam 0..1
* participant.extension[contactViaTeam] MS
* participant.extension[contactViaTeam] ^short = "Team som den fasta kontakten nås via"
* participant.extension[contactViaTeam] ^definition = "Anger det team som den fasta kontakten kan nås via när det saknas kontaktvägar direkt till den namngivna personen. Kontaktvägarna hämtas då från det refererade teamets telecom."

* participant.member 1..1 MS
* participant.member only Reference(PractitionerRole)
* participant.member ^short = "Vård- eller omsorgspersonal"
* participant.member ^definition = "Den person som har uppdraget som fast kontakt, uttryckt som personen i sin roll vid den vårdande enhet eller omsorgsenhet där personen tjänstgör. Via referensen anges personalens namn, identitet (för hälso- och sjukvårdspersonal HSA-id), befattning och enhet."

* participant.role 1..1 MS
* participant.role from TypAvFastKontaktVS (required)
* participant.role ^short = "Typ av fast kontakt"
* participant.role ^definition = "Anger vilken typ av fast kontakt relationen avser, till exempel fast vårdkontakt, fast läkarkontakt i primärvården eller fast omsorgskontakt i hemtjänsten. Rollen avser funktionen i relation till invånaren, inte yrkestitel eller befattning."
* participant.role ^binding.description = "Typ av fast kontakt."

* participant.onBehalfOf ^short = "Organisation som deltagaren företräder"
* participant.onBehalfOf ^definition = "Används inte för fast kontakt. Den enhet där den fasta kontakten tjänstgör anges i den refererade PractitionerRole."
* participant.coverage[x] ^short = "Deltagarens tillgänglighet"
* participant.coverage[x] ^definition = "Används inte för fast kontakt. Giltighetstiden anges i period och kontakttider anges på kontaktvägen."

* reason ^short = "Anledning"
* reason ^definition = "Används inte för fast kontakt."

* managingOrganization ^short = "Ansvarig organisation"
* managingOrganization ^definition = "Används inte för fast kontakt. Den enhet där den fasta kontakten tjänstgör anges i den refererade PractitionerRole."

* telecom 0..* MS
* telecom.system MS
* telecom.value MS
* telecom.extension contains RIVContactPointAvailability named availability 0..1 MS
* telecom ^short = "Kontaktväg till den fasta kontakten"
* telecom ^definition = "Kontaktväg som invånaren använder för att nå den fasta kontakten, till exempel ett telefonnummer eller en webbadress. Om den fasta kontakten nås via ett team kan teamet i stället anges i participant.extension[contactViaTeam], och kontaktvägen hämtas då från teamets telecom."
* insert SvenskaKontaktvagsbeskrivningar

* note MS
* note ^short = "Kommentar"
* note ^definition = "Kommentar i fritext om den fasta kontakten, till exempel vägledning om när och hur invånaren kan ta kontakt."