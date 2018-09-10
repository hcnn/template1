#!/bin/bash

if [ $1 ]; then
    newreponame=$1
else
    echo "new repo name not supplied"
    exit 1;
fi


if [ "$2" ]; then
    licensor=$2
else
    echo "licensor not supplied"
    exit 1;
fi

#replace "template1" with the new repo name in every file
for f in *; do sed -i.bak "s/template1/${newreponame}/g" "${f}"; done
rm *.bak

#replace name definitions
uppernam=$(echo ${newreponame} | tr a-z A-Z)
sed -i.bak "s/TEMPLATE1_H/${uppernam}_H/g" template1.h
rm template1.h.bak 

#rename files
mv "template1.h" "${newreponame}.h"
mv "template1.c" "${newreponame}.c"

#set today
today=$(date +%Y-%m-%d)
sed -i.bak "s/1970-01-01/${today}/g" CHANGES.md
rm CHANGES.md.bak 

#set year
year=$(date +%Y)
sed -i.bak "s/1970/${year}/g" LICENSE
rm LICENSE.bak 

#set licensor
year=$(date +%Y)
sed -i.bak "s/John Doe/${licensor}/g" LICENSE
rm LICENSE.bak 

#reinitialize git
rm -rf .git
git init

#self-destruction
rm -- "$0"
