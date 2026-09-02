# Exempelpatient - Inera FHIR CareTeam v0.9

## Exempel Patient: Exempelpatient

Anna Andersson Female, Födelsedatum: 1978-05-23 ( urn:oid:1.2.752.129.2.1.3.1#197805232391)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ExamplePatient",
  "identifier" : [{
    "system" : "urn:oid:1.2.752.129.2.1.3.1",
    "value" : "197805232391"
  }],
  "name" : [{
    "family" : "Andersson",
    "given" : ["Anna"]
  }],
  "gender" : "female",
  "birthDate" : "1978-05-23"
}

```
