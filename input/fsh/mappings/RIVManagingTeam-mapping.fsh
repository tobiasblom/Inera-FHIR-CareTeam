Mapping: RIVManagingTeamToTeamIM
Id: RIVManagingTeam-to-team-im
Title: "Mappning mellan informationsmodell och Team"
Source: RIVManagingTeam
Target: "Informationsmodell - Team"
Description: "Mappning mellan informationsmodellen för fasta kontakter och FHIR-profilen RIVManagingTeam."

* identifier -> "Team.id" "Identifierare för teamet."

* name -> "Team.namn" "Namn på teamet."

* note -> "Team.kommentar" "Kommentar eller kompletterande information om teamet."

* subject -> "Person.person-id" "Invånaren som teamet gäller för. Själva person-id:t finns på den refererade Patient-resursen, i Patient.identifier."

* telecom.system -> "Kontaktväg.kontaktvägstyp" "Typ av kontaktväg, exempelvis telefon, e-post eller webbadress."

* telecom.value -> "Kontaktväg.värde" "Värdet för kontaktvägen, exempelvis telefonnummer, e-postadress eller URL."

* telecom.extension[availability].valueAvailability.availableTime.daysOfWeek -> "Kontakttid.veckodag" "Veckodag då kontaktvägen är tillgänglig."

* telecom.extension[availability].valueAvailability.availableTime.availableStartTime -> "Kontakttid.starttid" "Tidpunkt då kontakttiden börjar."

* telecom.extension[availability].valueAvailability.availableTime.availableEndTime -> "Kontakttid.sluttid" "Tidpunkt då kontakttiden slutar."

* participant.member -> "Personal.id" "Teamdeltagare kan representeras som PractitionerRole eller Practitioner. Personalens identifierare finns på Practitioner.identifier, direkt eller via PractitionerRole.practitioner."

* participant.member -> "Personal.namn" "Personalens namn finns på Practitioner.name, direkt eller via PractitionerRole.practitioner."

* participant.member -> "Personal.befattning" "Personalens befattning kan uttryckas på PractitionerRole.code när deltagaren representeras via PractitionerRole."