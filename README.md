# Linear Regression Model Using Hardware System

This project implements a **linear regression model** using a **hardware system**. It explores how hardware can optimize tasks such as matrix multiplication, memory management, and inverse calculations. The system uses basic arithmetic units like adders and multipliers and divides memory for three primary components: **input features**, **output values**, and **weights**. 

## Project Structure

This repository contains Verilog modules that implement various components required for the linear regression model.

### **Memory Units**
- **`memory_in.v`**: Memory module for storing the input features of the linear regression model.
- **`memory_out.v`**: Memory module for storing the output values computed during each iteration.
- **`memory_weight.v`**: Memory module for storing the weights of the regression model, which are updated during training.
  
### **Testbenches for Memory Modules**
- **`memory_in_tb.v`**: Testbench for the `memory_in` module.
- **`memory_out_tb.v`**: Testbench for the `memory_out` module.
- **`memory_weight_tb.v`**: Testbench for the `memory_weight` module.

### **Arithmetic Circuits**
- **`multiplier_ckt_8bit.v`**: 8-bit multiplier circuit used for performing multiplication operations in matrix multiplication.
- **`adder_ckt_8_bit.v`**: 8-bit adder circuit used for performing addition operations in matrix summation and weight updates.

### **Testbenches for Arithmetic Circuits**
- **`multiplier_ckt_8bit_tb.v`**: Testbench for the `multiplier_ckt_8bit` module.
- **`adder_ckt_8_bit_tb.v`**: Testbench for the `adder_ckt_8_bit` module.

## How It Works

1. **Memory Units**:  
   - **Input Features**: Stored in `memory_in.v`. These are the input values used to train the regression model.
   - **Output Values**: Stored in `memory_out.v`. These are the computed values after performing regression calculations.
   - **Weights**: Stored in `memory_weight.v`. The weights are updated during each iteration to minimize error.

2. **Arithmetic Circuits**:  
   - **Multiplier Circuit**: Used to perform the multiplication operations during matrix calculations.
   - **Adder Circuit**: Performs the addition operations required for summing matrices and updating weights.

3. **Testing**:  
   - Each module includes its corresponding testbench (e.g., `memory_in_tb.v`, `multiplier_ckt_8bit_tb.v`) to verify its functionality. 


## Motivation

This project is part of my exploration into high-performance hardware systems and reconfigurable architectures. The aim is to implement a simple yet effective hardware-based system for linear regression, optimizing computational performance by leveraging hardware resources for matrix operations.

