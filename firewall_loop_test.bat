@echo off
setlocal enabledelayedexpansion

rem =============================================================
rem  Teste de Firewall - Abertura de processos e conexões
rem  Objetivo: validar se o firewall está bloqueando acessos,
rem  execução de binários e criação de múltiplas instâncias.
rem =============================================================

rem ===== Configurações =====
set LOGFILE=%~dp0firewall_test.log
set INTERVALO=5  rem tempo em segundos entre cada ciclo
set URL_TESTE=https://www.youtube.com/watch?v=SbJN4dDcBzw

echo ============================================================= >> "%LOGFILE%"
echo Teste iniciado em %date% %time% >> "%LOGFILE%"
echo ============================================================= >> "%LOGFILE%"
echo. >> "%LOGFILE%"

:loop
echo [%date% %time%] Iniciando ciclo de teste... >> "%LOGFILE%"

rem ===== Teste 1: tentativa de abertura de URL externa =====
echo [%date% %time%] Abrindo URL de teste... >> "%LOGFILE%"
start "" "%URL_TESTE%"

rem ===== Teste 2: tentativa de abrir CMD =====
echo [%date% %time%] Executando CMD... >> "%LOGFILE%"
start "" cmd.exe

rem ===== Teste 3: tentativa de abrir executável local =====
echo [%date% %time%] Abrindo Calculadora... >> "%LOGFILE%"
start "" calc.exe

rem ===== Registro e Delay =====
echo [%date% %time%] Ciclo concluído. Aguardando %INTERVALO% segundos... >> "%LOGFILE%"
timeout /t %INTERVALO% /nobreak >nul

goto loop
