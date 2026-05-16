# Checklist i walidacja

Lista kontrolna do sprawdzania tekstu przed publikacją. Plus narzędzia automatyczne i czerwone flagi.

## Spis treści

- [9-punktowy checklist przed publikacją](#9-punktowy-checklist-przed-publikacją)
- [Narzędzia automatyczne](#narzędzia-automatyczne)
- [Klasy trudności Jasnopis](#klasy-trudności-jasnopis)
- [Cel dla różnych typów tekstów](#cel-dla-różnych-typów-tekstów)
- [Czerwone flagi](#czerwone-flagi)
- [Test 10-sekundowy](#test-10-sekundowy)
- [Trzy sposoby walidacji](#trzy-sposoby-walidacji)

---

## 9-punktowy checklist przed publikacją

Przeleć tekst tym filtrem **w tej kolejności**. Każdy punkt — odpowiedz „tak" albo wróć i popraw.

### 1. BLUF — wniosek na początku

Czy w pierwszym zdaniu (lub pierwszym akapicie) jest **odpowiedź na pytanie czytelnika**? Czy mając tylko pierwszy akapit, czytelnik wiedziałby, o co chodzi i co ma zrobić?

Jeśli nie — przepisz początek. Wytnij wprowadzenie, zacznij od konkluzji.

### 2. Skanowalność

Mając **10 sekund**, czy odbiorca znajdzie to, czego szuka?

Sprawdź:
- Nagłówki (śródtytuły) co 2-3 akapity
- Wytłuszczenia kluczowych informacji
- Listy zamiast wyliczeń w zdaniach
- Pierwsze zdania akapitów zawierają main point

Jeśli tekst jest „ścianą tekstu" bez struktur — dodaj nagłówki, listy, wytłuszczenia.

### 3. Długość zdań

Czy jest jakieś zdanie **powyżej 20 słów**? Policz.

Każde takie — podziel. Znajdź najbliższy spójnik (*i*, *oraz*, *ponieważ*, *który*, *co*, *że*) i postaw tam kropkę.

Cel: **średnia długość zdania <16 słów**, maksimum **20 słów**.

### 4. Strona bierna i imiesłowy

Wyszukaj (Ctrl+F) w tekście:
- końcówki `-ąc`, `-łszy`, `-wszy` (imiesłowy)
- `został*`, `została*`, `zostało*` (strona bierna)
- `*ono`, `*one` (formy bezosobowe)

Jeśli takich wystąpień jest **więcej niż 1 na 10 zdań** — przepisz.

### 5. Modne wyrazy i kancelaryzmy

Wyrzuć:
- *dedykowany, implementować, finalizować, generalnie, funkcjonować, optymalny, obligatoryjny*
- *aczkolwiek, bowiem, niniejszym, w nawiązaniu do, na dzień dzisiejszy, w chwili obecnej*
- *iż* (→ że), *albowiem* (→ ponieważ), *posiadać* (→ mieć), *przybyć* (→ przyjść)

Pełna lista: `references/slownik-substytucji.md`.

### 6. Puste formuły

Wyszukaj i usuń bez zamiennika:
- *Pragnę nadmienić / poinformować...*
- *Uprzejmie informuję / wyjaśniam...*
- *Chciałem zapytać...*
- *W trosce o najwyższą jakość...*
- *Wychodząc naprzeciw oczekiwaniom...*
- *Mam nadzieję, że ten e-mail zastaje...*

Pełna lista: `references/slownik-substytucji.md`, sekcja 8.

### 7. Komunikacja osobowa

Czy używasz **„my/ja"** i zwracasz się bezpośrednio do odbiorcy (*Pan/Pani/ty*)?

Wyszukaj:
- *zaleca się* → *zalecamy*
- *należy* → *proszę / musi Pan*
- *klient* → *Pan/Pani*
- *wnioskodawca* → *Pan/Pani (z imieniem)*

### 8. Just-in-Time Context

Dla każdego akapitu zadaj sobie pytanie: **czy czytelnik mógłby go pominąć i nadal wykonać zadanie?**

Jeśli tak — wytnij lub przenieś niżej (do sekcji „Tło", „Szczegóły", lub na koniec).

### 9. Top-Down Bridge

Czy każde nowe pojęcie jest **zakotwiczone w czymś znanym**? Czy nie wprowadzasz dwóch nieznanych rzeczy w jednym zdaniu?

Sprawdź każdy akapit, w którym jest specjalistyczny termin. Jeśli przed terminem nie ma kontekstu — dodaj.

---

## Narzędzia automatyczne

### jasnopis.pl

**Funkcja:** ocena trudności tekstu w skali 1-7 + automatyczne sugestie uproszczeń.

**Jak używać:**
1. Wklej tekst (lub URL).
2. Dostajesz klasę trudności + listę problemów.
3. Najczęstsze sugestie: skróć zdania, usuń trudne słowa, zamień rzeczowniki na czasowniki.

**Link:** https://jasnopis.pl/

### logios.pl

**Funkcja:** indeks mglistości języka **FOG-PL** (Politechnika Wrocławska + PPP UWr).

FOG = liczba lat edukacji potrzebnych do zrozumienia tekstu.

**Idealne wartości:**
- 9-12 dla tekstów ogólnych
- do 15 dla tekstów technicznych

**Link:** http://www.logios.pl/

### Dodatkowe narzędzia

- **Słownik Języka Polskiego PWN** — https://sjp.pwn.pl/
- **Wielki Słownik Języka Polskiego** — https://wsjp.pl/
- **Korpus Języka Polskiego** — http://nkjp.pl/ (sprawdzanie częstości użycia)
- **Synonim.net** — https://synonim.net/ (zamienniki słów)

---

## Klasy trudności Jasnopis

| Klasa | Poziom | Charakter | Zastosowanie |
|---|---|---|---|
| **1** | Dziecięcy | Tekst dla dzieci, czytanie głośno | Bajki, ulotki dla dzieci |
| **2** | Bardzo łatwy | Tekst dla nastolatków | Komunikaty UX, FAQ dla wszystkich |
| **3** | Łatwy | Tekst masowy | **Cel dla pism do klientów** |
| **4** | Średni | Tekst akademicki średniego poziomu | Dokumentacja użytkownika, B2 dla banków |
| **5** | Trudny | Tekst specjalistyczny | Dokumentacja API, README dev |
| **6** | Bardzo trudny | Tekst ekspercki | Whitepaper, dokumentacja dla ekspertów |
| **7** | Naukowy | Tekst naukowy | **Niedopuszczalne dla komunikacji ogólnej** |

---

## Cel dla różnych typów tekstów

| Typ dokumentu | Cel Jasnopis | Cel FOG-PL |
|---|---|---|
| Komunikat UX dla masowej publiczności | 2-3 | 6-9 |
| Pismo do klienta, FAQ | 3-4 | 9-11 |
| Dokumentacja użytkownika końcowego | 3-4 | 9-12 |
| Mail biznesowy | 3-4 | 9-12 |
| Release notes dla klientów | 3-4 | 9-12 |
| Dokumentacja API, README dev | 4-5 | 11-14 |
| Whitepaper dla ekspertów | 5-6 | 13-15 |
| Spec techniczna dla architektów | 5-6 | 13-15 |

**Wymóg B2 dla banków** (od 28 czerwca 2025 r.): komunikacja detaliczna banków musi spełniać poziom biegłości językowej B2 — co odpowiada klasie 4 Jasnopis.

---

## Czerwone flagi

Tekst wymaga **gruntownej przeróbki** (nie kosmetyki), jeśli:

- **Pierwszy akapit nie odpowiada na pytanie „po co to czytam?".** Czytelnik zostawi tekst.
- **Średnia długość zdania > 25 słów.** Niezależnie od treści, taki tekst jest trudny.
- **Więcej niż 1 strona bierna na 10 zdań.** Sygnał, że autor unika brania odpowiedzialności.
- **Pierwsze zdanie zaczyna się od:** *W nawiązaniu do..., Niniejszym..., Uprzejmie...* — kancelarka.
- **Tekst używa *iż* zamiast *że*.** Archaizm sygnalizujący starsze pochodzenie szablonu.
- **Czytelnik musi cofać się, żeby zrozumieć zdanie.** Składnia jest zbyt złożona.
- **Trzeba wyjaśnić więcej niż jeden skrót w jednym akapicie.** Przeładowanie skrótami.
- **W jednym ciągu są 3+ rzeczowniki w dopełniaczu.** Łańcuch dopełniaczowy („mięsny jeż").
- **Najważniejsza informacja jest na końcu, nie na początku.** Brak BLUF.
- **Tekst ma 1000+ słów i ani jednego śródtytułu.** Ściana tekstu, bez nawigacji.

Każda z tych flag wystarcza, żeby przepisać tekst. Dwie lub więcej — przepisz koniecznie.

---

## Test 10-sekundowy

Najlepszy test rzeczywisty.

**Procedura:**

1. Daj swój dokument osobie, która go nie widziała.
2. Zegar na **10 sekund**.
3. Po 10 sekundach zabierz tekst.
4. Zapytaj:
   - O czym to jest?
   - Co masz zrobić po lekturze?
   - Kiedy / do kiedy?

**Interpretacja wyników:**

- **Wszystkie 3 odpowiedzi precyzyjne** — tekst gotowy.
- **2 z 3 precyzyjnie** — drobne poprawki BLUF.
- **1 z 3** — wracaj do całej struktury, zacznij od BLUF.
- **0 z 3** — tekst do napisania od nowa.

Jeśli odbiorca **w ogóle się zgubił** w 10 sekund, są dwie hipotezy:

1. Brakuje BLUF — wniosek jest na końcu, początek to wstęp.
2. Tekst jest „ścianą" — brakuje wytłuszczeń, nagłówków, list.

W obu przypadkach — gruntowna przeróbka, nie kosmetyka.

---

## Trzy sposoby walidacji

Z **Ustandaryzowanych zasad prostego języka 2024**:

### 1. Narzędzia elektroniczne

Najszybsze. Jasnopis, logios, narzędzia firmowe (jeśli są).

**Plus:** w sekundę wiesz, czy tekst jest w klasie celu.
**Minus:** narzędzia nie rozumieją kontekstu. Tekst klasy 4 może być świetny dla developera, fatalny dla klienta końcowego.

### 2. Konsultacje z ludźmi

Daj tekst:
- **Specjalistom w dziedzinie** — czy treść merytoryczna jest poprawna?
- **Niespecjalistom (laikom)** — czy rozumieją tekst?
- **Osobom ze szczególnymi potrzebami komunikacyjnymi** (osoby starsze, cudzoziemcy, osoby z trudnościami poznawczymi) — czy znajdują to, czego szukają?

**Plus:** wyłapuje to, czego narzędzia nie widzą — niejasności, nieintuicyjną strukturę, sformułowania irytujące.
**Minus:** czasochłonne.

### 3. Badania fokusowe

Pełne testy z grupą docelową. 5-10 osób z grupy odbiorców, scenariusze użycia tekstu.

**Plus:** najbardziej rzetelne. Pokazuje, gdzie rzeczywiści odbiorcy się gubią.
**Minus:** kosztowne, czas tygodnie.

**Rekomendacja:** dla typowych tekstów wystarczają punkty 1 i 2. Punkt 3 — dla materiałów masowych (formularze, kluczowe komunikaty UX, regulaminy obowiązkowe).

---

## Mini-checklist dla różnych formatów

### Email

- [ ] Temat jasno mówi, czego dotyczy
- [ ] Pierwszy akapit = co, kiedy, co mam zrobić
- [ ] <250 słów (jeśli więcej — podziel na maile lub dokumenty)
- [ ] Brak otwierających formuł („Pragnę nadmienić...")
- [ ] Brak zamykających formuł („Pozostaję do dyspozycji")
- [ ] Konkretny CTA (jeśli czegoś oczekujesz)

### Dokumentacja techniczna

- [ ] Sekcja „Wymagania" na początku (czy to dla mnie?)
- [ ] „Quick start" przed pełną dokumentacją
- [ ] Wszystkie skróty rozwinięte przy pierwszym wystąpieniu
- [ ] Działające przykłady kodu
- [ ] Data ostatniej aktualizacji w stopce

### Pismo do klienta

- [ ] Tytuł pisma + numer sprawy / polisy
- [ ] Pierwsza linia: o co chodzi
- [ ] Druga linia: co klient ma zrobić
- [ ] Podstawa prawna na końcu lub w przypisie
- [ ] Forma osobowa („wypłaciliśmy", nie „zostało wypłacone")

### Release notes

- [ ] Wersja + data wydania
- [ ] Trzy sekcje: Nowości / Poprawki / Breaking changes
- [ ] Każda zmiana opisana **z perspektywy użytkownika** (nie kodu)
- [ ] Breaking changes wyraźnie oznaczone (kolor / ikona)
- [ ] Brak wewnętrznych numerów taska (JIRA-1234)

### Regulamin

- [ ] Najważniejsze warunki dla klienta — na początku
- [ ] Definicje — na końcu, nie na początku
- [ ] Każdy paragraf z nagłówkiem-pytaniem (*Co zrobić, gdy...*)
- [ ] Tabela kar i terminów wyraźnie wyodrębniona
