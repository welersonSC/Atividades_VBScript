@echo off
title Jo-Ken-Po
mode 80,40
color 01
:inicio
set /a empate=0
set /a ganhou=0
set /a perdeu=0
set /p nome= Digite seu nome: 
set /p nome= Bem vindo %nome%! Vamos comecar a jogar!
echo.
:gamestart
set /a ai=%RANDOM% * 5 / 32768 + 1
cls
echo  ----------------------------------
echo             Jo-Ken-Po             
echo  ----------------------------------
echo.                                                            
echo  Escolha um:                       
echo  [1] Pedra                         
echo  [2] Papel                        
echo  [3] Tesoura                      
echo  [4] Lagarto                      
echo  [5] Spock                        
echo  [E] Encerrar o jogo              
echo  [R] Regras                       
echo  --------------------------------- 
set /p op=Digite a opcao desejada:
set /a cont=cont - 1

if /i %op% == 1 (goto:start)
if /i %op% == 2 (goto:start)
if /i %op% == 3 (goto:start)
if /i %op% == 4 (goto:start)
if /i %op% == 5 (goto:start)
if /i %op% == E (goto:sair)
if /i %op% == R (goto:regras) else (
echo.
echo ---------------------------------
echo          OPCAO INVALIDA !
echo ---------------------------------
pause > nul
goto:inicio)


:sair
set /p resp=Deseja encerrar? [S/N]:
if /i %resp% == s (exit) else (
goto:gamestart)

:regras 
echo.
echo Pedra:
echo    Empata com pedra; ganha de tesoura e largarto; perde de papel e spock;
echo.
echo Papel:
echo    empata com papel, ganha de pedra e spock; perde de tesoura e largarto;
echo.
echo Tesoura:
echo    empata com tesoura; ganha de largarto e papel; perde de pedra e spock;
echo.
echo largarto:
echo    empata com largarto; ganha de papel e spock; perde de pedra e tesoura;
echo.
echo Spock:
echo    empata com spock; ganha de pedra e tesoura; perde de lagarto e papel;
echo.
echo Pressione qualquer tecla para continuar.....
echo.
pause > nul
goto:gamestart
 
 
:start 

if %op%==1 (
if %ai%==1 (
echo Pedra vs Pedra 
echo resultado: empate
echo.
echo aperte qualquer tecla para continuar....
set /a empate= empate +1 
pause > nul
goto:placar)
)

if %op%==1 (
if %ai%==2 (
echo pedra vs papel
echo resultado: perdeu 
echo.
echo aperte qualquer tecla para continuar....
set /a perdeu= perdeu +1 
pause > nul
goto:placar)
)

if %op%==1 (
if %ai%==3 (
echo pedra vs tesoura
echo resultado: ganhou
echo.
echo aperte qualquer tecla para continuar....
set /a ganhou= ganhou +1  
pause > nul
goto:placar)
)

if %op%==1 (
if %ai%==4 (
echo pedra vs lagarto
echo resultado: ganhou 
echo.
echo aperte qualquer tecla para continuar....
set /a ganhou= ganhou +1  
pause > nul
goto:placar)
)

if %op%==1 (
if %ai%==5 (
echo pedra vs spock
echo resultado: perdeu 
echo.
echo aperte qualquer tecla para continuar....
set /a perdeu= perdeu +1 
pause > nul
goto:placar)
)

if %op%==2 (
if %ai%==1 (
echo papel vs pedra
echo resultado: ganhou
echo.
echo aperte qualquer tecla para continuar....
set /a ganhou= ganhou +1  
pause > nul
goto:placar)
)

if %op%==2 (
if %ai%==2 (
echo papel vs papel
echo resultado: empate
echo.
echo aperte qualquer tecla para continuar....
set /a empate= empate +1 
pause > nul
goto:placar)
)

if %op%==2 (
if %ai%==3 (
echo papel vs tesoura
echo resultado: perdeu 
echo.
echo aperte qualquer tecla para continuar....
set /a perdeu= perdeu +1 
pause > nul
goto:placar)
)

if %op%==2 (
if %ai%==4 (
echo papel vs lagarto
echo resultado: perdeu
echo.
echo aperte qualquer tecla para continuar....
set /a perdeu= perdeu +1 
pause > nul
goto:placar)
)

if %op%==2 (
if %ai%==5 (
echo papel vs spock
echo resultado: ganhou
echo.
echo aperte qualquer tecla para continuar....
set /a ganhou= ganhou +1  
pause > nul
goto:placar)
)

if %op%==3 (
if %ai%==1 (
echo tesoura vs pedra
echo resultado: perdeu 
echo.
echo aperte qualquer tecla para continuar....
set /a perdeu= perdeu +1 
pause > nul
goto:placar)
)

if %op%==3 (
if %ai%==2 (
echo tesoura vs papel
echo resultado: ganhou
echo.
echo aperte qualquer tecla para continuar....
set /a ganhou= ganhou +1    
pause > nul
goto:placar)
)

if %op%==3 (
if %ai%==3 (
echo tesoura vs tesoura
echo resultado: empate 
echo.
echo aperte qualquer tecla para continuar....
set /a empate= empate +1 
pause > nul
goto:placar)
)

if %op%==3 (
if %ai%==4 (
echo tesoura vs lagarto
echo resultado: ganhou 
echo.
echo aperte qualquer tecla para continuar....
set /a ganhou= ganhou +1  
pause > nul
goto:placar)
)

if %op%==3 (
if %ai%==5 (
echo tesoura vs spock
echo resultado: perdeu 
echo.
echo aperte qualquer tecla para continuar....
set /a perdeu= perdeu +1 
pause > nul
goto:placar)
)

if %op%==4 (
if %ai%==1 (
echo lagarto vs pedra 
echo resultado: perdeu 
echo.
echo aperte qualquer tecla para continuar....
set /a perdeu= perdeu +1 
pause > nul
goto:placar)
)

if %op%==4 (
if %ai% ==2 (
echo lagarto vs papel
echo resultado: ganhou
echo.
echo aperte qualquer tecla para continuar....
set /a ganhou= ganhou +1  
pause > nul
goto:placar)
)

if %op%==4 (
if %ai%==3 (
echo lagarto vs tesoura
echo resultado: perdeu 
echo.
echo aperte qualquer tecla para continuar....
set /a perdeu= perdeu +1 
pause > nul
goto:placar)
)
if %op%==4 (
if %ai%==4 (
echo lagarto vs lagarto
echo resultado: empate 
echo.
echo aperte qualquer tecla para continuar....
set /a empate= empate +1 
pause > nul
goto:placar)
)

if %op%==4 (
if %ai%==5 (
echo lagarto vs spock
echo resultado: ganhou
echo.
echo aperte qualquer tecla para continuar....
set /a ganhou= ganhou +1 
pause > nul
goto:placar)
)

if %op%==5 (
if %ai%==1 (
echo spock vs pedra 
echo resultado: ganhou
echo.
echo aperte qualquer tecla para continuar....
set /a ganhou= ganhou +1 
pause > nul
goto:placar)
)

if %op%==5 (
if %ai%==2 (
echo spock vs papel
echo resultado: perdeu 
echo.
echo aperte qualquer tecla para continuar....
set /a perdeu= perdeu +1  
pause > nul
goto:placar)
)

if %op%==5 (
if %ai%==3 (
echo spock vs tesoura
echo resultado: ganhou 
echo.
echo aperte qualquer tecla para continuar....
set /a ganhou= ganhou +1
pause > nul
goto:placar)
)

if %op%==5 (
if %ai%==4 (
echo spock vs lagarto
echo resultado: perdeu
echo.
echo aperte qualquer tecla para continuar....
set /a perdeu= perdeu +1 
pause > nul
goto:placar)
)

if %op%==5 (
if %ai%==5 (
echo spock vs  spock
echo resultado: empate 
echo.
echo aperte qualquer tecla para continuar....
set /a empate= empate +1 
pause > nul
goto:placar)
)

:placar
echo.
echo --------------------
echo   perdeu: %perdeu%
echo   Empate: %empate%
echo   Ganhou: %ganhou%
echo --------------------
echo.
goto:fim
:fim
set /p sair=deseja continuar? [S/N]
if /i %sair% == S (goto:gamestart) else (exit)



    

