Instance: ExampleManagingTeam
InstanceOf: RIVManagingTeam
Title: "Exempelteam"
Description: "Team som den fasta vårdkontakten ingår i och som används för kontakt."
Usage: #example

* status = #active

* identifier[0].system = "https://example.org/fhir/sid/team-id"
* identifier[0].value = "TEAM-SOLROSEN-NORRA"

* name = "Norra teamet"

* category = TypAvCareTeamCS#team

* participant[0].member = Reference(ExamplePractitionerRole)
* participant[0].member.display = "Eva Svensson, sjuksköterska"

* telecom[0].system = #phone
* telecom[0].value = "010-123 45 67"

* telecom[0].extension[availability].valueAvailability.availableTime[0].daysOfWeek[0] = #mon
* telecom[0].extension[availability].valueAvailability.availableTime[0].daysOfWeek[1] = #tue
* telecom[0].extension[availability].valueAvailability.availableTime[0].daysOfWeek[2] = #wed
* telecom[0].extension[availability].valueAvailability.availableTime[0].daysOfWeek[3] = #thu
* telecom[0].extension[availability].valueAvailability.availableTime[0].daysOfWeek[4] = #fri
* telecom[0].extension[availability].valueAvailability.availableTime[0].availableStartTime = "08:00:00"
* telecom[0].extension[availability].valueAvailability.availableTime[0].availableEndTime = "16:00:00"

* note.text = "Teamets telefonnummer används för kontakt med medarbetare i teamet."