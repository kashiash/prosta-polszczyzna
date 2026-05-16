#!/usr/bin/env bash
# Instalator skilla prosta-polszczyzna dla Claude Code (Mac/Linux)
set -euo pipefail

SKILL_NAME="prosta-polszczyzna"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_FILE="$SCRIPT_DIR/$SKILL_NAME.skill"
SKILLS_DIR="$HOME/.claude/skills"
TARGET_DIR="$SKILLS_DIR/$SKILL_NAME"
LEGACY_FILE="$SKILLS_DIR/$SKILL_NAME.md"

if [ ! -f "$SKILL_FILE" ]; then
    echo "Blad: Nie znaleziono pliku $SKILL_FILE" >&2
    echo "Upewnij sie, ze plik $SKILL_NAME.skill jest w tym samym katalogu co install.sh" >&2
    exit 1
fi

mkdir -p "$SKILLS_DIR"

# Usuń starą wersję single-file (jeśli istnieje)
if [ -f "$LEGACY_FILE" ]; then
    rm -f "$LEGACY_FILE"
    echo "Usunieto stara wersje: $LEGACY_FILE"
fi

# Usuń poprzednią wersję katalogu (jeśli istnieje)
if [ -d "$TARGET_DIR" ]; then
    rm -rf "$TARGET_DIR"
    echo "Usunieto poprzednia wersje: $TARGET_DIR"
fi

# Wypakuj skill (.skill to ZIP)
unzip -q "$SKILL_FILE" -d "$SKILLS_DIR"

if [ -d "$TARGET_DIR" ]; then
    echo ""
    echo "Skill '$SKILL_NAME' zainstalowany pomyslnie."
    echo "Lokalizacja: $TARGET_DIR"
    echo ""
    echo "Uruchom ponownie Claude Code, zeby skill byl dostepny."
else
    echo "Cos poszlo nie tak — katalog $TARGET_DIR nie zostal utworzony." >&2
    exit 1
fi
