# Invoke build.ps1 script
$buildScript = ".\build-no-tests.ps1"
if (Test-Path $buildScript) {
    & $buildScript
} else {
    Write-Host "build.ps1 not found." -ForegroundColor Red
    exit 1
}

# Check if the BUILD directory exists before attempting to compress
$buildDirectory = ".\BUILD"
if (Test-Path $buildDirectory) {
    # Compress the contents of the BUILD directory into avr-tools.zip
    Compress-Archive -Path "$buildDirectory\*" -DestinationPath "avr-tools.zip" -Force
    Write-Host "Compression successful: avr-tools.zip created."
} else {
    Write-Host "BUILD directory does not exist. Cannot create zip file." -ForegroundColor Red
}