#!/bin/bash -e

if [ "$#" -ne 1 ]; then
  echo "${0} [PROBLEM_CODE]"
  exit 1
fi

PROBLEM_CODE=${1}

MD5=`echo ${PROBLEM_CODE} | md5sum | awk '{ print $1 }'`

MD5_0=${MD5:0:2}
MD5_1=${MD5:2:2}
MD5_2=${MD5:4:2}

# echo ${MD5}
# echo ${MD5_0}
# echo ${MD5_1}
# echo ${MD5_2}

mkdir -p ${MD5_0}/${MD5_1}/${MD5_2}
cp -R template ${MD5_0}/${MD5_1}/${MD5_2}/${PROBLEM_CODE}
echo "cd ${MD5_0}/${MD5_1}/${MD5_2}/${PROBLEM_CODE}"
