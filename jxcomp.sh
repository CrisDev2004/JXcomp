#!/bin/bash
#JXcomp
#This is a program made by CrisDev2004. CopyRight 2021, All Rights Reserved.

#Cleaning the Terminal Window
clear
#Creating variables
current_dir=$(pwd)
script_dir=$(dirname "$0")
#YesResp1="yes"
#YesResp2="YES"
#YesResp3="y"
#YesResp4="Y"
#YesResp5="Yes"
#Separating colon
#NoResp1="no"
#NoResp2="NO"
#NoResp3="n"
#NoResp4="N"
#NoResp5="No"

echo "Welcome to JXcomp! It is a Java Compiler. Please enter the filename: (without the file extension, example: .java)"
read filename
echo "Where is located the folder containing your .java file? example: ~/home/user/Downloads/Coding/ToCompile/JAVACATS/ (you can also use 'here' if the java file is in the script's folder): "
read location
if [ $location == "here" ]
then
  :
else
  cd $location
fi
echo Trying to compile the file...
javac $filename.java
echo "What is the file's class name? "
read classname
java $classname
echo "If you get an error message, it means that you haven't typed the filename correctly or the file dones't exists. Do you want to retry? [y/n]"
read retry
if [ $retry == "y" ]
then 
  cd $current_dir
  ./jxcomp.sh
fi
#else
#  echo Ok, closing the program...
#  executed_the=$(date)
#  echo E X E C U T E D   T H E : $executed_the
#fi

#exit 0
if [ $retry == "n" ]
then
  echo Ok, closing the program...
  executed_the=$(date)
  echo E X E C U T E D   T H E : $executed_the
fi
exit 0