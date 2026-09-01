Instance: ExampleOrganization
InstanceOf: Organization
Title: "Exempel vårdenhet"
Description: "Vårdcentral där den fasta vårdkontakten arbetar."
Usage: #example

* identifier[0].system = "urn:oid:1.2.752.29.4.19"
* identifier[0].value = "SE2321000016-VC123"

* name = "Vårdcentralen Solrosen"

* contact[0].address.use = #work
* contact[0].address.type = #physical
* contact[0].address.line[0] = "Storgatan 12"
* contact[0].address.city = "Stockholm"
* contact[0].address.postalCode = "12345"
* contact[0].address.country = "SE"