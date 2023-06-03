# Self-elevate the script if required
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
    if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
        $CommandLine = "-File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
        Start-Process -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
        Exit
    }
}


choco upgrade -y `
    notepadplusplus `
    googlechrome `
    sharex `
    choco-cleaner `
    winrar `
    mpc-hc `
    directoryopus `
    crystaldiskmark `
    amd-ryzen-chipset `
    cpu-z `
    evernote `
    gh `
    gpu-z `
    hwmonitor `
    powershell-core `
    python `
    cinebench `
    hwinfo `
    sysinternals `
    telegram `
    caffeine `
    powertoys `
    firefox `
    beyondcompare `
    advanced-renamer `
    vlc `
    streamdeck `
    4k-video-downloader `
    jfrog-cli `
    7zip `
    quickpar `
    openjdk `
    openjdk8 `
    git `
    msiafterburner

# aida64-extreme `


# failing crc
# choco install -y bethesdanet
# choco install -y msiafterburner

# Not sure whats up with this one, says it works but no icon
# choco install -y vscode

# Initial install is fine, but let app upgrade itself.
# choco install -y vmwareworkstation


# steam-client `
# goggalaxy `
# discord `
# twitch `
# obs-studio `
# epicgameslauncher `
# origin `
# icue `
