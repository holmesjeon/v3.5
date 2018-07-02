@ECHO OFF
REM SQL SERVER Services Stop 
REM Copyright FineBuild Team � 2008 - 2016.  Distributed under Ms-Pl License
REM
REM Created 29 Sep 2006 by Ed Vassie V1.0
REM
SET SQLRC=0
SET SQLMAXRC=0
SET SQLINSTANCE=MSSQLSERVER

ECHO '?' '/?' '-?' 'HELP' '/HELP' '-HELP' | FIND /I "'%1'" > NUL
IF %ERRORLEVEL% == 0 GOTO :HELP

IF '%1' NEQ '' SET SQLINSTANCE=%1

ECHO %0 run at %DATE% %TIME% on server %COMPUTERNAME% by %USERNAME%
ECHO Parameters: INSTANCE=%SQLINSTANCE%

:SQLINSTANCE

ECHO Stopping all SQL Server Services for Instance %SQLINSTANCE%

SET SQLServName="SQL Server Analysis Services (%SQLINSTANCE%)"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server Integration Services"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server Integration Services 10.0"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server Integration Services 11.0"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server Integration Services 12.0"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server Integration Services 13.0"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server Reporting Services (%SQLINSTANCE%)"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Full-text Filter Daemon Launcher (%SQLINSTANCE%)"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server PolyBase Engine (%SQLINSTANCE%)"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server PolyBase Data Movement (%SQLINSTANCE%)"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server Launchpad (%SQLINSTANCE%)"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server Agent (%SQLINSTANCE%)"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server-Agent (%SQLINSTANCE%)"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server (%SQLINSTANCE%)"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

:COMMON

ECHO Stopping Common Services

SET SQLServName="SQL Server Browser"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server VSS Writer"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="SQL Server Active Directory Helper"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="Distributed Transaction Coordinator"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName=".NET Runtime Optimization Service v2.0.50727_x86"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="Microsoft .NET Framework NGEN v2.0.50727_x86"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName=".NET Runtime Optimization Service v2.0.50727_X64"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="Microsoft .NET Framework NGEN v2.0.50727_X64"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="Microsoft .NET Framework NGEN v4.0.30319_x86"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%

SET SQLServName="Microsoft .NET Framework NGEN v4.0.30319_X64"
NET START | FIND /I %SQLServName% > NUL
IF %ERRORLEVEL% == 0 NET STOP %SQLServName%
SET SQLRC=%ERRORLEVEL%
IF %SQLMAXRC% LSS %SQLRC% SET SQLMAXRC=%SQLRC%
GOTO END

:HELP

ECHO Usage: %0 [InstanceName] 
ECHO Default action if run without any parameters is to stop all services for the Default instance

SET SQLMAXRC=4

:END

IF %SQLMAXRC% == 1 SET SQLMAXRC=0

ECHO ********************************************
ECHO *                                               
ECHO * %0 process completed at %TIME%
ECHO * Ending with code %SQLMAXRC%                         
ECHO *                                               
ECHO ********************************************

EXIT /b %SQLMAXRC%