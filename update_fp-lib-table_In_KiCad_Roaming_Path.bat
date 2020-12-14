@echo off
REM =====================================
REM Symbolerich
REM =====================================
SET TBL=%appdata%/kicad/fp-lib-table
echo (fp_lib_table > %TBL%
for /d %%D in (.\*.pretty) do ECHO. (lib (name %%~nD)(type KiCad)(uri "${KISYSMOD}/%%~nxD")(options "")(descr "%%~nD")) >> %TBL%
echo ) >> %TBL%


pause
