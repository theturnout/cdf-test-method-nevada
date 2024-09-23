call build-no-tests.bat
powershell -Command "Compress-Archive -Path 'BUILD\*' -DestinationPath 'BUILD.zip' -Force" 