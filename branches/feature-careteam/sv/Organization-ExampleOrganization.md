# Exempel vårdenhet - Inera FHIR CareTeam v0.9

## Exempel Organization: Exempel vårdenhet

Vårdcentralen Solrosen (urn:oid:1.2.752.129.2.1.4.1#SE2321000016-VC123)

-------

| | |
| :--- | :--- |
| Kontaktuppgift | * Storgatan 12 Stockholm 12345 SE (work)
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "ExampleOrganization",
  "identifier" : [{
    "system" : "urn:oid:1.2.752.129.2.1.4.1",
    "value" : "SE2321000016-VC123"
  }],
  "name" : "Vårdcentralen Solrosen",
  "contact" : [{
    "address" : {
      "use" : "work",
      "type" : "physical",
      "line" : ["Storgatan 12"],
      "city" : "Stockholm",
      "postalCode" : "12345",
      "country" : "SE"
    }
  }]
}

```
