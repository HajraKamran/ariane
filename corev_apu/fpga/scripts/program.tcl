# Copyright 2018 ETH Zurich and University of Bologna.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Author: Florian Zaruba <zarubaf@iis.ee.ethz.ch>
# Description: Program 


open_hw

connect_hw_server -url localhost:3121

if {$::env(BOARD) eq "Arty-A7"} {
  open_hw_target {localhost:3121/xilinx_tcf/Digilent/300500A9EF56C}

  current_hw_device [get_hw_devices xc7a100tcsg324-1] 
  set_property PROGRAM.FILE {work-fpga/ariane_xilinx.bit} [get_hw_devices xc7a100tcsg324-1] 
  program_hw_devices [get_hw_devices xc7a100tcsg324-1]
  refresh_hw_device [lindex [get_hw_devices xc7a100tcsg324-1] 0]
} elseif {$::env(BOARD) eq "vc707"} {
  open_hw_target {localhost:3121/xilinx_tcf/Digilent/210203A5FC70A}

  current_hw_device [get_hw_devices xc7a100tcsg324-1]
  set_property PROGRAM.FILE {work-fpga/ariane_xilinx.bit} [get_hw_devices xc7a100tcsg324-1]
  program_hw_devices [get_hw_devices xc7a100tcsg324-1]
  refresh_hw_device [lindex [get_hw_devices xc7a100tcsg324-1] 0]
} else {
      exit 1
}
