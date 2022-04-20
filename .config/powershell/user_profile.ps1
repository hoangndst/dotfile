# Prompt
Import-Module posh-git
Import-Module oh-my-posh

Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Load prompt config theme
$omp_config = Join-Path $PSScriptRoot ".\hoangndst.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# Alias 
Set-Alias ll ls
Set-Alias g git

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

