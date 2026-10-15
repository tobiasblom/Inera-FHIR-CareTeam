# Exempel vårdpersonal - Inera FHIR CareTeam v0.9

## Exempel Practitioner: Exempel vårdpersonal

Eva Svensson (urn:oid:1.2.752.129.2.1.4.1#SE2321000016-ABC123)

-------

| | |
| :--- | :--- |
| Gender: | Female |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ExamplePractitioner",
  "identifier" : [{
    "system" : "urn:oid:1.2.752.129.2.1.4.1",
    "value" : "SE2321000016-ABC123"
  }],
  "name" : [{
    "family" : "Svensson",
    "given" : ["Eva"]
  }],
  "gender" : "female"
}

```
