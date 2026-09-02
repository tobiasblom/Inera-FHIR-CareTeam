# Exempel vårdpersonal - Inera FHIR CareTeam v0.9

## Exempel Practitioner: Exempel vårdpersonal

**identifier**: `urn:oid:1.2.752.29.4.19`/SE2321000016-ABC123, `urn:oid:1.2.752.129.2.1.4.1`/196912302345

**name**: Eva Svensson 

**gender**: Female



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ExamplePractitioner",
  "identifier" : [{
    "system" : "urn:oid:1.2.752.29.4.19",
    "value" : "SE2321000016-ABC123"
  },
  {
    "system" : "urn:oid:1.2.752.129.2.1.4.1",
    "value" : "196912302345"
  }],
  "name" : [{
    "family" : "Svensson",
    "given" : ["Eva"]
  }],
  "gender" : "female"
}

```
