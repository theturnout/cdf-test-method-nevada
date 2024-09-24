call build-no-tests.bat
powershell -Command "Compress-Archive -Path 'BUILD\*' -DestinationPath 'avr-tools.zip' -Force" 