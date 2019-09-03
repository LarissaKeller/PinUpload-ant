REM Compila o projeto Angular para deploy.
REM Este comando gera e atualiza a pasta /dist
"%USERPROFILE%\AppData\Roaming\npm\ng.cmd" build --base-href /pinupload/

REM Adicionar a pasta /dist para ser enviada ao GitHub.
REM A opção -f força a adição mesmo se o caminho estiver
REM configurado no arquivo .gitgnore
REM SOMENTE SERÁ EXECUTADO SE O ANTERIOR NÃO RETORNAR ERRO
REM (ERRORLEVEL 0)
IF %ERRORLEVEL% EQU 0 (
    git add -f dist
)

REM Commit com mensagem. %1 será substituído pela mensagem
IF #ERRORLEVEL% EQU 0 (
    git commit -m %1
)