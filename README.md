# Kria-VitisAI-DPU-Benchmark-B4096
This repo is on re-creating the **Kria Benchmark-B4096 DPU Design** and getting resource utilization and to publish the sources to create those!


# Repository Hierarchy/Flow

We are re-creating the following "Benchmark-B4096" custom platform , overlay and its firmware files. 
1. **Creating Custom Vitis Platform for Kria KV260 (similar step for KR260 needed)**: https://github.com/Xilinx/Vitis-Tutorials/tree/2022.2/Vitis_Platform_Creation/Design_Tutorials/01-Edge-KV260#step-by-step-tutorial  \
We have the custom Vitis Platform for KV260 and creation steps at: `<>/Benchmark-B4096-Platform-Overlay-Creation/Vitis-Platform` directory.

2. **Benchmark-B4096 Vitis Overlay**: https://github.com/Xilinx/kria-vitis-platforms/tree/xlnx_rel_v2022.2/kv260/overlays/examples/benchmark \
All the overlay creation steps are provided at ReadMe at `<>/Benchmark-B4096-Platform-Overlay-Creation/`.

3. **Benchmark-B4096 Frimware files**: https://github.com/Xilinx/kria-apps-firmware/tree/xlnx_rel_v2022.2/boards/kv260/benchmark-b4096 \
We have provided the firmware files and how to use firmware provided by Xilinx at here `<>/Benchmark-B4096-Firmwares`.

4. **Run firmware in KV260**
We are not building Petlainux Image here. So either you can use the Petalinux WIC image provided by Xilinx to load these firmware or you can use Kria-Ubuntu to load this firmware. In Kria-Ubuntu you can clone and replace the kria-smartcam firmware with this one and test it inside kria-smartcam-docker for `xdputil query` and `show_dpu`.


### Note:
**As last update for DPU IP for MPSoC is at Vitis AI 3.0 repo (which is DPU IP v4.1) and supports 2022.2 VIVADO/Vitis and Petlainux , so we are using this 2022.2 version for the design.** 

If you want to create 2023.1 or later version of Benchmark-4096 design (though DPU IP is same for 2022.2 or later version of designs) you can follow respective version of git tutorials at above "point 1, 2, and 3".

### How to get B4096 benchmark overlay for KR260?
If you want to re-create same B4096 for KR260 then same steps works for KR260 also only the Vitis Platform need to be created on. For KR260 we also have published the VIVADO flow based DPU-TRD here: https://www.hackster.io/LogicTronix/kria-kr260-dpu-trd-vivado-flow-vitis-ai-3-0-tutorial-0085fd .

## Repository Hierarchy
| \
├── Benchmark-B4096-Firmwares \
│   ├── benchmark-b4096.bit \
│   ├── benchmark-b4096.xclbin \
│   ├── pl.dtbo \
│   ├── pl.dtsi \
│   ├── README.md \
│   └── shell.json \
├── Benchmark-B4096-Platform-Overlay-Creation \
│   ├── arch.json \
│   ├── Benchmark-B4096-BUILD-LOG-Oct23-2024.sh \
│   ├── benchmark-b4096-project-hierarchy.png \
│   ├── benchmark-b4096-resource-utilization_report.txt \
│   ├── benchmark-b4096-system-block-design.pdf \
│   ├── Build-Logs \
│   ├── images \
│   ├── Makefile \
│   ├── README.md \
│   └── Vitis-Platform \
└── README.md 


\
For any questions or queries, please write us at: info@logictronix.com

### LogicTronix is AMD-Xilinx Design Service Partner for FPGA Design & ML Acceleration! 

**Note: This repo does not mean to include production grade resources or files (only good for test and explore) , so for any real world solution and production grade deployment plan contact us!**




