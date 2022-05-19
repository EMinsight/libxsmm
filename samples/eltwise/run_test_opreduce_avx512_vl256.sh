#!/usr/bin/env bash

export LIBXSMM_TARGET=avx512_vl256_clx

cat <<EOM | ../../scripts/tool_pexec.sh
./kernel_test/opreduce_op_add_redop_add_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_add_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_add_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_add_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_add_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_add_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_max_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_max_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_max_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_max_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_max_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_max_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_min_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_min_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_min_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_min_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_min_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_min_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_none_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_add_redop_none_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_add_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_add_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_add_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_add_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_add_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_max_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_max_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_max_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_max_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_max_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_min_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_min_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_min_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_min_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_min_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_copy_redop_none_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_add_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_add_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_add_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_add_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_add_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_add_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_max_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_max_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_max_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_max_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_max_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_max_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_min_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_min_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_min_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_min_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_min_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_min_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_none_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_div_redop_none_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_add_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_add_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_add_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_add_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_add_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_add_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_max_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_max_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_max_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_max_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_max_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_max_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_min_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_min_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_min_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_min_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_min_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_min_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_none_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_mul_redop_none_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_add_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_add_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_add_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_add_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_add_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_add_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_max_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_max_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_max_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_max_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_max_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_max_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_min_oporder_0_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_min_oporder_0_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_min_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_min_oporder_1_regvecin_0_implicitidx_0_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_min_oporder_1_regvecin_0_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_min_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_none_oporder_0_regvecin_1_implicitidx_1_argopmode_0_32b.sh
./kernel_test/opreduce_op_sub_redop_none_oporder_1_regvecin_1_implicitidx_1_argopmode_0_32b.sh
EOM

rm -f tmp.??????????
unset LIBXSMM_TARGET
