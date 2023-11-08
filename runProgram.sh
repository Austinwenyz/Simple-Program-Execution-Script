#!/bin/bash

# Check for input argument
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <script> <test_data_file>"
    exit 1
fi

programPath="$1"
testFilePath="$2"

# Check if the provided program file exists
if [ ! -f "$programPath" ]; then
    echo "The program file does not exist."
    exit 1
fi

# Check if the test data file exists
if [ ! -f "$testFilePath" ]; then
    echo "The test data file does not exist."
    exit 1
fi

# Extract the file extension to determine the language
fileExtension="${programPath##*.}"

# Determine action based on file extension
case $fileExtension in
    java)
        className=$(basename "$programPath" .java)
        javac "$programPath"
        if [ $? -ne 0 ]; then
            echo "Compilation failed."
            exit 1
        fi
        java $className < $testFilePath
        ;;
    py)
        python "$programPath" < $testFilePath
        ;;
    c)
        executableName=$(basename "$programPath" .c)
        gcc -o $executableName "$programPath"
        if [ $? -ne 0 ]; then
            echo "Compilation failed."
            exit 1
        fi
        ./$executableName < $testFilePath
        ;;
    cpp)
        executableName=$(basename "$programPath" .cpp)
        g++ -o $executableName "$programPath"
        if [ $? -ne 0 ]; then
            echo "Compilation failed."
            exit 1
        fi
        ./$executableName < $testFilePath
        ;;
    *)
        echo "Unsupported file type."
        exit 1
        ;;
esac
