# Prosta Polszczyzna — Skill dla asystentów AI

Skill do pisania tekstów po polsku tak, żeby odbiorca rozumiał je **przy pierwszym czytaniu**.

Oparty na standardzie *Ustandaryzowane zasady prostego języka 2024* (Jasnopis + Fundacja Języka Polskiego + UAM + USz + POLONICUM UW) uzupełnionym o trzy zasady architektury tekstu: BLUF, Just-in-Time Context i Top-Down Bridge.

**Autor:** [@kashiash](https://github.com/kashiash)  
**Wersja:** 1.0.0  
**Licencja:** MIT

---

## Szybki start

### Instalacja do wszystkich wykrytych asystentów

```bash
npx skills add https://github.com/kashiash/prosta-polszczyzna --skill prosta-polszczyzna --agent '*' -g -y
```

### Instalacja do wybranego asystenta

```bash
# Claude Code
npx skills add https://github.com/kashiash/prosta-polszczyzna --skill prosta-polszczyzna -g -a claude-code

# Cursor
npx skills add https://github.com/kashiash/prosta-polszczyzna --skill prosta-polszczyzna -g -a cursor

# Kiro CLI
npx skills add https://github.com/kashiash/prosta-polszczyzna --skill prosta-polszczyzna -g -a kiro-cli

# GitHub Copilot
npx skills add https://github.com/kashiash/prosta-polszczyzna --skill prosta-polszczyzna -g -a github-copilot

# Windsurf
npx skills add https://github.com/kashiash/prosta-polszczyzna --skill prosta-polszczyzna -g -a windsurf
```

### Instalacja ręczna

1. Sklonuj repozytorium:
   ```bash
   git clone https://github.com/kashiash/prosta-polszczyzna.git
   ```

2. Skopiuj folder `prosta-polszczyzna` do katalogu skillów swojego asystenta:

| Asystent | Katalog globalny | Katalog projektowy |
|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` |
| Cursor | `~/.cursor/skills/` | `.agents/skills/` |
| Kiro CLI | `~/.kiro/skills/` | `.kiro/skills/` |
| GitHub Copilot | `~/.copilot/skills/` | `.agents/skills/` |
| Windsurf | `~/.codeium/windsurf/skills/` | `.windsurf/skills/` |
| Gemini CLI | `~/.gemini/skills/` | `.agents/skills/` |

---

## Co zawiera skill

### Plik główny `SKILL.md`

- **6 zasad standardu 2024** — Ustandaryzowane zasady prostego języka
- **3 zasady architektury:** BLUF (wniosek na początku), Just-in-Time Context, Top-Down Bridge
- **Klucze gramatyczne** — zdania ≤ 20 słów, strona czynna, bez imiesłowów `-ąc`
- **Klucze słownikowe** — lista kancelaryzmów, archaizmów, modnisków i kalek z angielskiego
- **Checklist walidacji** przed publikacją

### Pliki referencyjne

| Plik | Zawartość |
|---|---|
| `references/slownik-substytucji.md` | 200+ zamienników słów (kancelaryzmy → naturalny język) |
| `references/przyklady-zdan.md` | Zanim i po — konkretne przepisania zdań |
| `references/checklist-i-walidacja.md` | 9-punktowy checklist + klasy trudności Jasnopis |
| `references/slownictwo-it.md` | Terminologia IT po polsku |

---

## Kiedy skill się włącza

Skill aktywuje się automatycznie, gdy asystent pisze lub edytuje **dowolny tekst po polsku przeznaczony dla człowieka**:

- e-maile i wiadomości (Slack, Teams)
- dokumentacja techniczna
- raporty i propozycje
- komunikaty UI i komunikaty błędów
- commit messages i opisy PR
- posty i artykuły

**Nie dotyczy:** prozy artystycznej, poezji, umów prawnych, tekstów stylizowanych.

---

## Przykład działania

**Przed:**
> W nawiązaniu do rozmowy telefonicznej z dnia wczorajszego, uprzejmie informuję, iż implementacja dedykowanego rozwiązania zostanie sfinalizowana w terminie obligatoryjnym.

**Po:**
> Wdrożymy rozwiązanie w wymaganym terminie — tak jak ustaliliśmy wczoraj przez telefon.

---

## Wymagania

- Node.js (dla `npx skills add`)
- Claude Code, Cursor, Kiro CLI lub inny asystent AI obsługujący skille

---

## Źródła

Skill oparty na publicznie dostępnych zasobach:

- **Ustandaryzowane zasady prostego języka** (2024) — https://jasnopis.pl
- **Pracownia Prostej Polszczyzny UWr** — https://prostapolszczyzna.uwr.edu.pl/
- **jasnopis.pl** — narzędzie do mierzenia trudności tekstu
- **Encyklopedia prostej polszczyzny PZU** (2021)
- **Norma ISO 24495-1** (2023) — międzynarodowy standard prostego języka

---

## Wkład i rozwój

### Znalazłeś błąd lub masz pomysł?

Otwórz issue: https://github.com/kashiash/prosta-polszczyzna/issues

### Chcesz wnieść wkład?

1. Zrób fork repozytorium
2. Utwórz gałąź: `git checkout -b feature/twoja-zmiana`
3. Zatwierdź zmiany: `git commit -am 'Dodaj: opis zmiany'`
4. Wypchnij: `git push origin feature/twoja-zmiana`
5. Otwórz Pull Request

**Wskazówki dla kontrybutorów:**
- Zmiany w słowniku substytucji — dodawaj przykłady użycia
- Nowe przykłady zdań — podaj kontekst (formalny/techniczny/UI)
- Aktualizacje standardu — podaj źródło

---

## Licencja

MIT License — Copyright (c) 2024 [@kashiash](https://github.com/kashiash)

Skill jest niezależną kompilacją edukacyjną. Wszelkie przytoczone materiały źródłowe zachowują oryginalne prawa autorskie.

## Linki

- **Repozytorium:** https://github.com/kashiash/prosta-polszczyzna
- **Issues:** https://github.com/kashiash/prosta-polszczyzna/issues
- **Autor:** [@kashiash](https://github.com/kashiash)
