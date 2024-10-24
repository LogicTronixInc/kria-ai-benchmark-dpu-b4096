abhidan@abhidan-logictronix:~/Documents/2024$ git clone --recursive https://github.com/Xilinx/kria-vitis-platforms.git
Cloning into 'kria-vitis-platforms'...
remote: Enumerating objects: 6674, done.
remote: Counting objects: 100% (288/288), done.
remote: Compressing objects: 100% (91/91), done.
remote: Total 6674 (delta 206), reused 242 (delta 188), pack-reused 6386 (from 1)
Receiving objects: 100% (6674/6674), 109.75 MiB | 10.08 MiB/s, done.
Resolving deltas: 100% (2768/2768), done.
Submodule 'common/Vitis_Libraries' (https://github.com/Xilinx/Vitis_Libraries.git) registered for path 'common/Vitis_Libraries'
Submodule 'kd240/platforms/ip/one_wire' (https://github.com/Xilinx/axi_1wire_host-IP.git) registered for path 'kd240/platforms/ip/one_wire'
Cloning into '/home/abhidan/Documents/2024/kria-vitis-platforms/common/Vitis_Libraries'...
remote: Enumerating objects: 168501, done.        
remote: Counting objects: 100% (46503/46503), done.        
remote: Compressing objects: 100% (10823/10823), done.        
remote: Total 168501 (delta 35836), reused 43791 (delta 35179), pack-reused 121998 (from 1)        
Receiving objects: 100% (168501/168501), 964.28 MiB | 10.33 MiB/s, done.
Resolving deltas: 100% (114614/114614), done.
Cloning into '/home/abhidan/Documents/2024/kria-vitis-platforms/kd240/platforms/ip/one_wire'...
remote: Enumerating objects: 61, done.        
remote: Counting objects: 100% (61/61), done.        
remote: Compressing objects: 100% (45/45), done.        
remote: Total 61 (delta 14), reused 52 (delta 9), pack-reused 0 (from 0)        
Submodule path 'common/Vitis_Libraries': checked out 'b7b347a00e24eacee2870c4a3ff55cd08870f364'
Submodule path 'kd240/platforms/ip/one_wire': checked out '4e7d661151a76058d4bac33747529bbc2dd1c2fc'
abhidan@abhidan-logictronix:~/Documents/2024$ 
abhidan@abhidan-logictronix:~/Documents/2024$ 
abhidan@abhidan-logictronix:~/Documents/2024$ ls
kria-vitis-platforms  kv260_vcuDecode_vmixDP_plnx  kv260_vcuDecode_vmixDP_plnx.xsa
abhidan@abhidan-logictronix:~/Documents/2024$ cd kria-vitis-platforms/
abhidan@abhidan-logictronix:~/Documents/2024/kria-vitis-platforms$ git checkout xlnx_rel_v2022.2
warning: unable to rmdir 'common/Vitis_Libraries': Directory not empty
warning: unable to rmdir 'kd240/platforms/ip/one_wire': Directory not empty
Branch 'xlnx_rel_v2022.2' set up to track remote branch 'xlnx_rel_v2022.2' from 'origin'.
Switched to a new branch 'xlnx_rel_v2022.2'
abhidan@abhidan-logictronix:~/Documents/2024/kria-vitis-platforms$ git status
On branch xlnx_rel_v2022.2
Your branch is up to date with 'origin/xlnx_rel_v2022.2'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	common/
	kd240/

nothing added to commit but untracked files present (use "git add" to track)
abhidan@abhidan-logictronix:~/Documents/2024/kria-vitis-platforms$ source /media/abhidan/sata/tools/Vitis_2022_2/Vivado/2022.2/settings64.sh 
abhidan@abhidan-logictronix:~/Documents/2024/kria-vitis-platforms$ cd kv260/overlays/examples/benchmark
abhidan@abhidan-logictronix:~/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark$ ls
dpu_conf.vh  kernel_xml  Makefile  prj_conf  scripts
abhidan@abhidan-logictronix:~/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark$ 
abhidan@abhidan-logictronix:~/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark$ 
abhidan@abhidan-logictronix:~/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark$ ls
dpu_conf.vh  kernel_xml  Makefile  prj_conf  scripts
 
abhidan@abhidan-logictronix:~/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark$ make all
/media/abhidan/sata/tools/Vitis_2022_2/Vivado/2022.2/bin/vivado -mode batch -source scripts/gen_dpu_xo.tcl -tclargs binary_container_1/dpu.xo DPUCZDX8G hw mpsoc

****** Vivado v2022.2 (64-bit)
  **** SW Build 3671981 on Fri Oct 14 04:59:54 MDT 2022
  **** IP Build 3669848 on Fri Oct 14 08:30:02 MDT 2022
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.

source scripts/gen_dpu_xo.tcl
# if { $::argc != 4 } {
#     puts "ERROR: Program \"$::argv0\" requires 4 arguments!\n"
#     puts "Usage: $::argv0 <xoname> <krnl_name> <target> <device>\n"
#     exit
# }
# set xoname    [lindex $::argv 0]
# set krnl_name [lindex $::argv 1]
# set target    [lindex $::argv 2]
# set device    [lindex $::argv 3]
# puts $xoname
binary_container_1/dpu.xo
# set suffix "${krnl_name}_${target}_${device}"
# if { [info exists ::env(DIR_PATH)] } {
#     source -notrace $env(DIR_PRJ)/scripts/package_dpu_kernel.tcl
# } else {
#     source -notrace ./scripts/package_dpu_kernel.tcl
# }
INFO: [IP_Flow 19-5654] Module 'DPUCZDX8G' uses SystemVerilog sources with a Verilog top file. These SystemVerilog files will not be analysed by the packager.
INFO: [IP_Flow 19-1842] HDL Parser: Found include file "src/arch_def.vh" from the top-level HDL file.
INFO: [IP_Flow 19-1842] HDL Parser: Found include file "/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/dpu_conf.vh" from the top-level HDL file.
INFO: [IP_Flow 19-1841] HDL Parser: Add include file "/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/dpu_conf.vh" to file group xilinx_anylanguagesynthesis.
INFO: [IP_Flow 19-1841] HDL Parser: Add include file "/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/dpu_conf.vh" to file group xilinx_anylanguagebehavioralsimulation.
INFO: [IP_Flow 19-1842] HDL Parser: Found include file "src/arch_para.vh" from the top-level HDL file.
INFO: [IP_Flow 19-234] Refreshing IP repositories
INFO: [IP_Flow 19-1704] No user IP repositories specified
INFO: [IP_Flow 19-2313] Loaded Vivado IP repository '/media/abhidan/sata/tools/Vitis_2022_2/Vivado/2022.2/data/ip'.
INFO: [IP_Flow 19-5107] Inferred bus interface 'aclk' of definition 'xilinx.com:signal:clock:1.0' (from X_INTERFACE_INFO parameter from HDL file).
INFO: [IP_Flow 19-5107] Inferred bus interface 'aclk' of definition 'xilinx.com:signal:clock:1.0' (from 'X_INTERFACE_INFO' attribute).
INFO: [IP_Flow 19-5107] Inferred bus interface 'ap_clk_2' of definition 'xilinx.com:signal:clock:1.0' (from X_INTERFACE_INFO parameter from HDL file).
INFO: [IP_Flow 19-5107] Inferred bus interface 'ap_clk_2' of definition 'xilinx.com:signal:clock:1.0' (from 'X_INTERFACE_INFO' attribute).
INFO: [IP_Flow 19-5107] Inferred bus interface 'ap_rst_n_2' of definition 'xilinx.com:signal:reset:1.0' (from X_INTERFACE_INFO parameter from HDL file).
INFO: [IP_Flow 19-5107] Inferred bus interface 'ap_rst_n_2' of definition 'xilinx.com:signal:reset:1.0' (from 'X_INTERFACE_INFO' attribute).
INFO: [IP_Flow 19-5107] Inferred bus interface 'aresetn' of definition 'xilinx.com:signal:reset:1.0' (from X_INTERFACE_INFO parameter from HDL file).
INFO: [IP_Flow 19-5107] Inferred bus interface 'aresetn' of definition 'xilinx.com:signal:reset:1.0' (from 'X_INTERFACE_INFO' attribute).
INFO: [IP_Flow 19-5107] Inferred bus interface 'M_AXI_GP0' of definition 'xilinx.com:interface:aximm:1.0' (from Xilinx Repository).
INFO: [IP_Flow 19-5107] Inferred bus interface 'M_AXI_HP0' of definition 'xilinx.com:interface:aximm:1.0' (from Xilinx Repository).
INFO: [IP_Flow 19-5107] Inferred bus interface 'M_AXI_HP2' of definition 'xilinx.com:interface:aximm:1.0' (from Xilinx Repository).
INFO: [IP_Flow 19-5107] Inferred bus interface 'S_AXI_CONTROL' of definition 'xilinx.com:interface:aximm:1.0' (from Xilinx Repository).
INFO: [IP_Flow 19-5107] Inferred bus interface 'interrupt' of definition 'xilinx.com:signal:interrupt:1.0' (from Xilinx Repository).
INFO: [IP_Flow 19-4728] Bus Interface 'interrupt': Added interface parameter 'SENSITIVITY' with value 'LEVEL_HIGH'.
INFO: [IP_Flow 19-4728] Bus Interface 'aclk': Added interface parameter 'ASSOCIATED_BUSIF' with value 'M_AXI_GP0'.
INFO: [IP_Flow 19-4728] Bus Interface 'aclk': Added interface parameter 'ASSOCIATED_RESET' with value 'aresetn'.
INFO: [IP_Flow 19-4728] Bus Interface 'ap_clk_2': Added interface parameter 'ASSOCIATED_RESET' with value 'ap_rst_n_2'.
INFO: [IP_Flow 19-4728] Bus Interface 'ap_rst_n_2': Added interface parameter 'POLARITY' with value 'ACTIVE_LOW'.
INFO: [IP_Flow 19-4728] Bus Interface 'aresetn': Added interface parameter 'POLARITY' with value 'ACTIVE_LOW'.
WARNING: [IP_Flow 19-5661] Bus Interface 'ap_clk_2' does not have any bus interfaces associated with it.
WARNING: [IP_Flow 19-3157] Bus Interface 'ap_rst_n_2': Bus parameter POLARITY is ACTIVE_LOW but port 'ap_rst_n_2' is not *resetn - please double check the POLARITY setting.
WARNING: [IP_Flow 19-731] File Group 'xilinx_anylanguagesynthesis (Synthesis)': "/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/dpu_conf.vh" file path is not relative to the IP root directory.
WARNING: [IP_Flow 19-4816] The Synthesis file group has two include files that have the same base name. It is not guaranteed which of these two files will be picked up during synthesis/simulation:   src/dpu_conf.vh
  /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/dpu_conf.vh
WARNING: [IP_Flow 19-991] Unrecognized or unsupported file 'src/fingerprint_json.ttcl' found in file group 'Synthesis'.
Resolution: Remove the file from the specified file group.
WARNING: [IP_Flow 19-731] File Group 'xilinx_anylanguagebehavioralsimulation (Simulation)': "/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/dpu_conf.vh" file path is not relative to the IP root directory.
WARNING: [IP_Flow 19-4816] The Simulation file group has two include files that have the same base name. It is not guaranteed which of these two files will be picked up during synthesis/simulation:   src/dpu_conf.vh
  /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/dpu_conf.vh
WARNING: [IP_Flow 19-991] Unrecognized or unsupported file 'src/fingerprint_json.ttcl' found in file group 'Simulation'.
Resolution: Remove the file from the specified file group.
INFO: [IP_Flow 19-2181] Payment Required is not set for this core.
INFO: [IP_Flow 19-2187] The Product Guide file is missing.
INFO: [IP_Flow 19-795] Syncing license key meta-data
INFO: [IP_Flow 19-234] Refreshing IP repositories
INFO: [IP_Flow 19-1704] No user IP repositories specified
INFO: [IP_Flow 19-2313] Loaded Vivado IP repository '/media/abhidan/sata/tools/Vitis_2022_2/Vivado/2022.2/data/ip'.
INFO: [IP_Flow 19-5107] Inferred bus interface 'ap_clk_2' of definition 'xilinx.com:signal:clock:1.0' (from TCL Argument).
INFO: [IP_Flow 19-5107] Inferred bus interface 'ap_rst_n_2' of definition 'xilinx.com:signal:reset:1.0' (from TCL Argument).
# if {[file exists "${xoname}"]} {
#     file delete -force "${xoname}"
# }
# if { [info exists ::env(DIR_PATH)] } {
#     package_xo -xo_path ${xoname} -kernel_name ${krnl_name} -ip_directory ./packaged_kernel_${suffix} -kernel_xml $env(DIR_PRJ)/kernel_xml/dpu/kernel.xml
# } else {
#     package_xo -xo_path ${xoname} -kernel_name ${krnl_name} -ip_directory ./packaged_kernel_${suffix} -kernel_xml ./kernel_xml/dpu/kernel.xml
# }
WARNING: [Vivado 12-4404] The CPU emulation flow in v++ is only supported when using a packaged XO file that contains C-model files, none were found.
INFO: [Common 17-206] Exiting Vivado at Wed Oct 23 19:04:51 2024...
v++ -t hw --platform /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/kv260_custom/kv260_custom.xpfm --save-temps --config /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/prj_conf/prj_config_1dpu  -l --temp_dir binary_container_1 --log_dir binary_container_1/logs --remote_ip_cache binary_container_1/ip_cache -o "binary_container_1/dpu.xclbin" binary_container_1/dpu.xo
Option Map File Used: '/media/abhidan/sata/tools/Vitis_2022_2/Vitis/2022.2/data/vitis/vpp/optMap.xml'

****** v++ v2022.2 (64-bit)
  **** SW Build 3671529 on 2022-10-13-17:52:11
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.

INFO: [v++ 60-1306] Additional information associated with this v++ link can be found at:
	Reports: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/reports/link
	Log files: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/logs/link
Running Dispatch Server on port: 34539
INFO: [v++ 60-1548] Creating build summary session with primary output /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/dpu.xclbin.link_summary, at Wed Oct 23 19:05:05 2024
INFO: [v++ 60-1315] Creating rulecheck session with output '/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/reports/link/v++_link_dpu_guidance.html', at Wed Oct 23 19:05:05 2024
INFO: [v++ 60-895]   Target platform: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/kv260_custom/kv260_custom.xpfm
INFO: [v++ 60-1578]   This platform contains Xilinx Shell Archive '/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/kv260_custom/hw/kv260_hardware_platform.xsa'
INFO: [v++ 60-629] Linking for hardware target
INFO: [v++ 60-423]   Target device: kv260_custom
INFO: [v++ 60-1332] Run 'run_link' status: Not started
INFO: [v++ 60-1443] [19:05:06] Run run_link: Step system_link: Started
INFO: [v++ 60-1453] Command Line: system_link --xo /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/dpu.xo -keep --config /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/syslinkConfig.ini --xpfm /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/kv260_custom/kv260_custom.xpfm --target hw --output_dir /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int --temp_dir /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link
INFO: [v++ 60-1454] Run Directory: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/run_link
INFO: [SYSTEM_LINK 82-70] Extracting xo v3 file /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/dpu.xo
INFO: [SYSTEM_LINK 82-53] Creating IP database /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link/_sysl/.cdb/xd_ip_db.xml
INFO: [SYSTEM_LINK 82-38] [19:05:07] build_xd_ip_db started: /media/abhidan/sata/tools/Vitis_2022_2/Vitis/2022.2/bin/build_xd_ip_db -ip_search 0  -sds-pf /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link/kv260_hardware_platform.hpfm -clkid 1 -ip /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link/iprepo/xilinx_com_RTLKernel_DPUCZDX8G_1_0,DPUCZDX8G -o /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link/_sysl/.cdb/xd_ip_db.xml
INFO: [SYSTEM_LINK 82-37] [19:05:09] build_xd_ip_db finished successfully
Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 440.180 ; gain = 0.000 ; free physical = 21168 ; free virtual = 44855
INFO: [SYSTEM_LINK 82-51] Create system connectivity graph
INFO: [SYSTEM_LINK 82-102] Applying explicit connections to the system connectivity graph: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link/cfgraph/cfgen_cfgraph.xml
INFO: [SYSTEM_LINK 82-38] [19:05:09] cfgen started: /media/abhidan/sata/tools/Vitis_2022_2/Vitis/2022.2/bin/cfgen  -sp DPUCZDX8G_1.M_AXI_GP0:HPC1 -sp DPUCZDX8G_1.M_AXI_HP0:HP1 -sp DPUCZDX8G_1.M_AXI_HP2:HP3 -clock.freqHz 300000000:DPUCZDX8G_1.aclk -clock.freqHz 600000000:DPUCZDX8G_1.ap_clk_2 -dpa_mem_offload false -dmclkid 1 -r /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link/_sysl/.cdb/xd_ip_db.xml -o /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link/cfgraph/cfgen_cfgraph.xml
INFO: [CFGEN 83-0] Kernel Specs: 
INFO: [CFGEN 83-0]   kernel: DPUCZDX8G, num: 1  {DPUCZDX8G_1}
INFO: [CFGEN 83-0] Port Specs: 
INFO: [CFGEN 83-0]   kernel: DPUCZDX8G_1, k_port: M_AXI_GP0, sptag: HPC1
INFO: [CFGEN 83-0]   kernel: DPUCZDX8G_1, k_port: M_AXI_HP0, sptag: HP1
INFO: [CFGEN 83-0]   kernel: DPUCZDX8G_1, k_port: M_AXI_HP2, sptag: HP3
INFO: [SYSTEM_LINK 82-37] [19:05:10] cfgen finished successfully
Time (s): cpu = 00:00:00.76 ; elapsed = 00:00:00.82 . Memory (MB): peak = 440.180 ; gain = 0.000 ; free physical = 21160 ; free virtual = 44848
INFO: [SYSTEM_LINK 82-52] Create top-level block diagram
INFO: [SYSTEM_LINK 82-38] [19:05:10] cf2bd started: /media/abhidan/sata/tools/Vitis_2022_2/Vitis/2022.2/bin/cf2bd  --linux --trace_buffer 1024 --input_file /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link/cfgraph/cfgen_cfgraph.xml --ip_db /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link/_sysl/.cdb/xd_ip_db.xml --cf_name dr --working_dir /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link/_sysl/.xsd --temp_dir /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link --output_dir /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int
INFO: [CF2BD 82-31] Launching cf2xd: cf2xd -linux -trace-buffer 1024 -i /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link/cfgraph/cfgen_cfgraph.xml -r /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link/_sysl/.cdb/xd_ip_db.xml -o dr.xml
INFO: [CF2BD 82-28] cf2xd finished successfully
INFO: [CF2BD 82-31] Launching cf_xsd: cf_xsd -disable-address-gen -dn dr -dp /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/sys_link/_sysl/.xsd
INFO: [CF2BD 82-28] cf_xsd finished successfully
INFO: [SYSTEM_LINK 82-37] [19:05:12] cf2bd finished successfully
Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 440.180 ; gain = 0.000 ; free physical = 21158 ; free virtual = 44852
INFO: [v++ 60-1441] [19:05:12] Run run_link: Step system_link: Completed
Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 437.871 ; gain = 0.000 ; free physical = 21214 ; free virtual = 44908
INFO: [v++ 60-1443] [19:05:12] Run run_link: Step cf2sw: Started
INFO: [v++ 60-1453] Command Line: cf2sw -sdsl /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/sdsl.dat -rtd /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/cf2sw.rtd -nofilter /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/cf2sw_full.rtd -xclbin /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/xclbin_orig.xml -o /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/xclbin_orig.1.xml
INFO: [v++ 60-1454] Run Directory: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/run_link
INFO: [v++ 60-1441] [19:05:13] Run run_link: Step cf2sw: Completed
Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 437.871 ; gain = 0.000 ; free physical = 21208 ; free virtual = 44905
INFO: [v++ 60-1443] [19:05:13] Run run_link: Step rtd2_system_diagram: Started
INFO: [v++ 60-1453] Command Line: rtd2SystemDiagram
INFO: [v++ 60-1454] Run Directory: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/run_link
INFO: [v++ 60-1441] [19:05:13] Run run_link: Step rtd2_system_diagram: Completed
Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.04 . Memory (MB): peak = 437.871 ; gain = 0.000 ; free physical = 21205 ; free virtual = 44902
INFO: [v++ 60-1443] [19:05:13] Run run_link: Step vpl: Started
INFO: [v++ 60-1453] Command Line: vpl -t hw -f /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/kv260_custom/kv260_custom.xpfm -s --remote_ip_cache /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/ip_cache --output_dir /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int --log_dir /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/logs/link --report_dir /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/reports/link --config /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/vplConfig.ini -k /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link --no-info --iprepo /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/xo/ip_repo/xilinx_com_RTLKernel_DPUCZDX8G_1_0 --messageDb /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/run_link/vpl.pb /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/dr.bd.tcl
INFO: [v++ 60-1454] Run Directory: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/run_link

****** vpl v2022.2 (64-bit)
  **** SW Build 3671529 on 2022-10-13-17:52:11
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.

INFO: [VPL 60-839] Read in kernel information from file '/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/kernel_info.dat'.
INFO: [VPL 60-423]   Target device: kv260_custom
INFO: [VPL 60-1032] Extracting hardware platform to /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/vivado/vpl/.local/hw_platform
[19:05:17] Run vpl: Step create_project: Started
Creating Vivado project.
[19:05:23] Run vpl: Step create_project: Completed
[19:05:23] Run vpl: Step create_bd: Started
[19:05:58] Run vpl: Step create_bd: Completed
[19:05:58] Run vpl: Step update_bd: Started
[19:05:58] Run vpl: Step update_bd: Completed
[19:05:58] Run vpl: Step generate_target: Started
[19:06:22] Run vpl: Step generate_target: Completed
[19:06:22] Run vpl: Step config_hw_runs: Started
[19:06:23] Run vpl: Step config_hw_runs: Completed
[19:06:23] Run vpl: Step synth: Started
[19:06:54] Block-level synthesis in progress, 0 of 10 jobs complete, 8 jobs running.
[19:07:24] Block-level synthesis in progress, 7 of 10 jobs complete, 3 jobs running.
[19:07:54] Block-level synthesis in progress, 9 of 10 jobs complete, 1 job running.
[19:08:24] Block-level synthesis in progress, 9 of 10 jobs complete, 1 job running.
[19:08:54] Block-level synthesis in progress, 9 of 10 jobs complete, 1 job running.
[19:09:24] Block-level synthesis in progress, 9 of 10 jobs complete, 1 job running.
[19:09:54] Block-level synthesis in progress, 9 of 10 jobs complete, 1 job running.
[19:10:24] Block-level synthesis in progress, 9 of 10 jobs complete, 1 job running.
[19:10:54] Block-level synthesis in progress, 9 of 10 jobs complete, 1 job running.
[19:11:24] Block-level synthesis in progress, 9 of 10 jobs complete, 1 job running.
[19:11:54] Block-level synthesis in progress, 9 of 10 jobs complete, 1 job running.
[19:12:24] Top-level synthesis in progress.
[19:12:42] Run vpl: Step synth: Completed
[19:12:42] Run vpl: Step impl: Started
[19:14:13] Finished 2nd of 6 tasks (FPGA linking synthesized kernels to platform). Elapsed time: 00h 08m 59s 

[19:14:13] Starting logic optimization..
[19:14:13] Phase 1 Retarget
[19:14:13] Phase 2 Constant propagation
[19:14:13] Phase 3 Sweep
[19:14:13] Phase 4 BUFG optimization
[19:14:43] Phase 5 Shift Register Optimization
[19:14:43] Phase 6 Post Processing Netlist
[19:14:43] Finished 3rd of 6 tasks (FPGA logic optimization). Elapsed time: 00h 00m 30s 

[19:14:43] Starting logic placement..
[19:14:43] Phase 1 Placer Initialization
[19:14:43] Phase 1.1 Placer Initialization Netlist Sorting
[19:14:43] Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device
[19:15:13] Phase 1.3 Build Placer Netlist Model
[19:15:13] Phase 1.4 Constrain Clocks/Macros
[19:15:13] Phase 2 Global Placement
[19:15:13] Phase 2.1 Floorplanning
[19:15:43] Phase 2.1.1 Partition Driven Placement
[19:15:43] Phase 2.1.1.1 PBP: Partition Driven Placement
[19:16:13] Phase 2.1.1.2 PBP: Clock Region Placement
[19:16:13] Phase 2.1.1.3 PBP: Discrete Incremental
[19:16:13] Phase 2.1.1.4 PBP: Compute Congestion
[19:16:13] Phase 2.1.1.5 PBP: Macro Placement
[19:16:13] Phase 2.1.1.6 PBP: UpdateTiming
[19:16:13] Phase 2.1.1.7 PBP: Add part constraints
[19:16:13] Phase 2.2 Update Timing before SLR Path Opt
[19:16:13] Phase 2.3 Post-Processing in Floorplanning
[19:16:13] Phase 2.4 Global Placement Core
[19:17:13] Phase 2.4.1 UpdateTiming Before Physical Synthesis
[19:17:13] Phase 2.4.2 Physical Synthesis In Placer
[19:17:43] Phase 3 Detail Placement
[19:17:43] Phase 3.1 Commit Multi Column Macros
[19:17:43] Phase 3.2 Commit Most Macros & LUTRAMs
[19:18:13] Phase 3.3 Small Shape DP
[19:18:13] Phase 3.3.1 Small Shape Clustering
[19:18:13] Phase 3.3.2 Flow Legalize Slice Clusters
[19:18:13] Phase 3.3.3 Slice Area Swap
[19:18:13] Phase 3.3.3.1 Slice Area Swap Initial
[19:18:13] Phase 3.4 Re-assign LUT pins
[19:18:43] Phase 3.5 Pipeline Register Optimization
[19:18:43] Phase 3.6 Fast Optimization
[19:18:43] Phase 4 Post Placement Optimization and Clean-Up
[19:18:43] Phase 4.1 Post Commit Optimization
[19:19:13] Phase 4.1.1 Post Placement Optimization
[19:19:13] Phase 4.1.1.1 BUFG Insertion
[19:19:13] Phase 1 Physical Synthesis Initialization
[19:19:13] Phase 4.1.1.2 Post Placement Timing Optimization
[19:20:14] Phase 4.2 Post Placement Cleanup
[19:20:14] Phase 4.3 Placer Reporting
[19:20:14] Phase 4.3.1 Print Estimated Congestion
[19:20:14] Phase 4.4 Final Placement Cleanup
[19:20:44] Finished 4th of 6 tasks (FPGA logic placement). Elapsed time: 00h 06m 01s 

[19:20:44] Starting logic routing..
[19:20:44] Phase 1 Build RT Design
[19:20:44] Phase 2 Router Initialization
[19:20:44] Phase 2.1 Fix Topology Constraints
[19:20:44] Phase 2.2 Pre Route Cleanup
[19:20:44] Phase 2.3 Global Clock Net Routing
[19:20:44] Phase 2.4 Update Timing
[19:21:44] Phase 2.5 Update Timing for Bus Skew
[19:21:44] Phase 2.5.1 Update Timing
[19:21:44] Phase 3 Initial Routing
[19:21:44] Phase 3.1 Global Routing
[19:21:44] Phase 4 Rip-up And Reroute
[19:21:44] Phase 4.1 Global Iteration 0
[19:29:45] Phase 4.2 Global Iteration 1
[19:30:15] Phase 4.3 Global Iteration 2
[19:30:46] Phase 5 Delay and Skew Optimization
[19:30:46] Phase 5.1 Delay CleanUp
[19:30:46] Phase 5.1.1 Update Timing
[19:30:46] Phase 5.1.2 Update Timing
[19:31:16] Phase 5.2 Clock Skew Optimization
[19:31:16] Phase 6 Post Hold Fix
[19:31:16] Phase 6.1 Hold Fix Iter
[19:31:16] Phase 6.1.1 Update Timing
[19:31:16] Phase 7 Route finalize
[19:31:16] Phase 8 Verifying routed nets
[19:31:16] Phase 9 Depositing Routes
[19:31:16] Phase 10 Resolve XTalk
[19:31:16] Phase 11 Route finalize
[19:31:16] Phase 12 Post Router Timing
[19:31:46] Finished 5th of 6 tasks (FPGA routing). Elapsed time: 00h 11m 01s 

[19:31:46] Starting bitstream generation..
[19:32:16] Creating bitmap...
[19:32:46] Writing bitstream ./system_wrapper.bit...
[19:32:46] Finished 6th of 6 tasks (FPGA bitstream generation). Elapsed time: 00h 01m 00s 
Check VPL, containing 1 checks, has run: 0 errors
[19:33:14] Run vpl: Step impl: Completed
[19:33:14] Writing bitstream /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/vivado/vpl/prj/prj.runs/impl_1/.Xil/Vivado-15005-abhidan-logictronix/xsa/vpl_gen_fixed.bit...
[19:33:14] Run vpl: FINISHED. Run Status: impl Complete!
INFO: [v++ 60-1441] [19:33:14] Run run_link: Step vpl: Completed
Time (s): cpu = 00:00:05 ; elapsed = 00:28:01 . Memory (MB): peak = 437.871 ; gain = 0.000 ; free physical = 17939 ; free virtual = 42749
INFO: [v++ 60-1443] [19:33:14] Run run_link: Step rtdgen: Started
INFO: [v++ 60-1453] Command Line: rtdgen
INFO: [v++ 60-1454] Run Directory: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/run_link
INFO: [v++ 60-1453] Command Line: cf2sw -a /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/address_map.xml -sdsl /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/sdsl.dat -xclbin /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/xclbin_orig.xml -rtd /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/dpu.rtd -o /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/dpu.xml
INFO: [v++ 60-1652] Cf2sw returned exit code: 0
INFO: [v++ 60-1441] [19:33:15] Run run_link: Step rtdgen: Completed
Time (s): cpu = 00:00:00.98 ; elapsed = 00:00:01 . Memory (MB): peak = 437.871 ; gain = 0.000 ; free physical = 17958 ; free virtual = 42768
INFO: [v++ 60-1443] [19:33:15] Run run_link: Step xclbinutil: Started
INFO: [v++ 60-1453] Command Line: xclbinutil --add-section BITSTREAM:RAW:/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/system.bit --force --target hw --key-value SYS:dfx_enable:false --add-section :JSON:/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/dpu.rtd --add-section CLOCK_FREQ_TOPOLOGY:JSON:/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/dpu_xml.rtd --add-section BUILD_METADATA:JSON:/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/dpu_build.rtd --add-section EMBEDDED_METADATA:RAW:/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/dpu.xml --add-section SYSTEM_METADATA:RAW:/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/systemDiagramModelSlrBaseAddress.json --key-value SYS:PlatformVBNV:xilinx_kv260_kv260_hardware_platform_0_0 --output /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/dpu.xclbin
INFO: [v++ 60-1454] Run Directory: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/run_link
XRT Build Version: 2.14.0 (Vitis)
       Build Date: 2022-07-07 16:55:20
          Hash ID: b8ff81175d61a7e23a1a273613f410cc6fa37560
Creating a default 'in-memory' xclbin image.

Section: 'BITSTREAM'(0) was successfully added.
Size   : 7797810 bytes
Format : RAW
File   : '/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/system.bit'

Section: 'MEM_TOPOLOGY'(6) was successfully added.
Format : JSON
File   : 'mem_topology'

Section: 'IP_LAYOUT'(8) was successfully added.
Format : JSON
File   : 'ip_layout'

Section: 'CONNECTIVITY'(7) was successfully added.
Format : JSON
File   : 'connectivity'
WARNING: Skipping CLOCK_FREQ_TOPOLOGY section for count size is zero.
WARNING: Section 'CLOCK_FREQ_TOPOLOGY' content is empty.  No data in the given JSON file.

Section: 'CLOCK_FREQ_TOPOLOGY'(11) was empty.  No action taken.
Format : JSON
File   : '/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/dpu_xml.rtd'

Section: 'BUILD_METADATA'(14) was successfully added.
Size   : 4472 bytes
Format : JSON
File   : '/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/dpu_build.rtd'

Section: 'EMBEDDED_METADATA'(2) was successfully added.
Size   : 4532 bytes
Format : RAW
File   : '/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/dpu.xml'

Section: 'SYSTEM_METADATA'(22) was successfully added.
Size   : 19674 bytes
Format : RAW
File   : '/home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/int/systemDiagramModelSlrBaseAddress.json'
Successfully wrote (7837851 bytes) to the output file: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/dpu.xclbin
Leaving xclbinutil.
INFO: [v++ 60-1441] [19:33:16] Run run_link: Step xclbinutil: Completed
Time (s): cpu = 00:00:00.63 ; elapsed = 00:00:00.76 . Memory (MB): peak = 437.871 ; gain = 0.000 ; free physical = 17945 ; free virtual = 42763
INFO: [v++ 60-1443] [19:33:16] Run run_link: Step xclbinutilinfo: Started
INFO: [v++ 60-1453] Command Line: xclbinutil --quiet --force --info /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/dpu.xclbin.info --input /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/dpu.xclbin
INFO: [v++ 60-1454] Run Directory: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/run_link
INFO: [v++ 60-1441] [19:33:17] Run run_link: Step xclbinutilinfo: Completed
Time (s): cpu = 00:00:00.66 ; elapsed = 00:00:00.73 . Memory (MB): peak = 437.871 ; gain = 0.000 ; free physical = 17946 ; free virtual = 42765
INFO: [v++ 60-1443] [19:33:17] Run run_link: Step generate_sc_driver: Started
INFO: [v++ 60-1453] Command Line: 
INFO: [v++ 60-1454] Run Directory: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/link/run_link
INFO: [v++ 60-1441] [19:33:17] Run run_link: Step generate_sc_driver: Completed
Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 437.871 ; gain = 0.000 ; free physical = 17946 ; free virtual = 42765
Check POST-VPL, containing 1 checks, has run: 0 errors
INFO: [v++ 60-244] Generating system estimate report...
INFO: [v++ 60-1092] Generated system estimate report: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/reports/link/system_estimate_dpu.xtxt
INFO: [v++ 82-3844] Successfully added runtime data to binary_container_1/dpu.xsa
INFO: [v++ 60-2397] Platform default or user specified output type sd_card detected but is not a supported output for v++ --link. Use the v++ --package option instead to create SD card output.
INFO: [v++ 60-586] Created binary_container_1/dpu.xclbin
INFO: [v++ 60-1307] Run completed. Additional information can be found in:
	Guidance: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/reports/link/v++_link_dpu_guidance.html
	Timing Report: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/reports/link/imp/impl_1_system_wrapper_timing_summary_routed.rpt
	Vivado Log: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/logs/link/vivado.log
	Steps Log File: /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/logs/link/link.steps.log

INFO: [v++ 60-2343] Use the vitis_analyzer tool to visualize and navigate the relevant reports. Run the following command. 
    vitis_analyzer /home/abhidan/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark/binary_container_1/dpu.xclbin.link_summary 
INFO: [v++ 60-791] Total elapsed time: 0h 28m 22s
INFO: [v++ 60-1653] Closing dispatch client.
xclbinutil --remove-section BITSTREAM --force --input binary_container_1/dpu.xclbin --output strip.xclbin
XRT Build Version: 2.14.0 (Vitis)
       Build Date: 2022-07-07 16:55:20
          Hash ID: b8ff81175d61a7e23a1a273613f410cc6fa37560
Reading xclbin file into memory.  File: binary_container_1/dpu.xclbin

Section 'BITSTREAM'(0) was successfully removed
Successfully wrote (39894 bytes) to the output file: strip.xclbin
Leaving xclbinutil.
cp ./binary_*/link/vivado/vpl/prj/prj*/sources_1/bd/*/hw_handoff/*.hwh ./binary_*/sd_card
cp ./binary_*/link/vivado/vpl/prj/prj.gen/sources_1/bd/*/ip/*_DPUCZDX8G_1_0/arch.json ./binary_*/sd_card
cp ./binary_*/link/vivado/vpl/prj/prj.runs/impl_1/*.bit ./binary_*/sd_card
cp ./binary_*/*.xclbin ./binary_*/sd_card
abhidan@abhidan-logictronix:~/Documents/2024/kria-vitis-platforms/kv260/overlays/examples/benchmark$ 

