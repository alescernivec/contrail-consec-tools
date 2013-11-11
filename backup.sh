#!/bin/bash

NO_ARGS=1
E_OPTERROR=65
if [ $# -ne "$NO_ARGS" ] 
then
  echo -e "\e[32mContrail Tool\e[0m for backing up security components."
  echo "Usage: `basename $0` <file> <output>"
  echo "  <infile> - file containing list of files whether they exist."
  exit $E_OPTERROR
fi

TIMESTAMP="$( date -dnow '+%Y%m%d-%s' )"

tar cvfz ConSecBackup-${TIMESTAMP}.tar.gz -T ${1}
