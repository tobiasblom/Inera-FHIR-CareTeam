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

* telecom[0].system = #phone
* telecom[0].value = "010-123 45 67"
* telecom[0].extension[availability].valueAvailability
  // Ordinarie tider, gäller tills vidare
  * availableTime[0]
    * daysOfWeek[0] = #mon
    * daysOfWeek[1] = #tue
    * daysOfWeek[2] = #wed
    * daysOfWeek[3] = #thu
    * daysOfWeek[4] = #fri
    * availableStartTime = "08:00:00"
    * availableEndTime = "16:00:00"
  // Sommartider, har företräde under perioden
  * availableTime[1]
    * daysOfWeek[0] = #mon
    * daysOfWeek[1] = #wed
    * availableStartTime = "09:00:00"
    * availableEndTime = "12:00:00"
    * extension[period].valuePeriod.start = "2027-06-14"
    * extension[period].valuePeriod.end = "2027-08-15"