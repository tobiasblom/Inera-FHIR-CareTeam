# Versionshistorik

Denna sida beskriver versionshistoriken för Implementation Guiden **Fasta kontakter**.

IG:n är under utveckling. Versionshistoriken kompletteras i samband med att nya versioner av specifikationen tas fram och publiceras.

---

## 0.9 – 2026-09-21

**Status:** Utkast

### Innehåll

- FHIR-profiler för informationsutbyte om fasta kontakter framtagna.
- Profil för **Fast kontakt** (`RIVCareManager`) baserad på FHIR-resursen `CareTeam`.
- Profil för **Team** (`RIVManagingTeam`) baserad på FHIR-resursen `CareTeam`.
- Terminologi och extensions som används av profilerna framtagna.
- FSH-mappningar mellan informationsmodellen och profilerna framtagna.
- Dokumentation av informationsunderlag, användningsfall samt roller och ansvar tillagd.
- Dokumentation av mappningen mellan informationsmodellen och FHIR-realiseringen påbörjad.
- Profilerna tekniskt validerade med SUSHI.

### Kända återstående delar

Implementeringsdelen av IG:n är ännu inte färdigställd. Bland annat återstår beskrivning av:

- REST-interaktioner och sökparametrar
- förväntade svar
- CapabilityStatement
- felhantering
- säkerhet och behörighet
- testning och validering

---

## Tidigare utkast

Tidigare arbetsversioner har använts under framtagandet av profiler, terminologi och mappningar. Dessa har inte publicerats som formella versioner av Implementation Guiden.