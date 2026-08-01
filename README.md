# FPGA Projects — Digilent Basys 3

Verilog designs targeting the Digilent Basys 3 development board (Xilinx Artix-7 `XC7A35T-1CPG236C`), built with Vivado ML Standard 2025.2.

Each project directory contains the RTL source, constraints file, a testbench where applicable, and notes on what was built and what went wrong.

## Projects

| # | Project | Concepts |
|---|---------|----------|
| 01 | [Switches to LEDs](01_switches_leds/) | Combinational logic, XDC pin constraints, full synthesis-to-hardware flow |
| 02 | [Seven-Segment Counter](02_seven_segment_display/) | Sequential logic, clock division, enable pulses, combinational decoding |

*In progress: four-digit multiplexing, UART transceiver with self-checking testbench, SPI/I²C master controllers.*

## Toolchain

- **Board:** Digilent Basys 3
- **FPGA:** Xilinx Artix-7 XC7A35T-1CPG236C
- **Software:** Vivado ML Standard 2025.2
- **Language:** Verilog-2001

## Build and program

1. Open the project `.xpr` in Vivado, or create a new RTL project targeting `xc7a35tcpg236-1` and add the files from `src/` and `constraints/`.
2. Run Synthesis, then Implementation, then **Generate Bitstream**. Implementation alone does not produce a `.bit` file.
3. Set the **MODE jumper (JP1) to JTAG**. In QSPI position the board boots from flash and ignores the programmed design.
4. Open Hardware Manager → Open Target → Auto Connect → Program Device.

A green DONE LED indicates successful configuration.

## Repository notes

Vivado generates large build directories (`.runs/`, `.cache/`, `.sim/`, `.gen/`) that are excluded via `.gitignore`. Only source, constraints, and project files are tracked; everything else regenerates from a rebuild.

## Author

Ben Garza — [github.com/ben-garza-dev](https://github.com/ben-garza-dev)
