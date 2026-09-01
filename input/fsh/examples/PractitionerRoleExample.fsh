Instance: ExamplePractitionerRole
InstanceOf: PractitionerRole
Title: "Exempelroll för sjuksköterska"
Description: "Roll som beskriver vårdpersonalens funktion vid vårdenheten."
Usage: #example

* active = true

* practitioner = Reference(ExamplePractitioner)
* organization = Reference(ExampleOrganization)

* code[0] = http://terminology.hl7.org/CodeSystem/practitioner-role#nurse "Nurse"