#!/bin/bash

TARGET="/home/freeze-dolphin/Documents/decompiled"

java -cp /snap/intellij-idea-community/current/plugins/java-decompiler/lib/java-decompiler.jar org.jetbrains.java.decompiler.main.decompiler.ConsoleDecompiler -dgs=true ${1} $TARGET

FILENAME=`basename ${1}`

unar $TARGET/$FILENAME -o $TARGET


