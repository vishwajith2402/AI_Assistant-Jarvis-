$ErrorActionPreference = "Stop"

$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$ExePath = Join-Path $ProjectRoot "dist\Pheonix.exe"

if (-not (Test-Path $ExePath)) {
    throw "Build Pheonix first with .\build_exe.ps1"
}

$Shell = New-Object -ComObject WScript.Shell
$DesktopShortcut = Join-Path ([Environment]::GetFolderPath("Desktop")) "Pheonix.lnk"
$StartMenuDir = Join-Path ([Environment]::GetFolderPath("Programs")) "Pheonix"
$StartMenuShortcut = Join-Path $StartMenuDir "Pheonix.lnk"

New-Item -ItemType Directory -Force -Path $StartMenuDir | Out-Null

foreach ($ShortcutPath in @($DesktopShortcut, $StartMenuShortcut)) {
    $Shortcut = $Shell.CreateShortcut($ShortcutPath)
    $Shortcut.TargetPath = $ExePath
    $Shortcut.WorkingDirectory = $ProjectRoot
    $Shortcut.Description = "Launch Pheonix AI Assistant"
    $Shortcut.Save()
}

Write-Host "Pheonix shortcuts created:"
Write-Host $DesktopShortcut
Write-Host $StartMenuShortcut
