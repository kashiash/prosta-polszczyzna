# Słownictwo IT — propozycja rozbudowy

**STATUS:** szkic / propozycja. Zawartość do rozwoju w zależności od potrzeb zespołu.

Dokument ma być przewodnikiem dla developerów, technical writerów i PM-ów piszących o systemach IT po polsku. Pokazuje, **kiedy zostawić angielski termin techniczny**, a kiedy zastąpić go polskim odpowiednikiem.

## Spis treści

- [Zasada główna: kontekst dyktuje wybór](#zasada-główna-kontekst-dyktuje-wybór)
- [Trzy konteksty IT — różne reguły](#trzy-konteksty-it--różne-reguły)
- [1. Terminy techniczne, których NIE tłumaczymy](#1-terminy-techniczne-których-nie-tłumaczymy)
- [2. Terminy z polskimi odpowiednikami — kiedy używać których](#2-terminy-z-polskimi-odpowiednikami)
- [3. Korpomowa IT do wyrzucenia](#3-korpomowa-it-do-wyrzucenia)
- [4. Polskie fachowe terminy IT](#4-polskie-fachowe-terminy-it)
- [Propozycje do rozszerzenia](#propozycje-do-rozszerzenia)

---

## Zasada główna: kontekst dyktuje wybór

**Pierwsze pytanie przed tłumaczeniem terminu IT:** kto jest odbiorcą tekstu?

| Odbiorca | Strategia | Przykład |
|---|---|---|
| **Developer / SRE** | Zostaw angielskie terminy techniczne (cache, deploy, rollback, PR, commit). Tłumaczenie tylko utrudni. | „Wycofajmy deploy — rollback w toku, cache nadal działa" |
| **PM / kierownictwo nietechniczne** | Tłumacz technologię, zostaw biznes-terminy. Wyjaśnij konsekwencje. | „Cofamy wdrożenie. Powrót do poprzedniej wersji w toku — usługa działa." |
| **Klient końcowy / użytkownik** | Tłumacz wszystko. Skup się na tym, co użytkownik widzi i czuje. | „Naprawiamy problem. Aplikacja może chwilę działać wolniej." |
| **Marketing / sprzedaż** | Tłumacz wszystko. Termin techniczny = bariera w lejku. | „Wprowadzamy nową funkcję..." (nie: „releasujemy nowy feature") |

---

## Trzy konteksty IT — różne reguły

### Kontekst 1: Dokumentacja techniczna / kod / Slack zespołu

**Reguła:** zostaw angielski tam, gdzie jest precyzyjnym terminem branżowym. Nie wymyślaj polskich tłumaczeń, których nikt nie używa.

**OK:** *commit, branch, merge, pull request (PR), deploy, rollback, cache, queue, throttling, race condition, deadlock, stack trace, breakpoint*

**NIE OK:** *adresować problem, deliverować feature, alignować się* — to korpomowa, nie żargon techniczny.

### Kontekst 2: Dokumentacja dla użytkownika końcowego / FAQ / pomoc

**Reguła:** tłumacz wszystko, co da się przetłumaczyć bez utraty precyzji.

| ❌ Żargon | ✅ Po ludzku |
|---|---|
| Sesja wygasła | Twoja sesja jest już nieaktywna. Zaloguj się ponownie. |
| Server timeout | Serwer nie odpowiedział. Spróbuj za chwilę. |
| Invalid credentials | Niepoprawny login lub hasło. |
| Token expired | Bezpieczne logowanie wygasło. Zaloguj się ponownie. |
| Connection refused | Aplikacja nie może połączyć się z serwerem. |
| Bad request | Coś poszło nie tak. Sprawdź dane i spróbuj ponownie. |

### Kontekst 3: Materiały biznesowe / oferty / proposale

**Reguła:** użyj polskich biznes-terminów. Wyjaśnij każdy techniczny skrót przy pierwszym wystąpieniu.

❌ *Dostarczamy dedykowany SaaS w architekturze multi-tenant z separacją database-per-tenant na PostgreSQL.*

✅ *Dostarczamy aplikację w chmurze (SaaS). Każdy klient ma osobną bazę danych — pełna separacja danych. Technologia: PostgreSQL.*

---

## 1. Terminy techniczne, których NIE tłumaczymy

To są terminy, które utrwaliły się w polskim środowisku IT i ich tłumaczenie **utrudnia** komunikację z deweloperami.

### Wersjonowanie i wdrażanie

- *commit, branch, merge, rebase, cherry-pick, pull request (PR), code review, fork*
- *deploy, deployment, rollback, hotfix, canary, blue-green deployment, feature flag*
- *staging, production, environment, ENV, env var*

### Architektura

- *microservices, monolit (zostawiamy), serverless, container, pod, cluster*
- *API, REST, GraphQL, gRPC, webhook, callback, websocket*
- *cache, queue, broker, pub/sub, event sourcing, CQRS*
- *load balancer, reverse proxy, gateway, CDN*

### Bazy danych

- *query, index, primary key, foreign key, join, transaction, rollback, commit (BD)*
- *migration, schema, OLTP, OLAP, ETL*
- *NoSQL, document store, key-value, ACID*

### Bezpieczeństwo

- *SSO, MFA, OAuth, OIDC, SAML, JWT, token, refresh token, scope*
- *CSRF, XSS, SQL injection, prepared statement*
- *zero trust, principle of least privilege*

### Performance i debugowanie

- *latency, throughput, bottleneck, hotpath, profiling, tracing, observability*
- *stack trace, heap dump, memory leak, race condition, deadlock*
- *throttling, rate limit, circuit breaker, retry, backoff*

### DevOps i infrastruktura

- *CI/CD pipeline, runner, job, stage*
- *infrastructure as code (IaC), Terraform plan/apply*
- *DNS, TLS, certificate, secret, KMS, vault*

**Reguła:** jeśli devel używa danego terminu w pracy każdego dnia po angielsku, **zostaw po angielsku**. Tłumaczenie to bariera, nie pomoc.

---

## 2. Terminy z polskimi odpowiednikami

Tu jest niuans. Niektóre terminy mają funkcjonujące polskie zamienniki — i wybór zależy od kontekstu.

### Można w obie strony

| Angielski | Polski | Kiedy używać angielskiego | Kiedy używać polskiego |
|---|---|---|---|
| backup | kopia zapasowa | Zespół techniczny | Klient końcowy, dokumenty oficjalne |
| backend / frontend | warstwa serwera / klienta | Zespół developerski | Tekst dla nietechnicznych |
| bug | błąd | Slack zespołu | Wszystko inne |
| debug | debugowanie / diagnostyka | Zespół | Dokumentacja użytkownika |
| dependency | zależność | Mówiąc o pakietach (npm, NuGet) | Wszystko inne |
| download | pobieranie | Mówiąc o transferze danych | Akcje użytkownika („pobierz plik") |
| feature | funkcja / funkcjonalność | Slack, planowanie | Komunikacja zewnętrzna |
| issue | sprawa / problem / zgłoszenie | GitHub/JIRA | Tekst poza systemem |
| kanban / scrum | (nie tłumaczymy) | Wszędzie | — |
| pipeline | przepływ pracy / proces | DevOps | Tekst biznesowy |
| release | wydanie / wersja | Slack zespołu | Komunikacja z klientem |
| release notes | informacje o wydaniu / aktualizacjach | Tytuł sekcji w repo | Komunikacja z klientem |
| repository (repo) | repozytorium | Wszędzie | — |
| roadmap | mapa drogowa / plan rozwoju | Slack zespołu | Tekst dla klienta |
| stakeholder | interesariusz | (nie używaj) | Tekst biznesowy |
| update | aktualizacja | (oba OK) | Wszędzie |
| upload | wysyłanie / przesyłanie | Mówiąc o transferze | Akcje użytkownika („wyślij plik") |
| user | użytkownik | (oba OK) | Wszędzie |

### Polski wygrywa w kontekstach biznesowych

Nawet zespół techniczny powinien używać polskich wersji w:
- mailach do klientów
- ofertach handlowych
- prezentacjach dla zarządu
- materiałach marketingowych
- ogłoszeniach o pracę (poza działami stricte technicznymi)

### Angielski wygrywa wewnątrz zespołu

Wewnątrz zespołu technicznego — używanie polskich tłumaczeń typu *gałąź* (zamiast branch), *zatwierdzenie* (zamiast commit), *zlewanie* (zamiast merge) tworzy sztuczność i utrudnia komunikację. To anti-pattern.

---

## 3. Korpomowa IT do wyrzucenia

To są kalki z angielskiego, które trafiły do polskich firm IT — i **utrudniają** komunikację. Wyrzuć.

### Czasowniki

| ❌ Korpomowa | ✅ Polski |
|---|---|
| adresować problem | rozwiązywać problem / zająć się problemem |
| alignować się | uzgadniać / synchronizować |
| approachować klienta | nawiązywać kontakt z klientem |
| deliverować feature | wdrażać funkcję |
| eskalować problem | przekazywać wyżej |
| facilitować spotkanie | prowadzić spotkanie |
| kommitować się do daty | zobowiązywać się |
| ownować temat | odpowiadać za temat |
| performować | wykonywać / działać |
| pivotować | zmieniać kierunek |
| pushować zmiany | wprowadzać zmiany |
| reachować klienta | kontaktować się z klientem |
| requestować review | prosić o przegląd |
| revertować decyzję | wycofywać decyzję |
| skopować zadanie | określać zakres zadania |
| spike (zrobić spike) | krótka analiza wstępna |

### Rzeczowniki i frazy

| ❌ Korpomowa | ✅ Polski |
|---|---|
| approval (czekam na) | akceptacja (czekam na) |
| ASAP | jak najszybciej |
| big picture | szerszy obraz |
| blocker | przeszkoda / blokada |
| brain dump | wylanie pomysłów |
| call (planujemy) | rozmowa / spotkanie |
| dependency (mam dependency na X) | zależność (zależy mi od X) |
| follow-up | dalszy krok / przypomnienie |
| heads up | uprzedzenie / informacja |
| input (potrzebuję twojego inputu) | opinia / wkład |
| KPI | wskaźnik / miernik |
| meeting | spotkanie |
| nice to have | dobrze byłoby mieć |
| ownership (ownership tematu) | odpowiedzialność |
| pressing (jest pressing) | presja / pilne |
| ramp up | rozkręcanie |
| recurring meeting | cykliczne spotkanie |
| scope creep | rozszerzanie zakresu |
| sync up | spotkanie synchronizujące |
| takeaway (key takeaway) | wniosek (kluczowy wniosek) |
| timeline | harmonogram |
| touchbase / touch base | kontakt / krótkie spotkanie |
| value-add | wartość dodana |

---

## 4. Polskie fachowe terminy IT

Dobrze ugruntowane polskie terminy z dziedziny IT, których powinniśmy używać:

### Architektura

- *przepływ danych, integracja systemów, warstwa pośrednia, warstwa prezentacji, warstwa logiki biznesowej*
- *bezstanowy / stanowy (API), synchroniczny / asynchroniczny*
- *spójność danych, dostępność systemu*

### Bezpieczeństwo

- *uwierzytelnianie* (authentication), *autoryzacja* (authorization)
- *podatność* (vulnerability), *zagrożenie* (threat), *ryzyko* (risk)
- *szyfrowanie, podpis cyfrowy, klucz prywatny / publiczny*
- *dwuetapowe logowanie / dwuskładnikowe uwierzytelnianie* (2FA / MFA)

### Procesy

- *wytwarzanie oprogramowania* (software development)
- *cykl życia oprogramowania* (SDLC)
- *zarządzanie projektem*
- *wymagania funkcjonalne / niefunkcjonalne*
- *dług techniczny* (technical debt)

### Jakość

- *testy jednostkowe / integracyjne / akceptacyjne / wydajnościowe*
- *zapewnienie jakości* (QA), *kontrola jakości* (QC)
- *pokrycie kodu* (code coverage)
- *przegląd kodu* (code review) — choć „code review" też OK w zespole

---

## Propozycje do rozszerzenia

Ten plik jest **szkicem**. Możliwe rozbudowy:

### Wariant A: Jeden plik IT (obecny)

Plus: prosty, łatwo znaleźć
Minus: gdy rozrośnie się, ciężko nawigować

### Wariant B: Podział tematyczny

```
references/
├── slownictwo-it-ogolne.md      ← podstawowe terminy
├── slownictwo-it-devops.md      ← deploy, CI/CD, infra
├── slownictwo-it-bezpieczenstwo.md  ← auth, security, compliance
├── slownictwo-it-bd.md          ← bazy danych, SQL, NoSQL
├── slownictwo-it-frontend.md    ← UI/UX, framework, browser
└── slownictwo-it-biznes.md      ← SaaS, sprzedaż, KPI biznesowe
```

Plus: każdy obszar może mieć dużo szczegółów
Minus: agent musi wiedzieć, do którego pliku sięgnąć

### Wariant C: Kontekstowe szablony

```
references/
├── szablony-release-notes.md         ← przykłady dobrych release notes
├── szablony-dokumentacji-api.md      ← jak pisać dokumentację API
├── szablony-pism-incident.md         ← komunikacja w trakcie awarii
├── szablony-status-update.md         ← status update do klienta
└── szablony-onboarding.md            ← onboarding nowych pracowników
```

To rozszerzenie pokrywa **wzorce sytuacji**, nie tylko słownictwo.

### Wariant D: Dla DataDrive (kontekstowy)

Dla zespołu DataDrive sensowne byłyby konkretne dokumenty:

```
references/
├── slownictwo-it.md                       ← ogólne IT
├── slownictwo-fleet-management.md         ← terminologia branżowa: tachograph, GPS, telematyka
├── przyklady-dokumentacji-xaf.md          ← XAF/XPO/Blazor — konkretne wzorce
├── przyklady-pism-mpk.md                  ← komunikacja z klientami publicznymi (MPK, służby)
└── szablony-incident-fleetmanager.md      ← jak pisać o awariach do operatorów flot
```

---

## Sugerowana następna iteracja

1. **Wybierz wariant** rozbudowy (A, B, C, D — albo własny).
2. **Zacznij od jednego pliku**, którego najbardziej potrzebujesz w codziennej pracy.
3. **Zbieraj przykłady z prawdziwych dokumentów** swojego zespołu — to da najlepszy materiał.
4. **Iteruj** — po miesiącu sprawdź, co działa, co nie.

**Nie próbuj robić wszystkiego naraz.** Lepiej mieć jeden dobry plik niż pięć szkiców.
