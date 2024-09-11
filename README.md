based on madamic/zynq_tdc

Setup on the Red Pitaya system (STEMLab 125-10 or 125-14)

Copy the contents of the setup folder (FPGA bitstream, PLclock script and C server) on the Red Pitaya system
Run preset ("./PLclock") to lower the Zynq PL frequency to 100 MHz and Load the FPGA configuration ("cat TDCsystem_wrapper.bit > /dev/xdevcfg")
Compile and run the C server ("gcc -o TDCserverMT TDCserver_MTc.c" and "./TDCserverMT")
On a client PC, run matlab script
