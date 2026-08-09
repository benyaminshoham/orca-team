[CmdletBinding()]
param(
    [string]$Destination,
    [switch]$Force
)

$ErrorActionPreference = 'Stop'

if ([string]::IsNullOrWhiteSpace($Destination)) {
    if (-not [string]::IsNullOrWhiteSpace($env:CODEX_HOME)) {
        $Destination = Join-Path $env:CODEX_HOME 'skills'
    }
    else {
        $Destination = Join-Path $HOME '.codex\skills'
    }
}

$RepositoryRoot = Split-Path -Parent $PSScriptRoot
$SkillsSource = Join-Path $RepositoryRoot 'skills'
$SkillNames = @('build-agent-team', 'run-agent-team-on-codex')

foreach ($SkillName in $SkillNames) {
    $ManifestPath = Join-Path (Join-Path $SkillsSource $SkillName) 'SKILL.md'
    if (-not (Test-Path -LiteralPath $ManifestPath -PathType Leaf)) {
        throw "Could not find bundled skill manifest: $ManifestPath"
    }
}

New-Item -ItemType Directory -Path $Destination -Force | Out-Null
$BackupStamp = Get-Date -Format 'yyyyMMddHHmmss'

foreach ($SkillName in $SkillNames) {
    $SourcePath = Join-Path $SkillsSource $SkillName
    $TargetPath = Join-Path $Destination $SkillName

    if (Test-Path -LiteralPath $TargetPath) {
        if (-not $Force) {
            throw "Refusing to replace existing skill '$TargetPath'. Re-run with -Force to back it up and install this copy."
        }

        $BackupPath = "$TargetPath.backup.$BackupStamp"
        Move-Item -LiteralPath $TargetPath -Destination $BackupPath
        Write-Host "Backed up $SkillName to $BackupPath"
    }

    Copy-Item -LiteralPath $SourcePath -Destination $TargetPath -Recurse
    Write-Host "Installed $SkillName to $TargetPath"
}

Write-Host 'Installation complete. Restart Codex to reload skills.'
