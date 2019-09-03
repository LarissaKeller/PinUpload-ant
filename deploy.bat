"%USERPROFILE%\AppData\Roaming\npm\ng.cmd" build --base-href /pinupload/ && ^
git add -f dist && ^
git commit -m %1 && ^
git subtree push --prefix=dist/pinupload origin gh-pages

REM 
REM 
REM 

REM 
REM 
REM 
REM 
REM 
REM 
REM 
REM 

REM 
REM 
REM 
REM

REM 
REM 
REM 
REM

REM IF %ERRORLEVEL% EQU 0 (
REM     git add -f dist
REM )

REM Commit com mensagem. %1 será substituído pela mensagem
REM IF #ERRORLEVEL% EQU 0 (
REM    git commit -m %1
REM )

REM Envio dos arquivos para o servidor. Vamos enviar apenas
REM os arquivos debaixo de /dist (subtree), ignorando o caminho
REM /dist/pinupload no caminho do repositório. Os arquivos enviados
REM sairão localmente do branch origin para o branch gh-pages remoto
REM IF %ERRORLEVEL% EQU 0 (
 REM   git subtree push --prefix=/dist/pinupload origin gh-pages
REM)