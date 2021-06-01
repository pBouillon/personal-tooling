Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

scoop bucket add extras
scoop bucket add nerd-fonts

scoop install^
 7zip^
 bat^
 dotnet-sdk^
 FiraCode^
 git^
 gitui^
 linqpad^
 python^
 starship^
 vlc^
 vscode^
 windows-terminal
