Extension: RIVContactViaTeamExtension
Id: riv-contact-via-team-extension
Title: "Kontakt via team"
Description: "Anger ett team som en fast kontakt kan nås via."

* ^context.type = #element
* ^context.expression = "CareTeam.participant"

* value[x] only Reference(RIVManagingTeam)