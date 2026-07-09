@echo off
echo =====================================
echo Executando testes Robot Framework...
echo =====================================

robot -d results tests/cadastro.robot

echo.
echo =====================================
echo Testes finalizados!
echo Os resultados foram salvos na pasta results.
echo =====================================
pause