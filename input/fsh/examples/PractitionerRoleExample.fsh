Instance: ExamplePractitionerRole
InstanceOf: PractitionerRole
Title: "Exempelroll för sjuksköterska"
Description: "Roll som beskriver vårdpersonalens funktion vid vårdenheten."
Usage: #example

* active = true

* practitioner = Reference(ExamplePractitioner)
* organization = Reference(ExampleOrganization)

* code[0] = urn:oid:1.2.752.129.2.2.1.4#206090 "Sjuksköterska"