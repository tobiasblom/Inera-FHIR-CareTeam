# Exempelteam - Inera FHIR CareTeam v0.9

## Exempel CareTeam: Exempelteam

Profil: [Team](StructureDefinition-RIVManagingTeam-careteam.md)

**identifier**: `https://example.org/fhir/sid/team-id`/TEAM-SOLROSEN-NORRA

**status**: Active

**category**: Team

**name**: Norra teamet

### Participants

| | |
| :--- | :--- |
| - | **Member** |
| * | [Eva Svensson, sjuksköterska](PractitionerRole-ExamplePractitionerRole.md) |

**telecom**: ph: 010-123 45 67

**note**: 

> 

Teamets telefonnummer används för kontakt med medarbetare i teamet.




## Resource Content

```json
{
  "resourceType" : "CareTeam",
  "id" : "ExampleManagingTeam",
  "meta" : {
    "profile" : ["https://fhir.inera.se/ig/careteam/StructureDefinition/RIVManagingTeam-careteam"]
  },
  "identifier" : [{
    "system" : "https://example.org/fhir/sid/team-id",
    "value" : "TEAM-SOLROSEN-NORRA"
  }],
  "status" : "active",
  "category" : [{
    "coding" : [{
      "system" : "https://fhir.inera.se/ig/careteam/CodeSystem/typ-av-careteam-cs",
      "code" : "team"
    }]
  }],
  "name" : "Norra teamet",
  "participant" : [{
    "member" : {
      "reference" : "PractitionerRole/ExamplePractitionerRole",
      "display" : "Eva Svensson, sjuksköterska"
    }
  }],
  "telecom" : [{
    "extension" : [{
      "url" : "https://fhir.inera.se/ig/careteam/StructureDefinition/RIVContactPointAvailability",
      "valueAvailability" : {
        "availableTime" : [{
          "daysOfWeek" : ["mon", "tue", "wed", "thu", "fri"],
          "availableStartTime" : "08:00:00",
          "availableEndTime" : "16:00:00"
        }]
      }
    }],
    "system" : "phone",
    "value" : "010-123 45 67"
  }],
  "note" : [{
    "text" : "Teamets telefonnummer används för kontakt med medarbetare i teamet."
  }]
}

```
