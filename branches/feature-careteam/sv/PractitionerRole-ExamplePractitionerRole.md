# Exempelroll för sjuksköterska - Inera FHIR CareTeam v0.9

## Exempel PractitionerRole: Exempelroll för sjuksköterska

**active**: true

**practitioner**: [Practitioner Eva Svensson ](Practitioner-ExamplePractitioner.md)

**organization**: [Organization Vårdcentralen Solrosen](Organization-ExampleOrganization.md)

**code**: Nurse



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
