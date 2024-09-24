# Invoke build.ps1 script
$buildScript = ".\build-no-tests.ps1"
if (Test-Path $buildScript) {
    & $buildScript
} else {
    Write-Host "build.ps1 not found." -ForegroundColor Red
    exit 1
}

Set-StrictMode -Version Latest
Set-Location $PSScriptRoot
$BUILD = Join-Path $PSScriptRoot "BUILD"

Copy-Item "proxy-testcdf.bat" -Destination $BUILD
Copy-Item "FiddlerKeystore" -Destination $BUILD
$TESTS = Join-Path $PSScriptRoot "tests"
Copy-Item "$TESTS\*" -Destination "$BUILD\tests" -Recurse