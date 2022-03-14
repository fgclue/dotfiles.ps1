# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt Night-Owl

# Load Prompt Config
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'fg.omp.json'

# Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History


# FZF
Import-Module PSFzf
Set-PSFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'


# Aliases
Set-Alias weather "X:\weather.bat" 
Set-Alias ll ls
Set-Alias claer clear
Set-Alias caler clear
Set-Alias nvi nvim
Set-Alias y-dl youtube-dl
Set-Alias yt-dl youtube-dl
Set-Alias icescoop scoop
Set-Alias icecreamscoop scoop
Set-Alias chocolate chocolatey
Set-Alias la ls 
Set-Alias cs "X:\home\fg\pstuff\cs.ps1"
Set-Alias ramen "X:\givemeramen.ps1"
Set-Alias 0n nano
Set-Alias nan nano

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
