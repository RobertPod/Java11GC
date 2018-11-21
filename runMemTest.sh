#!/bin/bash  

TARGET_DIR='target/classes'
TARGET_TEST='target/test-classes'
RUN_CPATH='src/main/java/'
RUN_TPATH='src/test/java/'
PACKAGE_PATH='robert/java11/'
LIB_REPO='lib/repo'

rm -frd target/
mkdir target
mkdir $TARGET_DIR
mkdir $TARGET_TEST

echo run program
javac -cp $RUN_CPATH $RUN_CPATH$PACKAGE_PATH/MemoryTest.java -d $TARGET_DIR 
java -XX:StartFlightRecording=delay=1s,duration=60s,filename=d:\java\myRecording.jfr,settings=profile,name=SampleRecording -cp $TARGET_DIR robert.java11.MemoryTest
