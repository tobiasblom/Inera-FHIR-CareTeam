Invariant:   fast-kontakt-typ-kod-eller-text
Description: "Typ av fast kontakt ska anges med kod från kodverket Typ av fast kontakt, med text eller med båda. Koder från andra kodverk får inte användas."
Severity:    #error
Expression:  "(coding.exists() or text.exists()) and coding.all(system = 'https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_typ_av_fast_kontakt')"