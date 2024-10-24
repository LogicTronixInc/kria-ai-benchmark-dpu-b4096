# Creating Benchmark B4096-DPU Overlay

## Tools required for following this tutorial
1. VIVADO/Vitis 2022.2 
2. Petalinux 2022.2 

## Steps to Follow to run benchmark-b4096 overlay
Note: you can also check [Benchmark-B4096-BUILD-LOG-Oct23-2024.sh](https://github.com/LogicTronixInc/kria-ai-benchmark-dpu-b4096/blob/master/Benchmark-B4096-Platform-Overlay-Creation/Benchmark-B4096-BUILD-LOG-Oct23-2024.sh), this build log has the all the commands run in terminal from git clone to make command.

**Steps:**
1. First clone github: 
`git clone -b xlnx_rel_v2022.2 --recursive https://github.com/Xilinx/kria-vitis-platforms.git`
2. Now goto `kv260/overlays/examples/benchmark` using cd command.
3. Now clone this repo: `git clone https://github.com/LogicTronixInc/kria-ai-benchmark-dpu-b4096.git`
4. Goto `Benchmark-B4096-Platform-Overlay-Creation/Vitis-Platform`.
5. Copy  `kv260_custom-minimal-platform.zip` to `kv260/overlays/examples/benchmark` and extract there. 

6. In `Makefile` after line 14 (after `TARGET = hw`) add the path of Vitis Custom Platform whcih is given along with this repo as example:
`PLATFORM = <your_git_clone_path>kria-vitis-platforms/kv260/overlays/examples/benchmark/kv260_custom/kv260_custom.xpfm`

7. Now everything is ready. 
8. Now source VIVADO or Vitis 2022.2
9. Now run `make all` command.

10. Based on PC performance (CPU and RAM) this benchmark-b4096 can generate within 15min to 30min. If PC has less than 8 CPU core and less than 32GB memory then it will be slowed down. In case of having RAM only 16GB you can add another 16GB of Swap in Linux/Ubuntu by that way you can generate Kria-Vitis-Platform and overlay in low RAM PC to.

11. After make completes you can get `sd_card` directory with XCLBIN, BIT, arch.json etc files. We will be using XCLBIN as firmware file and arch.json is used for Vitis AI model compilation purpose.

12. You can also open the VIVADO project with DPU accelerator at: `<current-path>/binary_container_1/link/vivado/vpl/prj/prj.xpr`

# Block Design after adding Vitis DPU Accelerator 
Here is the Block design snippet which is taken by opening the VIVADO design in which DPU accelerator has been already added by Vitis while running make command.

![Benchmark-B4096-Block-Design-snippet](https://github.com/LogicTronixInc/kria-ai-benchmark-dpu-b4096/blob/master/Benchmark-B4096-Platform-Overlay-Creation/images/Benchmark-B4096-Block-Design-snippet.png) 


# Resource Usage by Benchmark B4096 in KV260

## Following picture shows the resource usage by B4096 DPU in KV260 
![Benchmark-B4096-Resource-Usage](https://github.com/LogicTronixInc/kria-ai-benchmark-dpu-b4096/blob/master/Benchmark-B4096-Platform-Overlay-Creation/images/Benchmark-B4096-Resource-Usage.png)  

## Complete Resource Utilization Report
[benchmark-b4096-resource-utilization_report.txt](https://github.com/LogicTronixInc/kria-ai-benchmark-dpu-b4096/blob/master/Benchmark-B4096-Platform-Overlay-Creation/benchmark-b4096-resource-utilization_report.txt) 

\
For any questions or queries, please write us at: info@logictronix.com

### LogicTronix is AMD-Xilinx Design Service Partner for FPGA Design & ML Acceleration! 

**Note: This repo does not mean to include production grade resources or files (only good for test and explore) , so for any real world solution and production grade deployment plan contact us!**

