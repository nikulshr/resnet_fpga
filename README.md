# ResNet on FPGA
This project at UCSD is a part of the course CSE 237D (SP'20) and also the research on IoT neural networks in Prof. Ryan Kastner's group.

## Overview
Automatic modulation classification of radio signals is useful for spectrum sensing but still require lots of improvement. Neural network (NN) solutions like ResNets are state-of-the-art for this but need an efficient hardware implementation. We propose that an FPGA implementation would be able to reduce memory footprint and improve latency.

## Goals
- Implementation with baseline accuracy (PyTorch)
- Quantization of NNs (Brevitas, TWN Generator)
- Generation of RTL design (Vivado HLS)
- Target test results (RFSoC ZCU111)
Please glance at the commit messages to see progress.

## Team
- Kartik Kulgod (SW)
- Zesen Zhang (SW)
- Nitish Kulshrestha (HW)

## References
- Real-time Automatic Modulation Classification using RFSoC
- OTA Deep Learning based MC: https://arxiv.org/pdf/1712.04578.pdf
- Unrolling ternary NN: https://arxiv.org/pdf/1909.04509.pdf
