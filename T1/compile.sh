#!/bin/bash
# no parameters
# add your Flex code to scr/bminus.l
# you don't need to modify src/bminus.y nor src/token.h
# do NOT change src/main.c

T1=$(pwd)

# run inside src
cd src
bison -d bminus.y

# rename file 
mv bminus.tab.h token.h

flex bminus.l           

cc -o bminus lex.yy.c bminus.tab.c main.c

# change bminus to exec and move it to T1
chmod +x bminus 
mv bminus "$T1"

# clean
rm lex.yy.c
rm bminus.tab.c

# back to T1
cd "$T1"

