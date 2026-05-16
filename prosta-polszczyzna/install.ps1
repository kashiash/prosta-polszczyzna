# Instalator skilla prosta-polszczyzna dla Claude Code (Windows)
param(
    [string]$SkillFile = ""
)

$skillName = "prosta-polszczyzna"
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not $SkillFile) {
    $SkillFile = Join-Path $scriptDir "$skillName.skill"
}
$skillsDir = Join-Path $env:USERPROFILE ".claude\skills"
$targetDir = Join-Path $skillsDir $skillName
$legacyFile = Join-Path $skillsDir "$skillName.md"

if (-not (Test-Path $SkillFile)) {
    Write-Error "Nie znaleziono pliku: $SkillFile"
    Write-Error "Upewnij sie, ze plik $skillName.skill jest w tym samym katalogu co install.ps1"
    exit 1
}

# Utwórz katalog skills jeśli nie istnieje
New-Item -ItemType Directory -Force -Path $skillsDir | Out-Null

# Usuń starą wersję single-file (jeśli istnieje)
if (Test-Path $legacyFile) {
    Remove-Item $legacyFile -Force
    Write-Host "Usunieto stara wersje: $legacyFile" -ForegroundColor Yellow
}

# Usuń poprzednią wersję katalogu (jeśli istnieje)
if (Test-Path $targetDir) {
    Remove-Item $targetDir -Recurse -Force
    Write-Host "Usunieto poprzednia wersje: $targetDir" -ForegroundColor Yellow
}

# Wypakuj skill (.skill to ZIP)
$tempZip = Join-Path $env:TEMP "$skillName-install.zip"
Copy-Item $SkillFile $tempZip -Force
Expand-Archive -Path $tempZip -DestinationPath $skillsDir -Force
Remove-Item $tempZip -Force

if (Test-Path $targetDir) {
    Write-Host ""
    Write-Host "Skill '$skillName' zainstalowany pomyslnie." -ForegroundColor Green
    Write-Host "Lokalizacja: $targetDir"
    Write-Host ""
    Write-Host "Uruchom ponownie Claude Code, zeby skill byl dostepny."
} else {
    Write-Error "Cos poszlo nie tak — katalog $targetDir nie zostal utworzony."
    exit 1
}
