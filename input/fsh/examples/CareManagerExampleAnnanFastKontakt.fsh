Instance:    ExampleCareManagerAnnanFastKontakt
InstanceOf:  RIVCareManager
Title:       "Fast kontakt med typ i klartext"
Description: "Exempel på en fast kontakt vars typ inte finns i kodverket och därför anges i klartext."
Usage:       #example

* status = #active

* subject = Reference(ExamplePatient)
* category = TypAvCareTeamCS#fast-kontakt
* participant.role.text = "Fast kontakt i LSS"
* participant.member = Reference(ExamplePractitionerRole)