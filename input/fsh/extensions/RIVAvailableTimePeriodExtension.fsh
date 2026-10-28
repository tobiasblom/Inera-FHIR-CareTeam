Extension: RIVAvailableTimePeriodExtension
Id: available-time-period
Title: "Period för tillgänglig tid"
Description: "Anger under vilken datumperiod de angivna veckodagarna och tiderna gäller."

Context: Availability.availableTime

* ^publisher = "Inera AB"

* value[x] 1..1 MS
* value[x] only Period

* valuePeriod ^short = "Giltighetsperiod för tiderna"
* valuePeriod ^definition = "Datumperiod under vilken veckodagarna och tiderna gäller. Saknas perioden gäller tiderna tills vidare."