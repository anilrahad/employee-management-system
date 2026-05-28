@echo off
echo Compiling...
javac -cp "lib\mysql-connector-java-8.0.30.jar" -d bin src\project\*.java
if %errorlevel% neq 0 (
    echo Compilation failed!
    pause
    exit /b 1
)
echo Running...
java -cp "bin;lib\mysql-connector-java-8.0.30.jar" project.Window
pause
