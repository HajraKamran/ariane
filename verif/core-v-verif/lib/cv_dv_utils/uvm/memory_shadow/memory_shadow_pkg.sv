// ----------------------------------------------------------------------------
// Copyright 2023 CEA*
// *Commissariat a l'Energie Atomique et aux Energies Alternatives (CEA)
//
// SPDX-License-Identifier: Apache-2.0
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//[END OF HEADER]
// ----------------------------------------------------------------------------
// ----------------------------------------------------------------------------
// ----------------------------------------------------------------------------
//  Description : Package for memory shadows
//                
// 
// ----------------------------------------------------------------------------

package memory_shadow_pkg;

   timeunit 1ns;

   import uvm_pkg::*;

   `include "uvm_macros.svh";

   typedef enum {
       MEM_HDL_ACCESS, MEM_SHADOW_ACCESS
   } mem_path_e;

   typedef struct {
       string hdl_name; 
       int    hdl_size;
       
   } hdl_mem_s;

   `include "memory_shadow_c.svh";

endpackage : memory_shadow_pkg


