# Prompt
Import-Module posh-git
Import-Module oh-my-posh

# Load prompt config theme
$omp_config = Join-Path $PSScriptRoot ".\hoangndst.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# Alias 
Set-Alias ll ls
Set-Alias g git
