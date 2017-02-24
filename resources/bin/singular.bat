@echo off          
      
set DIRNAME=%~dp0%

set SINGULAR_PLATAFORM_HOME=%DIRNAME%\..

set SINGULAR_LIB=%SINGULAR_PLATAFORM_HOME%\lib

set SINGULAR_WILDFLY=%SINGULAR_PLATAFORM_HOME%\wildfly

set JBOSS_MODULEPATH=%SINGULAR_LIB%;%SINGULAR_WILDFLY%\modules

echo.
echo     ____                  _____ _                   __           
echo    / __ \____  ___  ____ / ___/(_)___  ____ ___  __/ /___ ______ 
echo   / / / / __ \/ _ \/ __ \\__ \/ / __ \/ __ `/ / / / / __ `/ ___/ 
echo  / /_/ / /_/ /  __/ / / /__/ / / / / / /_/ / /_/ / / /_/ / /     
echo  \____/ .___/\___/_/ /_/____/_/_/ /_/\__, /\__,_/_/\__,_/_/      
echo      /_/                            /____/                       
echo.

call %SINGULAR_WILDFLY%\bin\standalone.bat 
