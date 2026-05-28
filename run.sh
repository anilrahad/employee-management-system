#!/bin/bash
echo "Compiling..."
javac -cp "lib/mysql-connector-java-8.0.30.jar" -d bin src/project/*.java
if [ $? -ne 0 ]; then
    echo "Compilation failed!"
    exit 1
fi
echo "Running..."
java -cp "bin:lib/mysql-connector-java-8.0.30.jar" project.Window
