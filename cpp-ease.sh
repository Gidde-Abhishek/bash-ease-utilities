#!/bin/bash
fname=$1
count=0
ja=3
if [ -e $fname ]
then
efname=$fname
else
 if [ -e $fname.cpp ]
then
efname=$fname.cpp
fi
fi
if [ -e $fname -o -e $fname.cpp ]
then
g++ $efname  
count=1
ja=4
else
touch $fname.cpp
gedit $fname.cpp
echo "$fname created ! will run the file after you save it"
if ! pgrep -x "gedit" > /dev/null
then
    ./cpp-ease.sh $fname 
fi
fi
if [ -e ./a.out ]
then
if [ $count -eq 1 ]
then
./a.out
ja=0
fi
fi

if [ $ja -eq 4 ]
then
echo "Compilation Error ! Please Check !"
fi
