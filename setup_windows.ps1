Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -useb https://get.scoop.sh/ | iex
scoop install git aria2
scoop bucket add extras
scoop install vscode github
scoop update
scoop update *
New-Item -Path "~\GitHub\" -ItemType Directory -Force
if ( -not Test-Path -Path "~\GitHub\TXButterflies.github.io\.git" -type Directory -and (Get-ChildItem -Path "~\GitHub\TXButterflies.github.io" Measure-Object).count -gt 0 ) {
    Write-Host "Folder '~\GitHub\TXButterflies.github.io' is not a git repository, and is not empty. Please rename that folder to a different name"
}
github
