Instance: ExampleCareManager
InstanceOf: RIVCareManager
Title: "Exempel fast kontakt"
Description: "Fast vårdkontakt för patient, där kontakt sker via ett team."
Usage: #example

* status = #active

* subject = Reference(ExamplePatient)
* subject.display = "Anna Andersson"

* category = TypAvCareTeamCS#fast-kontakt

* period.start = "2026-01-15"

* participant[0].role = TypAvFastKontaktCS#1 "fast vårdkontakt"
* participant[0].member = Reference(ExamplePractitionerRole)
* participant[0].member.display = "Eva Svensson, sjuksköterska"

* participant[0].extension[contactViaTeam].valueReference = Reference(ExampleManagingTeam)
* participant[0].extension[contactViaTeam].valueReference.display = "Norra teamet"

* note.text = "Eva Svensson är Annas fasta vårdkontakt och nås via Norra teamet."