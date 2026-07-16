<p align="center">

# Alpha-Beta Filter Target Tracking

### *A Hardware-Efficient RTL Implementation using Verilog HDL*

<img src="https://readme-typing-svg.demolab.com?font=Orbitron&size=22&duration=3000&pause=1000&color=00C2FF&center=true&vCenter=true&width=700&lines=Real-Time+Target+Tracking;FPGA+Implementation;Verilog+HDL;Fixed-Point+Q8.8+Arithmetic" />

</p>

<p align="center">

![Verilog](https://img.shields.io/badge/Language-Verilog-blue?style=for-the-badge)

![Vivado](https://img.shields.io/badge/Tool-Xilinx%20Vivado-darkgreen?style=for-the-badge)

![FPGA](https://img.shields.io/badge/Platform-FPGA-orange?style=for-the-badge)

![RTL](https://img.shields.io/badge/Design-RTL-red?style=for-the-badge)

![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)

</p>
# Overview

Modern radar systems receive noisy measurements due to environmental interference and sensor inaccuracies. To obtain an accurate estimate of a moving target's position and velocity, prediction algorithms are employed.

This project presents a complete RTL implementation of an **Alpha-Beta Filter** using **Verilog HDL**. The design predicts the next target position, calculates the prediction error (residual), and continuously refines the position and velocity estimates using fixed-point arithmetic (Q8.8).

The architecture is modular, synthesizable, and verified through simulation in **Xilinx Vivado 2025.2**.

Radar Input
      │
      ▼
 Predictor
      │
      ▼
 Residual
      │
      ▼
 Position Update
      │
      ▼
 Velocity Update
      │
      ▼
 Register Bank
 

## ◉ Project Structure

```text
Alpha-Beta-Filter-Target-Tracking
│
├── alpha_beta_filter.v
├── predictor.v
├── residual.v
├── position_update.v
├── velocity_update.v
├── register_bank.v
└── tb_alpha_beta.v
```

---

## RTL Modules

### Predictor

Predicts the future position using the current position and velocity.

---

### Residual

Computes the prediction error between the measured and predicted position.

---

### Position Update

Updates the estimated position using the Alpha gain.

---

### Velocity Update

Updates the estimated velocity using the Beta gain.

---

### Register Bank

Stores the updated position and velocity values.

---

### Top Module

Integrates all RTL blocks into a complete Alpha-Beta Filter.

---

## Simulation Results

✔ Position Prediction

✔ Residual Calculation

✔ Position Correction

✔ Velocity Correction

✔ Register Update

✔ Stable Tracking

## ◉ Applications

Radar Tracking

Autonomous Navigation

Robotics

Industrial Automation

Defense Electronics

Air Traffic Monitoring


---

## Developed By

**Percy Deborah**

B.Tech | Electronics and Communication Engineering

Karunya Institute of Technology and Sciences

*"Learning by Building."*
