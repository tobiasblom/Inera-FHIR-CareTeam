# Exempelroll för sjuksköterska - Inera FHIR CareTeam v0.9

## Exempel PractitionerRole: Exempelroll för sjuksköterska

Eva Svensson (urn:oid:1.2.752.29.4.19#SE2321000016-ABC123): Nurse at Vårdcentralen Solrosen (urn:oid:1.2.752.29.4.19#SE2321000016-VC123)

-------

| | |
| :--- | :--- |
| Aktiv: | true |
| Practitioner: | [Eva Svensson (urn:oid:1.2.752.29.4.19#SE2321000016-ABC123)](Practitioner-ExamplePractitioner.md) |
| Organization: | [Vårdcentralen Solrosen (urn:oid:1.2.752.29.4.19#SE2321000016-VC123)](Organization-ExampleOrganization.md) |
| Role: | Nurse |



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
      "system" : "http://terminology.hl7.org/CodeSystem/practitioner-role",
      "code" : "nurse",
      "display" : "Nurse"
    }]
  }]
}

```
