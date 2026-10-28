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

// Ordinarie tider, gäller tills vidare
* telecom[0].extension[RIVContactPointAvailabilityExtension].valueAvailability.availableTime[0].daysOfWeek[0] = #mon
* telecom[0].extension[RIVContactPointAvailabilityExtension].valueAvailability.availableTime[0].daysOfWeek[1] = #tue
* telecom[0].extension[RIVContactPointAvailabilityExtension].valueAvailability.availableTime[0].daysOfWeek[2] = #wed
* telecom[0].extension[RIVContactPointAvailabilityExtension].valueAvailability.availableTime[0].daysOfWeek[3] = #thu
* telecom[0].extension[RIVContactPointAvailabilityExtension].valueAvailability.availableTime[0].daysOfWeek[4] = #fri
* telecom[0].extension[RIVContactPointAvailabilityExtension].valueAvailability.availableTime[0].availableStartTime = "08:00:00"
* telecom[0].extension[RIVContactPointAvailabilityExtension].valueAvailability.availableTime[0].availableEndTime = "16:00:00"

// Sommartider, har företräde under perioden
* telecom[0].extension[RIVContactPointAvailabilityExtension].valueAvailability.availableTime[1].daysOfWeek[0] = #mon
* telecom[0].extension[RIVContactPointAvailabilityExtension].valueAvailability.availableTime[1].daysOfWeek[1] = #wed
* telecom[0].extension[RIVContactPointAvailabilityExtension].valueAvailability.availableTime[1].availableStartTime = "09:00:00"
* telecom[0].extension[RIVContactPointAvailabilityExtension].valueAvailability.availableTime[1].availableEndTime = "12:00:00"
* telecom[0].extension[RIVContactPointAvailabilityExtension].valueAvailability.availableTime[1].extension[period].valuePeriod.start = "2027-06-14"
* telecom[0].extension[RIVContactPointAvailabilityExtension].valueAvailability.availableTime[1].extension[period].valuePeriod.end = "2027-08-15"