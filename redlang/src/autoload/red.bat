if exist "%~dp0autoload.red" (
	echo "autoload.red"
    start "%~n0" "%~dp0red.exe" "%~dp0autoload.red" %CD% %1
) else (
    start "%~n0" "%~dp0red.exe" %CD% %1
)
