# 🚀 Alpha-Beta Filter Target Tracking using Verilog HDL

## 📖 Overview

This project implements an **Alpha-Beta Filter** in **Verilog HDL** for real-time target tracking applications. The filter estimates the target's **position** and **velocity** using noisy radar measurements and predicts the next target position using fixed-point arithmetic (Q8.8).

The design is modular, synthesizable, and verified using **Xilinx Vivado 2025.2**.

---

## 🎯 Objectives

- Design an Alpha-Beta Filter using Verilog HDL
- Predict target position from radar measurements
- Estimate target velocity
- Implement Q8.8 fixed-point arithmetic
- Verify the design using Vivado simulation

---

## 🛠 Tools Used

- Verilog HDL
- Xilinx Vivado 2025.2
- FPGA RTL Design
- Fixed-Point Arithmetic (Q8.8)

---

## 📂 Project Structure

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

## 🧩 RTL Modules

| Module | Description |
|---------|-------------|
| alpha_beta_filter.v | Top module integrating all blocks |
| predictor.v | Predicts the next target position |
| residual.v | Calculates the prediction error (residual) |
| position_update.v | Updates the estimated position |
| velocity_update.v | Updates the estimated velocity |
| register_bank.v | Stores position and velocity values |
| tb_alpha_beta.v | Testbench for functional simulation |

---

## ⚙️ Working Principle

1. Receive radar measurements (Range & Doppler).
2. Predict the next target position.
3. Calculate the residual (prediction error).
4. Correct the estimated position.
5. Update the estimated velocity.
6. Store the updated values for the next prediction cycle.

---

## 📊 Simulation

The design was simulated successfully in **Xilinx Vivado 2025.2**, and the waveform verified the correct prediction and update operations of the Alpha-Beta Filter.

---

## 🚀 Applications

- Radar Target Tracking
- Autonomous Vehicles
- UAV Navigation
- Robotics
- Missile Guidance Systems

---

## 👨‍💻 Author

**Percy Deborah**

B.Tech – Electronics and Communication Engineering

Karunya Institute of Technology and Sciences
