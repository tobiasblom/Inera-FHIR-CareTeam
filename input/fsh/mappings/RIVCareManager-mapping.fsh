Mapping: RIVCareManagerToFastKontaktIM
Id: RIVCareManager-to-fast-kontakt-im
Title: "Mappning mellan informationsmodell och Fast kontakt"
Source: RIVCareManager
Target: "Informationsmodell - Fast kontakt"
Description: "Mappning mellan informationsmodellen för fasta kontakter och FHIR-profilen RIVCareManager."

* subject -> "Person.person-id" "Invånaren som den fasta kontakten gäller för. Själva person-id:t finns på den refererade Patient-resursen, i Patient.identifier."

* participant.role -> "Fast kontakt.typ" "Typ av fast kontakt enligt kodverk. Mappas till ValueSet TypAvFastKontaktVS."

* note -> "Fast kontakt.kommentar" "Kommentar eller vägledning i fritext kring den fasta kontakten. Förutsätter att note används i profilen."

* period.start -> "Fast kontakt.startdatum" "Datum då den fasta kontakten börjar gälla."

* period.end -> "Fast kontakt.slutdatum" "Datum då den fasta kontakten upphör att gälla."

* telecom.system -> "Kontaktväg.kontaktvägstyp" "Typ av kontaktväg, exempelvis telefon, e-post eller webbadress."

* telecom.value -> "Kontaktväg.värde" "Värdet för kontaktvägen, exempelvis telefonnummer, e-postadress eller URL."

* telecom.extension[availability].valueAvailability.availableTime.daysOfWeek -> "Kontakttid.veckodag" "Veckodag då kontaktvägen är tillgänglig."

* telecom.extension[availability].valueAvailability.availableTime.availableStartTime -> "Kontakttid.starttid" "Tidpunkt då kontakttiden börjar."

* telecom.extension[availability].valueAvailability.availableTime.availableEndTime -> "Kontakttid.sluttid" "Tidpunkt då kontakttiden slutar."

* participant.member -> "Personal.id" "Den namngivna personalen representeras via PractitionerRole. Personalens identifierare finns på den Practitioner-resurs som refereras från PractitionerRole.practitioner."

* participant.member -> "Personal.namn" "Personalens namn finns på den Practitioner-resurs som refereras från PractitionerRole.practitioner."

* participant.member -> "Personal.befattning" "Personalens befattning kan uttryckas på PractitionerRole.code, exempelvis med HSA Innehåll Befattning."