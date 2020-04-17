#!/bin/sh 
javac -cp lib/junit-4.12.jar:lib/hamcrest-core-1-3.jar -d build/ src/java/*.java
javac -cp lib/junit-4.12.jar:lib/hamcrest-core-1-3.jar:build/ -d build/ test/java/*.java
java -cp .:lib/junit-4.12:lib/hamcrest-core-1.3.jar:build/ org.junit.runner.JUnitCore EdgeConnectorTest

#Shell script to create jar file - Deployment Exercise
jar cvmf build/tmp/jar/MANIFEST.MF  EdgeConvertGUI.jar  ./lib/*.jar -C ./build .
java -jar  EdgeConvertGUI.jar