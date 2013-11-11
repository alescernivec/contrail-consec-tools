#!/bin/bash

NO_ARGS=2
E_OPTERROR=65
if [ $# -ne "$NO_ARGS" ] 
then
  echo -e "\e[32mContrail Tool\e[0m for checking the set-up of security components."
  echo "Usage: `basename $0` <file> <fileext>"
  echo "  <file> - file containing list of files whether they exist."
  echo "  <fileext> - file containing extended list of the specific installation."
  exit $E_OPTERROR
fi

FILELIST=$1
FILEEXTLIST=$2

echo -e "\e[1mChecking base list of files: \e[21m"
echo -e "\n"

LIST=`cat ${FILELIST}`
for F in ${LIST}
do
	if [ -f ${F} ];
	then
		echo -e "\e[42mOK\e[0m ${F}"
	else
		echo -e "\e[41mNOK\e[0m $F"
	fi
done

echo -e "\e[1mChecking extended list of files: \e[21m"
echo -e "\n"

LIST=`cat ${FILEEXTLIST}`
for F in ${LIST}
do
        if [ -f ${F} ];
        then
                echo -e "\e[42mOK\e[0m ${F}"
        else
                echo -e "\e[41mNOK\e[0m $F"
        fi
done
