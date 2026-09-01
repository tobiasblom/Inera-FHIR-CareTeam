Extension: RIVContactPointAvailability
Id: RIVContactPointAvailability
Title: "Tillgänglighet för kontaktväg"
Description: "Anger när en kontaktväg är tillgänglig."

Context: CareTeam.telecom

* ^publisher = "Inera AB"

* value[x] 1..1 MS
* value[x] only Availability

* valueAvailability ^short = "Kontaktvägens tillgänglighet"
* valueAvailability ^definition = "Anger under vilka veckodagar och tider kontaktvägen är tillgänglig."

* valueAvailability.availableTime 1..* MS
* valueAvailability.availableTime ^short = "Tillgänglig tid"
* valueAvailability.availableTime ^definition = "Anger återkommande veckodagar och tider då kontaktvägen är tillgänglig."

* valueAvailability.availableTime.daysOfWeek 1..* MS
* valueAvailability.availableTime.daysOfWeek ^short = "Veckodag"
* valueAvailability.availableTime.daysOfWeek ^definition = "Veckodag då kontaktvägen är tillgänglig."

* valueAvailability.availableTime.availableStartTime 0..1 MS
* valueAvailability.availableTime.availableStartTime ^short = "Starttid"
* valueAvailability.availableTime.availableStartTime ^definition = "Tidpunkt då tillgängligheten börjar."

* valueAvailability.availableTime.availableEndTime 0..1 MS
* valueAvailability.availableTime.availableEndTime ^short = "Sluttid"
* valueAvailability.availableTime.availableEndTime ^definition = "Tidpunkt då tillgängligheten upphör."