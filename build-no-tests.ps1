# PowerShell equivalent script
Set-StrictMode -Version Latest
Set-Location $PSScriptRoot

Write-Host "COPYING LIBS"
$BUILD = Join-Path $PSScriptRoot "BUILD"
Remove-Item -Path $BUILD -Recurse -Force -ErrorAction SilentlyContinue
$LIB = Join-Path $BUILD "libraries"
$SCHXSLT = Join-Path $BUILD "schxslt"
$TEST = Join-Path $BUILD "tests"

# Write-Host $BUILD
if (-not (Test-Path -Path $BUILD)) {
    New-Item -ItemType Directory -Path $BUILD
}
New-Item -ItemType Directory -Path $LIB
$MORGANADIR = Join-Path $PSScriptRoot "MorganaXProc-IIIse-1.4"
$LIB_PATH = Join-Path $MORGANADIR "MorganaXProc-IIIse_lib"
$XERCES_PATH = Join-Path $PSScriptRoot "xerces-2_12_2-xml-schema-1.1"
$SAXON_PATH = Join-Path $PSScriptRoot "SaxonHE12-5J"

Copy-Item -Path "$MORGANADIR\*.jar" -Destination $BUILD
# Remove-Item is the PowerShell equivalent to REM for deleting files, uncomment if needed
# Copy-Item "$MORGANADIR\*.bat" -Destination $BUILD
Copy-Item "openapi-generator-cli.jar" -Destination $BUILD
Copy-Item "$LIB_PATH\*.jar" -Destination $LIB
Copy-Item "$XERCES_PATH\*.jar" -Destination $LIB
Copy-Item "$SAXON_PATH\*.jar" -Destination $LIB
Copy-Item "$SAXON_PATH\lib\*.jar" -Destination $LIB

Write-Host "COPYING SCHXSLT"
New-Item -ItemType Directory -Path $SCHXSLT
Copy-Item "C:\Users\John\Documents\GitHub\schxslt\core\src\main\resources\xslt\*" -Destination $SCHXSLT -Recurse

Write-Host "BEGIN COPYING TEST METHOD FILES"
Copy-Item "testcdf.bat" -Destination $BUILD
Copy-Item "bindavr.bat" -Destination $BUILD
Copy-Item "testcdf.sh" -Destination $BUILD
Copy-Item "LICENSE.MD" -Destination $BUILD
Copy-Item "README.MD" -Destination $BUILD

New-Item -ItemType Directory -Path "$BUILD\output"
New-Item -ItemType Directory -Path "$BUILD\catalog_documents"
New-Item -ItemType Directory -Path "$BUILD\config"
New-Item -ItemType Directory -Path "$BUILD\pipelines"
New-Item -ItemType Directory -Path "$BUILD\resources"
New-Item -ItemType Directory -Path "$BUILD\third_party_licenses"
New-Item -ItemType Directory -Path "$BUILD\test_data"

Copy-Item "resources\*" -Destination "$BUILD\resources" -Recurse
Copy-Item "catalog_documents\*" -Destination "$BUILD\catalog_documents" -Recurse
Copy-Item "config\*" -Destination "$BUILD\config" -Recurse
Copy-Item "pipelines\*" -Destination "$BUILD\pipelines" -Recurse
Copy-Item "third_party_licenses\*" -Destination "$BUILD\third_party_licenses" -Recurse
Copy-Item "$MORGANADIR\licences\*" -Destination "$BUILD\third_party_licenses" -Recurse
Copy-Item "test_data\*" -Destination "$BUILD\test_data" -Recurse

Write-Host "BUILD DOCUMENTATION SET"

# Uncomment the following lines if needed for further testing
# Copy-Item "proxy-testcdf.bat" -Destination $BUILD
# Copy-Item "FiddlerKeystore" -Destination $BUILD
