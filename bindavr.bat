@echo off
@chcp 65001 > nul
setlocal

REM set LIB_PATH="%MORGANADIR%libraries/*"
set CLASSPATH="./*"

IF NOT "%2"=="-silent" (
ECHO NV AVR Bindings Generator
)
where java >nul 2>nul
if %errorlevel%==1 (
    @echo Cannot find Java. Check path or install required version.
)

java %JAVA_AGENT% -cp %CLASSPATH% org.openapitools.codegen.OpenAPIGenerator generate  -i ./resources/vri_v1/nv/swagger.yaml %*