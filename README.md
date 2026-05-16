# Awesome Agent Skills — skille dla Claude Code

Kolekcja skillów dla [Claude Code](https://claude.ai/code), które możesz zainstalować i używać w codziennej pracy.

Każdy skill to zestaw zasad i kontekstu, który Claude ładuje automatycznie, gdy wykryje odpowiedni typ zadania. Nie musisz nic pamiętać — model wie, kiedy skill jest potrzebny.

## Dostępne skille

### `prosta-polszczyzna`

Skill do pisania polskich tekstów tak, żeby odbiorca rozumiał je **przy pierwszym czytaniu**.

Włącza się automatycznie, gdy piszesz lub edytujesz dowolny tekst po polsku — e-maile, dokumentację, raporty, komunikaty UI, commit messages. Nie dotyczy prozy artystycznej ani poezji.

**Co robi:**
- Stosuje standard *Ustandaryzowane zasady prostego języka 2024*
- Wymusza architekturę BLUF (wniosek na początku), Just-in-Time Context i Top-Down Bridge
- Pilnuje długości zdań (≤ 20 słów), strony czynnej i braku imiesłowów `-ąc`
- Eliminuje kancelaryzmy, archaizmy, kalki z angielskiego i puste formuły
- Zawiera słownik 200+ zamienników słów, przykłady przepisanych zdań i checklist walidacji

## Instalacja

### Windows (PowerShell)

```powershell
cd prosta-polszczyzna
.\install.ps1
```

### Mac / Linux (bash)

```bash
cd prosta-polszczyzna
chmod +x install.sh
./install.sh
```

Skill pojawi się w Claude Code po ponownym uruchomieniu aplikacji.

### Instalacja ręczna

1. Skopiuj katalog `prosta-polszczyzna` do `~/.claude/skills/`
2. Uruchom ponownie Claude Code.

## Struktura repo

```
awesome-agent-skills/
└── prosta-polszczyzna/
    ├── SKILL.md                          # definicja skilla
    ├── prosta-polszczyzna.skill          # gotowy pakiet do instalacji (ZIP)
    ├── install.ps1                       # instalator Windows
    ├── install.sh                        # instalator Mac/Linux
    └── references/
        ├── slownik-substytucji.md        # 200+ zamienników słów
        ├── przyklady-zdan.md             # przykłady przepisanych zdań
        ├── checklist-i-walidacja.md      # 9-punktowy checklist + klasy Jasnopis
        └── slownictwo-it.md             # terminologia IT po polsku
```

## Jak dodać swój skill

1. Zrób fork tego repo.
2. Utwórz katalog `nazwa-skilla/` z plikiem `SKILL.md`.
3. Dodaj `install.ps1` i `install.sh` na wzór istniejącego skilla.
4. Otwórz Pull Request z krótkim opisem, co skill robi i kiedy się włącza.

**Wymagania dla SKILL.md:**
- Frontmatter z polami `name` i `description` (po angielsku — to widzi model przy wyborze skilla)
- Opis w języku polskim lub angielskim — zależnie od przeznaczenia
- Jasne kryterium wyzwalania (kiedy skill powinien, a kiedy nie powinien się włączyć)

## Licencja

MIT
