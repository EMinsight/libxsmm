#!/bin/sh

HERE=$(cd $(dirname $0); pwd -P)
MKDIR=$(which mkdir)
WGET=$(which wget)

# ls -1 | tr "\n" " "
NAMES="tet4_0_fluxL_0_csc.mtx tet4_0_fluxL_0_csr.mtx tet4_0_fluxL_1_csc.mtx tet4_0_fluxL_1_csr.mtx tet4_0_fluxL_2_csc.mtx tet4_0_fluxL_2_csr.mtx tet4_0_fluxL_3_csc.mtx tet4_0_fluxL_3_csr.mtx tet4_0_fluxN_0_csc.mtx tet4_0_fluxN_0_csr.mtx tet4_0_fluxN_1_csc.mtx tet4_0_fluxN_1_csr.mtx tet4_0_fluxN_10_csc.mtx tet4_0_fluxN_10_csr.mtx tet4_0_fluxN_11_csc.mtx tet4_0_fluxN_11_csr.mtx tet4_0_fluxN_2_csc.mtx tet4_0_fluxN_2_csr.mtx tet4_0_fluxN_3_csc.mtx tet4_0_fluxN_3_csr.mtx tet4_0_fluxN_4_csc.mtx tet4_0_fluxN_4_csr.mtx tet4_0_fluxN_5_csc.mtx tet4_0_fluxN_5_csr.mtx tet4_0_fluxN_6_csc.mtx tet4_0_fluxN_6_csr.mtx tet4_0_fluxN_7_csc.mtx tet4_0_fluxN_7_csr.mtx tet4_0_fluxN_8_csc.mtx tet4_0_fluxN_8_csr.mtx tet4_0_fluxN_9_csc.mtx tet4_0_fluxN_9_csr.mtx tet4_0_fluxT_0_csc.mtx tet4_0_fluxT_0_csr.mtx tet4_0_fluxT_1_csc.mtx tet4_0_fluxT_1_csr.mtx tet4_0_fluxT_2_csc.mtx tet4_0_fluxT_2_csr.mtx tet4_0_fluxT_3_csc.mtx tet4_0_fluxT_3_csr.mtx tet4_0_ma_0_csc.mtx tet4_0_ma_0_csr.mtx tet4_0_stiffT_0_csc.mtx tet4_0_stiffT_0_csr.mtx tet4_0_stiffT_1_csc.mtx tet4_0_stiffT_1_csr.mtx tet4_0_stiffT_2_csc.mtx tet4_0_stiffT_2_csr.mtx tet4_0_stiffV_0_csc.mtx tet4_0_stiffV_0_csr.mtx tet4_0_stiffV_1_csc.mtx tet4_0_stiffV_1_csr.mtx tet4_0_stiffV_2_csc.mtx tet4_0_stiffV_2_csr.mtx tet4_1_fluxL_0_csc.mtx tet4_1_fluxL_0_csr.mtx tet4_1_fluxL_1_csc.mtx tet4_1_fluxL_1_csr.mtx tet4_1_fluxL_2_csc.mtx tet4_1_fluxL_2_csr.mtx tet4_1_fluxL_3_csc.mtx tet4_1_fluxL_3_csr.mtx tet4_1_fluxN_0_csc.mtx tet4_1_fluxN_0_csr.mtx tet4_1_fluxN_1_csc.mtx tet4_1_fluxN_1_csr.mtx tet4_1_fluxN_10_csc.mtx tet4_1_fluxN_10_csr.mtx tet4_1_fluxN_11_csc.mtx tet4_1_fluxN_11_csr.mtx tet4_1_fluxN_2_csc.mtx tet4_1_fluxN_2_csr.mtx tet4_1_fluxN_3_csc.mtx tet4_1_fluxN_3_csr.mtx tet4_1_fluxN_4_csc.mtx tet4_1_fluxN_4_csr.mtx tet4_1_fluxN_5_csc.mtx tet4_1_fluxN_5_csr.mtx tet4_1_fluxN_6_csc.mtx tet4_1_fluxN_6_csr.mtx tet4_1_fluxN_7_csc.mtx tet4_1_fluxN_7_csr.mtx tet4_1_fluxN_8_csc.mtx tet4_1_fluxN_8_csr.mtx tet4_1_fluxN_9_csc.mtx tet4_1_fluxN_9_csr.mtx tet4_1_fluxT_0_csc.mtx tet4_1_fluxT_0_csr.mtx tet4_1_fluxT_1_csc.mtx tet4_1_fluxT_1_csr.mtx tet4_1_fluxT_2_csc.mtx tet4_1_fluxT_2_csr.mtx tet4_1_fluxT_3_csc.mtx tet4_1_fluxT_3_csr.mtx tet4_1_ma_0_csc.mtx tet4_1_ma_0_csr.mtx tet4_1_stiffT_0_csc.mtx tet4_1_stiffT_0_csr.mtx tet4_1_stiffT_1_csc.mtx tet4_1_stiffT_1_csr.mtx tet4_1_stiffT_2_csc.mtx tet4_1_stiffT_2_csr.mtx tet4_1_stiffV_0_csc.mtx tet4_1_stiffV_0_csr.mtx tet4_1_stiffV_1_csc.mtx tet4_1_stiffV_1_csr.mtx tet4_1_stiffV_2_csc.mtx tet4_1_stiffV_2_csr.mtx tet4_2_fluxL_0_csc.mtx tet4_2_fluxL_0_csr.mtx tet4_2_fluxL_1_csc.mtx tet4_2_fluxL_1_csr.mtx tet4_2_fluxL_2_csc.mtx tet4_2_fluxL_2_csr.mtx tet4_2_fluxL_3_csc.mtx tet4_2_fluxL_3_csr.mtx tet4_2_fluxN_0_csc.mtx tet4_2_fluxN_0_csr.mtx tet4_2_fluxN_1_csc.mtx tet4_2_fluxN_1_csr.mtx tet4_2_fluxN_10_csc.mtx tet4_2_fluxN_10_csr.mtx tet4_2_fluxN_11_csc.mtx tet4_2_fluxN_11_csr.mtx tet4_2_fluxN_2_csc.mtx tet4_2_fluxN_2_csr.mtx tet4_2_fluxN_3_csc.mtx tet4_2_fluxN_3_csr.mtx tet4_2_fluxN_4_csc.mtx tet4_2_fluxN_4_csr.mtx tet4_2_fluxN_5_csc.mtx tet4_2_fluxN_5_csr.mtx tet4_2_fluxN_6_csc.mtx tet4_2_fluxN_6_csr.mtx tet4_2_fluxN_7_csc.mtx tet4_2_fluxN_7_csr.mtx tet4_2_fluxN_8_csc.mtx tet4_2_fluxN_8_csr.mtx tet4_2_fluxN_9_csc.mtx tet4_2_fluxN_9_csr.mtx tet4_2_fluxT_0_csc.mtx tet4_2_fluxT_0_csr.mtx tet4_2_fluxT_1_csc.mtx tet4_2_fluxT_1_csr.mtx tet4_2_fluxT_2_csc.mtx tet4_2_fluxT_2_csr.mtx tet4_2_fluxT_3_csc.mtx tet4_2_fluxT_3_csr.mtx tet4_2_ma_0_csc.mtx tet4_2_ma_0_csr.mtx tet4_2_stiffT_0_csc.mtx tet4_2_stiffT_0_csr.mtx tet4_2_stiffT_1_csc.mtx tet4_2_stiffT_1_csr.mtx tet4_2_stiffT_2_csc.mtx tet4_2_stiffT_2_csr.mtx tet4_2_stiffV_0_csc.mtx tet4_2_stiffV_0_csr.mtx tet4_2_stiffV_1_csc.mtx tet4_2_stiffV_1_csr.mtx tet4_2_stiffV_2_csc.mtx tet4_2_stiffV_2_csr.mtx tet4_3_fluxL_0_csc.mtx tet4_3_fluxL_0_csr.mtx tet4_3_fluxL_1_csc.mtx tet4_3_fluxL_1_csr.mtx tet4_3_fluxL_2_csc.mtx tet4_3_fluxL_2_csr.mtx tet4_3_fluxL_3_csc.mtx tet4_3_fluxL_3_csr.mtx tet4_3_fluxN_0_csc.mtx tet4_3_fluxN_0_csr.mtx tet4_3_fluxN_1_csc.mtx tet4_3_fluxN_1_csr.mtx tet4_3_fluxN_10_csc.mtx tet4_3_fluxN_10_csr.mtx tet4_3_fluxN_11_csc.mtx tet4_3_fluxN_11_csr.mtx tet4_3_fluxN_2_csc.mtx tet4_3_fluxN_2_csr.mtx tet4_3_fluxN_3_csc.mtx tet4_3_fluxN_3_csr.mtx tet4_3_fluxN_4_csc.mtx tet4_3_fluxN_4_csr.mtx tet4_3_fluxN_5_csc.mtx tet4_3_fluxN_5_csr.mtx tet4_3_fluxN_6_csc.mtx tet4_3_fluxN_6_csr.mtx tet4_3_fluxN_7_csc.mtx tet4_3_fluxN_7_csr.mtx tet4_3_fluxN_8_csc.mtx tet4_3_fluxN_8_csr.mtx tet4_3_fluxN_9_csc.mtx tet4_3_fluxN_9_csr.mtx tet4_3_fluxT_0_csc.mtx tet4_3_fluxT_0_csr.mtx tet4_3_fluxT_1_csc.mtx tet4_3_fluxT_1_csr.mtx tet4_3_fluxT_2_csc.mtx tet4_3_fluxT_2_csr.mtx tet4_3_fluxT_3_csc.mtx tet4_3_fluxT_3_csr.mtx tet4_3_ma_0_csc.mtx tet4_3_ma_0_csr.mtx tet4_3_stiffT_0_csc.mtx tet4_3_stiffT_0_csr.mtx tet4_3_stiffT_1_csc.mtx tet4_3_stiffT_1_csr.mtx tet4_3_stiffT_2_csc.mtx tet4_3_stiffT_2_csr.mtx tet4_3_stiffV_0_csc.mtx tet4_3_stiffV_0_csr.mtx tet4_3_stiffV_1_csc.mtx tet4_3_stiffV_1_csr.mtx tet4_3_stiffV_2_csc.mtx tet4_3_stiffV_2_csr.mtx tet4_4_fluxL_0_csc.mtx tet4_4_fluxL_0_csr.mtx tet4_4_fluxL_1_csc.mtx tet4_4_fluxL_1_csr.mtx tet4_4_fluxL_2_csc.mtx tet4_4_fluxL_2_csr.mtx tet4_4_fluxL_3_csc.mtx tet4_4_fluxL_3_csr.mtx tet4_4_fluxN_0_csc.mtx tet4_4_fluxN_0_csr.mtx tet4_4_fluxN_1_csc.mtx tet4_4_fluxN_1_csr.mtx tet4_4_fluxN_10_csc.mtx tet4_4_fluxN_10_csr.mtx tet4_4_fluxN_11_csc.mtx tet4_4_fluxN_11_csr.mtx tet4_4_fluxN_2_csc.mtx tet4_4_fluxN_2_csr.mtx tet4_4_fluxN_3_csc.mtx tet4_4_fluxN_3_csr.mtx tet4_4_fluxN_4_csc.mtx tet4_4_fluxN_4_csr.mtx tet4_4_fluxN_5_csc.mtx tet4_4_fluxN_5_csr.mtx tet4_4_fluxN_6_csc.mtx tet4_4_fluxN_6_csr.mtx tet4_4_fluxN_7_csc.mtx tet4_4_fluxN_7_csr.mtx tet4_4_fluxN_8_csc.mtx tet4_4_fluxN_8_csr.mtx tet4_4_fluxN_9_csc.mtx tet4_4_fluxN_9_csr.mtx tet4_4_fluxT_0_csc.mtx tet4_4_fluxT_0_csr.mtx tet4_4_fluxT_1_csc.mtx tet4_4_fluxT_1_csr.mtx tet4_4_fluxT_2_csc.mtx tet4_4_fluxT_2_csr.mtx tet4_4_fluxT_3_csc.mtx tet4_4_fluxT_3_csr.mtx tet4_4_ma_0_csc.mtx tet4_4_ma_0_csr.mtx tet4_4_stiffT_0_csc.mtx tet4_4_stiffT_0_csr.mtx tet4_4_stiffT_1_csc.mtx tet4_4_stiffT_1_csr.mtx tet4_4_stiffT_2_csc.mtx tet4_4_stiffT_2_csr.mtx tet4_4_stiffV_0_csc.mtx tet4_4_stiffV_0_csr.mtx tet4_4_stiffV_1_csc.mtx tet4_4_stiffV_1_csr.mtx tet4_4_stiffV_2_csc.mtx tet4_4_stiffV_2_csr.mtx tet4_5_fluxL_0_csc.mtx tet4_5_fluxL_0_csr.mtx tet4_5_fluxL_1_csc.mtx tet4_5_fluxL_1_csr.mtx tet4_5_fluxL_2_csc.mtx tet4_5_fluxL_2_csr.mtx tet4_5_fluxL_3_csc.mtx tet4_5_fluxL_3_csr.mtx tet4_5_fluxN_0_csc.mtx tet4_5_fluxN_0_csr.mtx tet4_5_fluxN_1_csc.mtx tet4_5_fluxN_1_csr.mtx tet4_5_fluxN_10_csc.mtx tet4_5_fluxN_10_csr.mtx tet4_5_fluxN_11_csc.mtx tet4_5_fluxN_11_csr.mtx tet4_5_fluxN_2_csc.mtx tet4_5_fluxN_2_csr.mtx tet4_5_fluxN_3_csc.mtx tet4_5_fluxN_3_csr.mtx tet4_5_fluxN_4_csc.mtx tet4_5_fluxN_4_csr.mtx tet4_5_fluxN_5_csc.mtx tet4_5_fluxN_5_csr.mtx tet4_5_fluxN_6_csc.mtx tet4_5_fluxN_6_csr.mtx tet4_5_fluxN_7_csc.mtx tet4_5_fluxN_7_csr.mtx tet4_5_fluxN_8_csc.mtx tet4_5_fluxN_8_csr.mtx tet4_5_fluxN_9_csc.mtx tet4_5_fluxN_9_csr.mtx tet4_5_fluxT_0_csc.mtx tet4_5_fluxT_0_csr.mtx tet4_5_fluxT_1_csc.mtx tet4_5_fluxT_1_csr.mtx tet4_5_fluxT_2_csc.mtx tet4_5_fluxT_2_csr.mtx tet4_5_fluxT_3_csc.mtx tet4_5_fluxT_3_csr.mtx tet4_5_ma_0_csc.mtx tet4_5_ma_0_csr.mtx tet4_5_stiffT_0_csc.mtx tet4_5_stiffT_0_csr.mtx tet4_5_stiffT_1_csc.mtx tet4_5_stiffT_1_csr.mtx tet4_5_stiffT_2_csc.mtx tet4_5_stiffT_2_csr.mtx tet4_5_stiffV_0_csc.mtx tet4_5_stiffV_0_csr.mtx tet4_5_stiffV_1_csc.mtx tet4_5_stiffV_1_csr.mtx tet4_5_stiffV_2_csc.mtx tet4_5_stiffV_2_csr.mtx tet4_6_fluxL_0_csc.mtx tet4_6_fluxL_0_csr.mtx tet4_6_fluxL_1_csc.mtx tet4_6_fluxL_1_csr.mtx tet4_6_fluxL_2_csc.mtx tet4_6_fluxL_2_csr.mtx tet4_6_fluxL_3_csc.mtx tet4_6_fluxL_3_csr.mtx tet4_6_fluxN_0_csc.mtx tet4_6_fluxN_0_csr.mtx tet4_6_fluxN_1_csc.mtx tet4_6_fluxN_1_csr.mtx tet4_6_fluxN_10_csc.mtx tet4_6_fluxN_10_csr.mtx tet4_6_fluxN_11_csc.mtx tet4_6_fluxN_11_csr.mtx tet4_6_fluxN_2_csc.mtx tet4_6_fluxN_2_csr.mtx tet4_6_fluxN_3_csc.mtx tet4_6_fluxN_3_csr.mtx tet4_6_fluxN_4_csc.mtx tet4_6_fluxN_4_csr.mtx tet4_6_fluxN_5_csc.mtx tet4_6_fluxN_5_csr.mtx tet4_6_fluxN_6_csc.mtx tet4_6_fluxN_6_csr.mtx tet4_6_fluxN_7_csc.mtx tet4_6_fluxN_7_csr.mtx tet4_6_fluxN_8_csc.mtx tet4_6_fluxN_8_csr.mtx tet4_6_fluxN_9_csc.mtx tet4_6_fluxN_9_csr.mtx tet4_6_fluxT_0_csc.mtx tet4_6_fluxT_0_csr.mtx tet4_6_fluxT_1_csc.mtx tet4_6_fluxT_1_csr.mtx tet4_6_fluxT_2_csc.mtx tet4_6_fluxT_2_csr.mtx tet4_6_fluxT_3_csc.mtx tet4_6_fluxT_3_csr.mtx tet4_6_ma_0_csc.mtx tet4_6_ma_0_csr.mtx tet4_6_stiffT_0_csc.mtx tet4_6_stiffT_0_csr.mtx tet4_6_stiffT_1_csc.mtx tet4_6_stiffT_1_csr.mtx tet4_6_stiffT_2_csc.mtx tet4_6_stiffT_2_csr.mtx tet4_6_stiffV_0_csc.mtx tet4_6_stiffV_0_csr.mtx tet4_6_stiffV_1_csc.mtx tet4_6_stiffV_1_csr.mtx tet4_6_stiffV_2_csc.mtx tet4_6_stiffV_2_csr.mtx tet4_fluxMatrix_csr_de.mtx tet4_fluxMatrix_csr_sp.mtx tet4_starMatrix_csc.mtx tet4_starMatrix_csr.mtx"

if [ "" != "${MKDIR}" ] && [ "" != "${WGET}" ]; then
  ${MKDIR} -p ${HERE}/mats; cd ${HERE}/mats
  for NAME in ${NAMES}; do
    ${WGET} -N https://github.com/hfp/libxsmm/raw/master/samples/edge/mats/${NAME}
  done
fi

