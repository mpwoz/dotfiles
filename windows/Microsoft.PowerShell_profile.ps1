# Goes in:
# %USERPROFILE%\Documents\WindowsPowerShell\

# Brazil aliases
function bbc { dotnet build -m -t:Clean,Build }
function bbf { dotnet build -m -v:minimal --no-restore --nologo }
Set-Alias bb bbf

# Git aliases
function gs { git status }
function ga { git add . }
function gc { param($m) git commit -m $m }
function gp { git push }
function gpl { git pull }

# Reload with:
# . $PROFILE