#!/bin/sh
find . -name "*.java" -not -path "./src/main/*" > sources.txt
javac -d build -cp :* @sources.txt
java -cp build examples.HouseDemo