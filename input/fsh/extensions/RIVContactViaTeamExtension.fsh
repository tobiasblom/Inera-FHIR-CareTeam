Extension: RIVContactViaTeamExtension
Id: contact-via-team
Title: "Kontakt via team"
Description: "Anger ett team som en fast kontakt kan nås via."

* ^context.type = #element
* ^context.expression = "CareTeam.participant"

* value[x] only Reference(RIVManagingTeam)