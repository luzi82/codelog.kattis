#!/bin/bash -e

TMP_FOLDER=/tmp/ABHBZRKZ/`date +%s`

mkdir -p ${TMP_FOLDER}

javac -Xlint:unchecked -d ${TMP_FOLDER} Solution.java

TEST_ID=0
cat input.${TEST_ID}.txt | java -cp ${TMP_FOLDER} Solution > ${TMP_FOLDER}/output.${TEST_ID}.txt
diff ${TMP_FOLDER}/output.${TEST_ID}.txt expect.${TEST_ID}.txt
