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

// I framtiden ska denna referera till en CorePatientProfil 
* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "Invånare som den fasta kontakten gäller för"
* subject ^definition = "Invånare som den fasta kontakten gäller för."

* category 1..1 MS
* category ^short = "Kategori av CareTeam"
* category ^definition = "Anger att resursen avser en fast kontakt."
* category.coding 1..1
* category = TypAvCareTeamCS#fast-kontakt

* period MS
* period.start 0..1 MS
* period.start ^short = "Startdatum"
* period.start ^definition = "Det datum då den fasta kontakten börjar gälla."
* period.end 0..1 MS
* period.end ^short = "Slutdatum"
* period.end ^definition = "Det datum då den fasta kontakten upphör att gälla."

* participant 1..1 MS
* participant ^short = "Fast kontakt"
* participant ^definition = "Anger den namngivna vård- eller omsorgspersonal som har rollen som fast kontakt."

* participant.extension contains RIVContactViaTeamExtension named contactViaTeam 0..1
* participant.extension[contactViaTeam] MS
* participant.extension[contactViaTeam] ^short = "Team som den fasta kontakten nås via"
* participant.extension[contactViaTeam] ^definition = "Anger det team som den fasta kontakten kan nås via när kontaktuppgifter inte finns direkt till den namngivna personen. Kontaktuppgifter kan då hämtas från den refererade teamresursens telecom."

* participant.member 1..1 MS
* participant.member only Reference(PractitionerRole)
* participant.member ^short = "Namngiven vård- eller omsorgspersonal"
* participant.member ^definition = "Den individ som i rollen som fast kontakt har ett samordnande ansvar för invånaren."

* participant.role 1..1 MS
* participant.role from TypAvFastKontaktVS (required)
* participant.role ^short = "Typ av fast kontakt"
* participant.role ^definition = "Anger vilken typ av fast kontakt relationen avser, exempelvis fast vårdkontakt, fast läkarkontakt eller fast omsorgskontakt. Rollen avser funktion i relation till invånaren, inte yrkestitel eller befattning."

* telecom 0..* MS
* telecom.system MS
* telecom.value MS
* telecom.extension contains RIVContactPointAvailability named availability 0..1 MS
* telecom ^short = "Kontaktuppgifter till den fasta kontakten"
* telecom ^definition = "Kontaktuppgifter som ska användas av invånaren för att nå den fasta kontakten när kontaktvägen uttrycks direkt på relationen fast kontakt. Om den fasta kontakten nås via ett team kan teamet anges med participant.extension[contactViaTeam] och kontaktuppgifter uttryckas på den refererade teamresursen."

* telecom.extension[availability] ^short = "Tillgänglighet för kontaktväg"
* telecom.extension[availability] ^definition = "Anger under vilka tider och veckodagar kontaktvägen är tillgänglig."

* note MS
* note ^short = "Kommentar"
* note ^definition = "Kommentar eller kompletterande information om den fasta kontakten."
