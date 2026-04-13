@echo off
title PALPITE DE NUMEROS
color 01
cls

:novaTentativa
cls
set /a tentativas=5
set /p player=Digite o nome do jogador: 
set /p nome= Bem vindo %nome%! Vamos comecar a jogar!
set /a number=%random% %% 50 + 1
set /a palpite=0

:start
cls
echo.
echo --------------------------------------
echo Advinhe o numero entre 01 e 50
echo --------------------------------------
echo Jogador: %player%  Tentativas: %tentativas%
echo --------------------------------------
echo Placar geral [P]
echo Encerrar     [E]
echo --------------------------------------

if %tentativas% equ 0 (
    echo Perdeu! O numero era %number%
    pause
    goto novaTentativa
)

set /p "palpite=Digite seu palpite: "

if /i "%palpite%"=="P" (
    cls
    if exist players.txt (
        type players.txt
    ) else (
        echo Nenhum placar registrado ainda.
    )
    pause
    goto start
)
if /i "%palpite%"=="E" exit

REM Verifica se o palpite é numérico
echo %palpite%|findstr /r "^[0-9][0-9]*$" >nul
if errorlevel 1 (
    echo Por favor, digite apenas numeros entre 1 e 50.
    pause
    goto start
)

if %palpite% lss 1 goto invalido
if %palpite% gtr 50 goto invalido

if %palpite% lss %number% (
    echo Errou: o numero sorteado e MAIOR
    set /a tentativas-=1
    pause
    goto start
)
if %palpite% gtr %number% (
    echo Errou: o numero sorteado e MENOR
    set /a tentativas-=1
    pause
    goto start
)
if %palpite% equ %number% (
    echo Acertou, Parabens!
    pause
    goto gravar
)

:invalido
echo Palpite invalido! Digite um numero entre 1 e 50.
pause
goto start


:gravar
:: Calculando em qual tentativa ele acertou
set /a tentativasUsadas=5 - %tentativas% + 1

echo Data: %date% %time% -- Acertou na: %tentativasUsadas%a tentativa -- Numero Sorteado: %number% -- Jogador: %player% >> players.txt
goto novaTentativa