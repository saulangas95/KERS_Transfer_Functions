# KERS_Transfer_Functions

# KERS Transfer Function Modeling

This repository contains MATLAB code to model the experimental behavior of a Kinetic Energy Recovery System (KERS) used in vehicle verification processes. The system includes a mechanical flywheel, a DC generator, and a four-phase interleaved buck converter.

##  Description

The main goal is to approximate the system dynamics from vehicle speed input to two key output variables:

1. **Angular speed at the generator input** (`ω_M` in rpm)
2. **Generator output voltage** (`V_u` in volts)

These models are based on first-order approximations using experimentally derived time constants.

##  Files

- `TransferFunctions_KERS.m`: Main MATLAB script with both transfer function models and step responses.
- `README.md`: Project description (this file).
- `LICENSE`: (Optional) You may add a license such as MIT or Apache.

##  System Parameters

- Mechanical gain: `K_rpm = 18.72` rpm per km/h
- Mechanical time constant: `τ_m = 1.5 s`
- Generator constant: `k_m = 0.51 V/(rad/s)`
- Electrical time constant: `τ_e = 0.000365 s`

##  Output

The script generates two step response plots:
- Generator angular speed (`ω_M`) vs. time
- Generator voltage output (`V_u`) vs. time

##  Requirements

- MATLAB R2020b or newer
- Control Systems Toolbox

##  Authors

Iván Reyes-Portillo  
Abraham Claudio-Sánchez  
Saúl Méndez-Elizondo  
Dora Castro-López  
Luis Carreto-Hernández

##  License

This project is distributed under the MIT License.
