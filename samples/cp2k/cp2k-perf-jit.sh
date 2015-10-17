#!/bin/bash

HERE=$(cd $(dirname $0); pwd -P)
FILE=cp2k-perf.txt
RUNS='5_5_5 5_5_13 5_5_24 5_5_26 5_5_32 5_13_5 5_13_13 5_13_24 5_13_26 5_13_32 5_24_5 5_24_13 5_24_24 5_24_26 5_24_32 5_26_5 5_26_13 5_26_24 5_26_26 5_26_32 5_32_5 5_32_13 5_32_24 5_32_26 5_32_32 6_6_6 7_7_7 7_7_13 7_7_25 7_7_32 7_13_7 7_13_13 7_13_25 7_13_32 7_25_7 7_25_13 7_25_25 7_25_32 7_32_7 7_32_13 7_32_25 7_32_32 9_9_9 9_9_22 9_9_32 9_22_9 9_22_22 9_22_32 9_32_9 9_32_22 9_32_32 12_12_12 13_5_5 13_5_13 13_5_24 13_5_26 13_5_32 13_7_7 13_7_13 13_7_25 13_7_32 13_13_5 13_13_7 13_13_13 13_13_24 13_13_25 13_13_26 13_13_28 13_13_32 13_13_45 13_24_5 13_24_13 13_24_24 13_24_26 13_24_32 13_25_7 13_25_13 13_25_25 13_25_32 13_26_5 13_26_13 13_26_24 13_26_26 13_26_28 13_26_32 13_26_45 13_28_13 13_28_26 13_28_28 13_28_32 13_28_45 13_32_5 13_32_7 13_32_13 13_32_24 13_32_25 13_32_26 13_32_28 13_32_32 13_32_45 13_45_13 13_45_26 13_45_28 13_45_32 13_45_45 14_14_14 14_14_16 14_14_29 14_14_32 14_16_14 14_16_16 14_16_29 14_29_14 14_29_16 14_29_29 14_29_32 14_32_14 14_32_29 14_32_32 16_14_14 16_14_16 16_14_29 16_16_14 16_16_16 16_16_29 16_16_55 16_29_14 16_29_16 16_29_29 16_29_55 16_55_16 16_55_29 16_55_55 22_9_9 22_9_22 22_9_32 22_22_9 22_22_22 22_22_32 22_32_9 22_32_22 22_32_32 23_23_23 24_5_5 24_5_13 24_5_24 24_5_26 24_5_32 24_13_5 24_13_13 24_13_24 24_13_26 24_13_32 24_24_5 24_24_13 24_24_24 24_24_26 24_24_32 24_26_5 24_26_13 24_26_24 24_26_26 24_26_32 24_32_5 24_32_13 24_32_24 24_32_26 24_32_32 25_7_7 25_7_13 25_7_25 25_7_32 25_13_7 25_13_13 25_13_25 25_13_32 25_25_7 25_25_13 25_25_25 25_25_32 25_32_7 25_32_13 25_32_25 25_32_32 26_5_5 26_5_13 26_5_24 26_5_26 26_5_32 26_13_5 26_13_13 26_13_24 26_13_26 26_13_28 26_13_32 26_13_45 26_24_5 26_24_13 26_24_24 26_24_26 26_24_32 26_26_5 26_26_13 26_26_24 26_26_26 26_26_28 26_26_32 26_26_45 26_28_13 26_28_26 26_28_28 26_28_32 26_28_45 26_32_5 26_32_13 26_32_24 26_32_26 26_32_28 26_32_32 26_32_45 26_45_13 26_45_26 26_45_28 26_45_32 26_45_45 28_13_13 28_13_26 28_13_28 28_13_32 28_13_45 28_26_13 28_26_26 28_26_28 28_26_32 28_26_45 28_28_13 28_28_26 28_28_28 28_28_32 28_28_45 28_32_13 28_32_26 28_32_28 28_32_32 28_32_45 28_45_13 28_45_26 28_45_28 28_45_32 28_45_45 29_14_14 29_14_16 29_14_29 29_14_32 29_16_14 29_16_16 29_16_29 29_16_55 29_29_14 29_29_16 29_29_29 29_29_32 29_29_55 29_32_14 29_32_29 29_32_32 29_32_55 29_55_16 29_55_29 29_55_32 29_55_55 32_5_5 32_5_13 32_5_24 32_5_26 32_5_32 32_7_7 32_7_13 32_7_25 32_7_32 32_9_9 32_9_22 32_9_32 32_13_5 32_13_7 32_13_13 32_13_24 32_13_25 32_13_26 32_13_28 32_13_32 32_13_45 32_14_14 32_14_29 32_14_32 32_22_9 32_22_22 32_22_32 32_24_5 32_24_13 32_24_24 32_24_26 32_24_32 32_25_7 32_25_13 32_25_25 32_25_32 32_26_5 32_26_13 32_26_24 32_26_26 32_26_28 32_26_32 32_26_45 32_28_13 32_28_26 32_28_28 32_28_32 32_28_45 32_29_14 32_29_29 32_29_32 32_29_55 32_32_5 32_32_7 32_32_9 32_32_13 32_32_14 32_32_22 32_32_24 32_32_25 32_32_26 32_32_28 32_32_29 32_32_32 32_32_45 32_32_55 32_45_13 32_45_26 32_45_28 32_45_32 32_45_45 32_55_29 32_55_32 32_55_55 45_13_13 45_13_26 45_13_28 45_13_32 45_13_45 45_26_13 45_26_26 45_26_28 45_26_32 45_26_45 45_28_13 45_28_26 45_28_28 45_28_32 45_28_45 45_32_13 45_32_26 45_32_28 45_32_32 45_32_45 45_45_13 45_45_26 45_45_28 45_45_32 45_45_45 55_16_16 55_16_29 55_16_55 55_29_16 55_29_29 55_29_32 55_29_55 55_32_29 55_32_32 55_32_55 55_55_16 55_55_29 55_55_32 55_55_55 64_64_64 78_78_78'

if [[ "" != "$1" ]] ; then
  FILE=$1
  shift
fi
cat /dev/null > ${FILE}

NRUN=1
NMAX=$(echo ${RUNS} | wc -w)
for RUN in ${RUNS} ; do
  MVALUE=$(echo ${RUN} | cut --output-delimiter=' ' -d_ -f1)
  NVALUE=$(echo ${RUN} | cut --output-delimiter=' ' -d_ -f2)
  KVALUE=$(echo ${RUN} | cut --output-delimiter=' ' -d_ -f3)
  >&2 echo "Test ${NRUN} of ${NMAX} (M=${MVALUE} N=${NVALUE} K=${KVALUE})"
  ${HERE}/cp2k.sh ${MVALUE} 0 0 ${NVALUE} ${KVALUE} >> ${FILE}
  echo >> ${FILE}
  NRUN=$((NRUN + 1))
done

