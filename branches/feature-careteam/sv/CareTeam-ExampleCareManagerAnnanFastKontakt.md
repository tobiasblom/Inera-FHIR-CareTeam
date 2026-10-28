# Fast kontakt med typ i klartext - Inera FHIR CareTeam v0.9

## Exempel CareTeam: Fast kontakt med typ i klartext

Profil: [Fast kontakt](StructureDefinition-riv-care-manager-careteam.md)

**status**: Active

**category**: Fast kontakt

**subject**: [Anna Andersson Female, Födelsedatum: 1978-05-23 ( urn:oid:1.2.752.129.2.1.3.1#196408233234)](Patient-ExamplePatient.md)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Role** | **Member** |
| * | Fast kontakt i LSS | [Eva Svensson (urn:oid:1.2.752.129.2.1.4.1#SE2321000016-ABC123): Sjuksköterska at Vårdcentralen Solrosen (urn:oid:1.2.752.129.2.1.4.1#SE2321000016-VC123)](PractitionerRole-ExamplePractitionerRole.md) |

**telecom**: ph: 010-123 45 67



## Resource Content

```json
{
  "resourceType" : "CareTeam",
  "id" : "ExampleCareManagerAnnanFastKontakt",
  "meta" : {
    "profile" : ["https://fhir.inera.se/ig/careteam/StructureDefinition/riv-care-manager-careteam"]
  },
  "status" : "active",
  "category" : [{
    "coding" : [{
      "system" : "https://fhir.inera.se/ig/careteam/CodeSystem/typ-av-careteam-cs",
      "code" : "fast-kontakt"
    }]
  }],
  "subject" : {
    "reference" : "Patient/ExamplePatient"
  },
  "participant" : [{
    "role" : {
      "text" : "Fast kontakt i LSS"
    },
    "member" : {
      "reference" : "PractitionerRole/ExamplePractitionerRole"
    }
  }],
  "telecom" : [{
    "extension" : [{
      "url" : "https://fhir.inera.se/ig/careteam/StructureDefinition/contact-point-availability",
      "valueAvailability" : {
        "availableTime" : [{
          "daysOfWeek" : ["mon", "tue", "wed", "thu", "fri"],
          "availableStartTime" : "08:00:00",
          "availableEndTime" : "16:00:00"
        },
        {
          "extension" : [{
            "url" : "https://fhir.inera.se/ig/careteam/StructureDefinition/available-time-period",
            "valuePeriod" : {
              "start" : "2027-06-14",
              "end" : "2027-08-15"
            }
          }],
          "daysOfWeek" : ["mon", "wed"],
          "availableStartTime" : "09:00:00",
          "availableEndTime" : "12:00:00"
        }]
      }
    }],
    "system" : "phone",
    "value" : "010-123 45 67"
  }]
}

```
