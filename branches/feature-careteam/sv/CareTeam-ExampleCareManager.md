# Exempel fast kontakt - Inera FHIR CareTeam v0.9

## Exempel CareTeam: Exempel fast kontakt

Profil: [Fast kontakt](StructureDefinition-RIVCareManager-careteam.md)

**status**: Active

**category**: Fast kontakt

**subject**: [Anna Andersson](Patient-ExamplePatient.md)

**period**: 2026-01-15 --> (pågående)

### Participants

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **Role** | **Member** |
| * |  | fast vårdkontakt | [Eva Svensson, sjuksköterska](PractitionerRole-ExamplePractitionerRole.md) |

**note**: 

> 

Eva Svensson är Annas fasta vårdkontakt och nås via Norra teamet.




## Resource Content

```json
{
  "resourceType" : "CareTeam",
  "id" : "ExampleCareManager",
  "meta" : {
    "profile" : ["https://fhir.inera.se/ig/careteam/StructureDefinition/RIVCareManager-careteam"]
  },
  "status" : "active",
  "category" : [{
    "coding" : [{
      "system" : "https://fhir.inera.se/ig/careteam/CodeSystem/typ-av-careteam-cs",
      "code" : "fast-kontakt"
    }]
  }],
  "subject" : {
    "reference" : "Patient/ExamplePatient",
    "display" : "Anna Andersson"
  },
  "period" : {
    "start" : "2026-01-15"
  },
  "participant" : [{
    "extension" : [{
      "url" : "https://fhir.inera.se/ig/careteam/StructureDefinition/riv-contact-via-team-extension",
      "valueReference" : {
        "reference" : "CareTeam/ExampleManagingTeam",
        "display" : "Norra teamet"
      }
    }],
    "role" : {
      "coding" : [{
        "system" : "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_typ_av_fast_kontakt",
        "code" : "1",
        "display" : "fast vårdkontakt"
      }]
    },
    "member" : {
      "reference" : "PractitionerRole/ExamplePractitionerRole",
      "display" : "Eva Svensson, sjuksköterska"
    }
  }],
  "note" : [{
    "text" : "Eva Svensson är Annas fasta vårdkontakt och nås via Norra teamet."
  }]
}

```
