### %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Services

## Starship

### Launch on startup
Invoke-Expression (&starship init powershell)

# Autocompletion

## Enable autocomplete

### Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

### Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

### %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Aliases

## Docker

### `docker-compose` shortcut
Set-Alias dc docker-compose

### Restart the docker compose stack
function DockerComposeRestart {
    docker-compose down
    docker-compose up -d
}
Set-Alias dcr DockerComposeRestart

### Restart and rebuild the docker compose stack
function DockerComposeRebuildRestart {
    docker-compose down
    docker-compose up -d --build
}
Set-Alias dcrr DockerComposeRebuildRestart

## Productivity

### Look for a .sln file in the current directory and open it with VS201X
function OpenCurrentDirectorySolution {
    Get-ChildItem $Path -Filter "*.sln" |
    ForEach-Object {
        Write-Output "Opening solution: $($_)"
        Start-Process $_
    }
}
Set-Alias vs OpenCurrentDirectorySolution
