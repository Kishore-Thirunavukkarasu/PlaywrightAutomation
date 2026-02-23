# Register a URL protocol handler 'playwright-trace' for the current project (per-user)
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Resolve-Path (Join-Path $root '..')
$handler = Join-Path $projectRoot 'scripts\playwright-protocol-handler.js'
$nodeExe = (Get-Command node).Source
$command = '"{0}" "{1}" "%1"' -f $nodeExe, $handler

# Create the protocol key under HKCU so admin not required
New-Item -Path 'HKCU:\Software\Classes\playwright-trace' -Force | Out-Null
Set-ItemProperty -Path 'HKCU:\Software\Classes\playwright-trace' -Name '(Default)' -Value 'URL:Playwright Trace'
Set-ItemProperty -Path 'HKCU:\Software\Classes\playwright-trace' -Name 'URL Protocol' -Value ''
New-Item -Path 'HKCU:\Software\Classes\playwright-trace\shell\open\command' -Force | Out-Null
Set-ItemProperty -Path 'HKCU:\Software\Classes\playwright-trace\shell\open\command' -Name '(Default)' -Value $command

Write-Output "Registered 'playwright-trace' protocol to run: $command"
Write-Output "You can unregister by removing HKCU:\\Software\\Classes\\playwright-trace"
