# Exempelroll för sjuksköterska - Inera FHIR CareTeam v0.9

## Exempel PractitionerRole: Exempelroll för sjuksköterska

Eva Svensson (urn:oid:1.2.752.129.2.1.4.1#SE2321000016-ABC123): Sjuksköterska at Vårdcentralen Solrosen (urn:oid:1.2.752.129.2.1.4.1#SE2321000016-VC123)

-------

| | |
| :--- | :--- |
| Aktiv: | true |
| Practitioner: | [Eva Svensson (urn:oid:1.2.752.129.2.1.4.1#SE2321000016-ABC123)](Practitioner-ExamplePractitioner.md) |
| Organization: | [Vårdcentralen Solrosen (urn:oid:1.2.752.129.2.1.4.1#SE2321000016-VC123)](Organization-ExampleOrganization.md) |
| Role: | Sjuksköterska |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ExamplePractitionerRole",
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/ExamplePractitioner"
  },
  "organization" : {
    "reference" : "Organization/ExampleOrganization"
  },
  "code" : [{
    "coding" : [{
      "system" : "urn:oid:1.2.752.129.2.2.1.4",
      "code" : "206090",
      "display" : "Sjuksköterska"
    }]
  }]
}

```
