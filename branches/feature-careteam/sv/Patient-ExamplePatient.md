# Exempelpatient - Inera FHIR CareTeam v0.9

## Exempel Patient: Exempelpatient

Begnt Andersson Male, Födelsedatum: 1964-08-23 ( urn:oid:1.2.752.129.2.1.3.1#196408233234)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ExamplePatient",
  "identifier" : [{
    "system" : "urn:oid:1.2.752.129.2.1.3.1",
    "value" : "196408233234"
  }],
  "name" : [{
    "family" : "Andersson",
    "given" : ["Begnt"]
  }],
  "gender" : "male",
  "birthDate" : "1964-08-23"
}

```
