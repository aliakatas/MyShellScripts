@echo off
set argC=0
for %%x in (%*) do (
	Set /A argC+=1
	echo %%x
)

echo Received %argC% arguments 
echo.