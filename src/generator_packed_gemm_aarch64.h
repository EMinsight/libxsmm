/******************************************************************************
* Copyright (c) Intel Corporation - All rights reserved.                      *
* This file is part of the LIBXSMM library.                                   *
*                                                                             *
* For information on the license, see the LICENSE file.                       *
* Further information: https://github.com/libxsmm/libxsmm/                    *
* SPDX-License-Identifier: BSD-3-Clause                                       *
******************************************************************************/
/* Alexander Heinecke (Intel Corp.)
******************************************************************************/
#ifndef GENERATOR_PACKED_GEMM_AARCH64_H
#define GENERATOR_PACKED_GEMM_AARCH64_H

#include <libxsmm_generator.h>
#include "generator_common.h"

LIBXSMM_API_INTERN void libxsmm_generator_packed_gemm_aarch64( libxsmm_generated_code*         io_generated_code,
                                                               const libxsmm_gemm_descriptor*  i_xgemm_desc,
                                                               const unsigned int              i_packed_width );


LIBXSMM_API_INTERN void libxsmm_generator_packed_gemm_aarch64_mloop( libxsmm_generated_code*            io_generated_code,
                                                                     libxsmm_loop_label_tracker*        io_loop_label_tracker,
                                                                     const libxsmm_gp_reg_mapping*      i_gp_reg_mapping,
                                                                     const libxsmm_micro_kernel_config* i_micro_kernel_config,
                                                                     const libxsmm_gemm_descriptor*     i_xgemm_desc,
                                                                     const unsigned int                 i_packed_width,
                                                                     const unsigned int                 i_max_n_reg_block,
                                                                     const unsigned int                 i_m_blocking );

LIBXSMM_API_INTERN void libxsmm_generator_packed_gemm_aarch64_kloop( libxsmm_generated_code*            io_generated_code,
                                                                     libxsmm_loop_label_tracker*        io_loop_label_tracker,
                                                                     const libxsmm_gp_reg_mapping*      i_gp_reg_mapping,
                                                                     const libxsmm_micro_kernel_config* i_micro_kernel_config,
                                                                     const libxsmm_gemm_descriptor*     i_xgemm_desc,
                                                                     const unsigned int                 i_packed_width,
                                                                     const unsigned int                 i_n_blocking,
                                                                     const unsigned int                 i_m_blocking );

LIBXSMM_API_INTERN void libxsmm_generator_packed_gemm_aarch64_load_C( libxsmm_generated_code*            io_generated_code,
                                                                      const libxsmm_gp_reg_mapping*      i_gp_reg_mapping,
                                                                      const libxsmm_micro_kernel_config* i_micro_kernel_config,
                                                                      const libxsmm_gemm_descriptor*     i_xgemm_desc,
                                                                      const unsigned int                 i_n_blocking,
                                                                      const unsigned int                 i_m_blocking,
                                                                      const unsigned int                 i_use_masking,
                                                                      const unsigned int                 i_packed_width );

LIBXSMM_API_INTERN void libxsmm_generator_packed_gemm_aarch64_store_C( libxsmm_generated_code*            io_generated_code,
                                                                       const libxsmm_gp_reg_mapping*      i_gp_reg_mapping,
                                                                       const libxsmm_micro_kernel_config* i_micro_kernel_config,
                                                                       const libxsmm_gemm_descriptor*     i_xgemm_desc,
                                                                       const unsigned int                 i_n_blocking,
                                                                       const unsigned int                 i_m_blocking,
                                                                       const unsigned int                 i_use_masking,
                                                                       const unsigned int                 i_packed_width );

LIBXSMM_API_INTERN void libxsmm_generator_packed_gemm_aarch64_kloop_simd_packed( libxsmm_generated_code*            io_generated_code,
                                                                                 libxsmm_loop_label_tracker*        io_loop_label_tracker,
                                                                                 const libxsmm_gp_reg_mapping*      i_gp_reg_mapping,
                                                                                 const libxsmm_micro_kernel_config* i_micro_kernel_config,
                                                                                 const libxsmm_gemm_descriptor*     i_xgemm_desc,
                                                                                 const unsigned int                 i_packed_width,
                                                                                 const unsigned int                 i_simd_packed_width,
                                                                                 const unsigned int                 i_simd_packed_valid,
                                                                                 const unsigned int                 i_n_blocking,
                                                                                 const unsigned int                 i_m_blocking );


#endif /* GENERATOR_PACKED_GEMM_AARCH64_H */
