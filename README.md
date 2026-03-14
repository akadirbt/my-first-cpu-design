# My First CPU Design

A 16-bit RISC CPU designed from scratch in SystemVerilog, developed on Xilinx KV260.

## Architecture
```
Instruction Memory → Control Unit → ALU
                                  → Register File
Program Counter ──────────────────────────────
```

## Modules

|        Module           |                   Description |
|-------------------------|---------------------------------------------------------|
| `cpu_pkg.sv`            | Shared opcodes package |
| `cpu_top.sv`            | Top module - connects all modules |
| `program_counter.sv`    | 16-bit PC with branch support |
| `instruction_memory.sv` | ROM - 64 x 16-bit instructions |
| `control_unit.sv`       | Instruction decoder |
| `alu_16bit.sv`          | 16-bit ALU (ADD, SUB, AND, OR, XOR, NOT, SHL, SHR, CMP) |
| `register_file.sv`      | 8 x 16-bit register file |
| `adder_16bit.sv`        | 16-bit adder with carry |

## Instruction Format
```
[15:12] op (4-bit) | [11:9] rd | [8:6] rs1 | [5:3] rs2 | [2:0] reserved
```

## Tools
- Vivado 2025.1
- SystemVerilog
- Target: Xilinx KV260
