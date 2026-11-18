$ErrorActionPreference = "Stop"

$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$Python = Join-Path $ProjectRoot ".venv\Scripts\python.exe"
$SpecDir = Join-Path $ProjectRoot "_build_spec"
$WorkDir = Join-Path $ProjectRoot "_build_work"
$SourceData = "$(Join-Path $ProjectRoot 'src');src"
$AssistantData = "$(Join-Path $ProjectRoot 'data');data"
$OptionalRequirements = Join-Path $ProjectRoot "requirements-optional.txt"
$ExecutableName = "Pheonix_updated"

if (-not (Test-Path $Python)) {
    Write-Host "Creating local virtual environment..."
    python -m venv (Join-Path $ProjectRoot ".venv")
}

New-Item -ItemType Directory -Force -Path $SpecDir | Out-Null
New-Item -ItemType Directory -Force -Path $WorkDir | Out-Null

Write-Host "Installing executable build tools..."
& $Python -m pip install --disable-pip-version-check -r (Join-Path $ProjectRoot "requirements-build.txt")
if ($LASTEXITCODE -ne 0) {
    throw "pip install failed with exit code $LASTEXITCODE"
}

if (Test-Path $OptionalRequirements) {
    Write-Host "Installing optional runtime features..."
    try {
        & $Python -m pip install --disable-pip-version-check -r $OptionalRequirements
        if ($LASTEXITCODE -ne 0) {
            Write-Warning "Optional runtime dependencies were not fully installed."
        }
    }
    catch {
        Write-Warning "Optional runtime dependency install skipped: $($_.Exception.Message)"
    }
}

Write-Host "Building $ExecutableName.exe..."
& $Python -m PyInstaller `
    --onefile `
    --name $ExecutableName `
    --windowed `
    --clean `
    --noconfirm `
    --specpath $SpecDir `
    --workpath $WorkDir `
    --hidden-import pyttsx3 `
    --hidden-import pyttsx3.drivers `
    --hidden-import pyttsx3.drivers.sapi5 `
    --hidden-import sounddevice `
    --hidden-import vosk `
    --hidden-import cv2 `
    --hidden-import numpy `
    --hidden-import PIL `
    --hidden-import PIL.Image `
    --hidden-import sklearn `
    --hidden-import sklearn.feature_extraction.text `
    --hidden-import sklearn.metrics.pairwise `
    --hidden-import sklearn.naive_bayes `
    --add-data $SourceData `
    --add-data $AssistantData `
    (Join-Path $ProjectRoot "assistant.py")
if ($LASTEXITCODE -ne 0) {
    throw "PyInstaller failed with exit code $LASTEXITCODE"
}

Write-Host ""
Write-Host "Executable created:"
Write-Host (Join-Path $ProjectRoot "dist\$ExecutableName.exe")
