@ECHO OFF
IF EXIST java (
	start "CARET" java -cp caret.jar;lib\*;conf nxt.Nxt
) ELSE (
	IF EXIST "%PROGRAMFILES%\Java\jre7" (
		start "CARET" "%PROGRAMFILES%\Java\jre7\bin\java.exe" -cp caret.jar;lib\*;conf nxt.Nxt
	) ELSE (
		IF EXIST "%PROGRAMFILES(X86)%\Java\jre7" (
			start "CARET" "%PROGRAMFILES(X86)%\Java\jre7\bin\java.exe" -cp caret.jar;lib\*;conf nxt.Nxt
		) ELSE (
			ECHO Java software not found on your system. Please go to http://java.com/en/ to download a copy of Java.
			PAUSE
		)
	)
)

