<h1 align="center">Alpha-Beta Filter Target Tracking using Verilog HDL</h1>

<p align="center">
A modular RTL implementation of an Alpha-Beta Filter for real-time target tracking using fixed-point (Q8.8) arithmetic.
</p>

---

## ◉ Project Overview

The Alpha-Beta Filter is a lightweight tracking algorithm used in radar and navigation systems to estimate a moving target's **position** and **velocity** from noisy measurements.

This project implements the complete Alpha-Beta Filter in **Verilog HDL** using a modular RTL architecture. The design was verified using **Xilinx Vivado 2025.2** and uses **Q8.8 fixed-point arithmetic** for efficient FPGA implementation.

---

## ◎ Project Objectives

✔ Predict the next target position

✔ Estimate target velocity

✔ Reduce measurement noise

✔ Implement Q8.8 fixed-point arithmetic

✔ Verify functionality through simulation

---

## ◉ Technologies Used

| Category | Tool |
|----------|------|
| HDL | Verilog |
| FPGA Tool | Xilinx Vivado 2025.2 |
| Number Format | Q8.8 Fixed Point |
| Verification | Behavioral Simulation |

---

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

## ◉ RTL Modules

| File | Purpose |
|------|---------|
| alpha_beta_filter.v | Top-level module |
| predictor.v | Predicts future position |
| residual.v | Calculates prediction error |
| position_update.v | Updates estimated position |
| velocity_update.v | Updates estimated velocity |
| register_bank.v | Stores current estimates |
| tb_alpha_beta.v | Testbench |

---

## ◉ Algorithm Flow

```text
Radar Measurement
        │
        ▼
Prediction Stage
        │
        ▼
Residual Calculation
        │
        ▼
Position Update
        │
        ▼
Velocity Update
        │
        ▼
Updated Estimate
```

---

## ◉ Simulation

The design was successfully simulated in **Xilinx Vivado 2025.2**.

Simulation verified:

- Position prediction
- Residual computation
- Position correction
- Velocity correction
- Register updates

---

## ◉ Applications

• Radar Target Tracking

• Air Traffic Surveillance

• UAV Navigation

• Autonomous Vehicles

• Robotics

• Defense Systems

---
---

## 👩‍💻 Author

**Percy Deborah**

B.Tech – Electronics and Communication Engineering

Karunya Institute of Technology and Sciences
