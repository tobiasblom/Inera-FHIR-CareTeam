Extension: RIVContactPointAvailabilityExtension
Id: contact-point-availability
Title: "Tillgänglighet för kontaktväg"
Description: "Anger när en kontaktväg är tillgänglig."

Context: CareTeam.telecom

* ^publisher = "Inera AB"

* value[x] 1..1 MS
* value[x] only Availability

* valueAvailability ^short = "Kontaktvägens tillgänglighet"
* valueAvailability.availableTime ^definition = "Anger återkommande veckodagar och tider då kontaktvägen är tillgänglig. Flera tillgängliga tider kan anges, t.ex. ordinarie tider och tider för en viss period. Tider med angiven period har företräde framför tider utan period under den perioden. Tider med angivna perioder ska inte överlappa varandra."
* valueAvailability.availableTime ^comment = "Saknas veckodagar, tider och period är kontaktvägen tillgänglig alla dagar, hela dygnet, tills vidare."

* valueAvailability.availableTime 1..* MS
* valueAvailability.availableTime ^short = "Tillgänglig tid"
* valueAvailability.availableTime ^definition = "Anger återkommande veckodagar och tider då kontaktvägen är tillgänglig."

* valueAvailability.availableTime.daysOfWeek 1..* MS
* valueAvailability.availableTime.daysOfWeek ^short = "Veckodag"
* valueAvailability.availableTime.daysOfWeek ^definition = "Veckodag då kontaktvägen är tillgänglig."
* valueAvailability.availableTime.daysOfWeek ^comment = "Saknas veckodag gäller tiderna alla dagar i veckan."

* valueAvailability.availableTime.availableStartTime 0..1 MS
* valueAvailability.availableTime.availableStartTime ^short = "Starttid"
* valueAvailability.availableTime.availableStartTime ^definition = "Tidpunkt då tillgängligheten börjar."
* valueAvailability.availableTime.availableStartTime ^comment = "Saknas starttid gäller tillgängligheten från dagens början."

* valueAvailability.availableTime.availableEndTime 0..1 MS
* valueAvailability.availableTime.availableEndTime ^short = "Sluttid"
* valueAvailability.availableTime.availableEndTime ^definition = "Tidpunkt då tillgängligheten upphör."
* valueAvailability.availableTime.availableEndTime ^comment = "Saknas sluttid gäller tillgängligheten till dagens slut."

* valueAvailability.availableTime.extension contains RIVAvailableTimePeriodExtension named period 0..1 MS
* valueAvailability.availableTime.extension[period] ^short = "Period"
* valueAvailability.availableTime.extension[period] ^definition = "Datumperiod under vilken veckodagarna och tiderna gäller. Saknas perioden gäller tiderna tills vidare."