#!/bin/bash

sudo echo "export JAVA_HOME=$1
export JRE_HOME=\${JAVA_HOME}/jre
export CLASSPATH=.:\${JAVA_HOME}/lib:\${JRE_HOME}/lib
export PATH=\${JAVA_HOME}/bin:\$PATH
" >> /etc/profile 

sudo update-alternatives --install /usr/bin/java java $1/bin/java 300
sudo update-alternatives --install /usr/bin/javac javac $1/bin/javac 300
sudo update-alternatives --install /usr/bin/jar jar $1/bin/jar 300
sudo update-alternatives --install /usr/bin/javah javah $1/bin/javah 300
sudo update-alternatives --install /usr/bin/javap javap $1/bin/javap 300
sudo update-alternatives --config java
