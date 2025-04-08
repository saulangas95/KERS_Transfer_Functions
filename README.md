# Analysis of Kinetic Energy Recovery System Based on Four-Phase Interleaved Buck Converter for Vehicle Verification Processes

**ID 9490:** IEEE LATAM Manuscript ID: XXXXX  
**Autores:**  
- Iván Reyes-Portillo  
- Abraham Claudio  
- Dora Castro  
- Saúl Méndez  
- Luis Carreto  

---

## 📁 Scripts incluidos

Este repositorio contiene todos los scripts necesarios para reproducir los resultados numéricos y figuras del artículo.

| Script | Figura(s) reproducidas | Descripción |
|--------|------------------------|-------------|
| `TransferFunctions_KERS.m` | Fig. 5 | Genera funciones de transferencia desde velocidad del vehículo hacia velocidad angular del generador y voltaje de salida. Incluye respuestas al escalón para distintos perfiles de velocidad (60 a 120 km/h). |
| `flywheel.m` | Fig. 6 (a, b, c) | Calcula masa, momento de inercia y energía almacenada para cinco diseños de volante de inercia. Genera gráficas de barras para comparar acero y aluminio. |
| `senales.m` | Fig. 9 (a, b, c, d) | Carga señales experimentales desde `Graf-KERs.xlsx` y genera cuatro subgráficas: corriente de entrada, corrientes en inductores, corriente de salida y voltaje de salida. |

---

## 📂 Archivos necesarios

- `Graf-KERs.xlsx`: archivo de datos necesario para `senales.m`. Debe estar en la misma carpeta que el script.
- `flywheel.m` y `TransferFunctions_KERS.m` son autónomos y no requieren archivos adicionales.

---

## 💻 Requisitos

- MATLAB R2018b o posterior.
- No se requieren toolboxes adicionales.

---

## ✉️ Contacto

Para dudas o reproducción de resultados:  
ivan.reyes@upslp.edu.mx  

Dora Castro-López  
Luis Carreto-Hernández


