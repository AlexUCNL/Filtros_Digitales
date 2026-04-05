# Proyecto Filtros Digitales - Señales y Sistemas

## Objetivo
Diseñar filtros digitales pasa bajos, pasa altos y pasa bandas, aplicarlos a una señal con ruido y analizar su efectividad usando MATLAB.

## Archivos incluidos
- `filtros.m` : Script de MATLAB que genera la señal, aplica los filtros y grafica los resultados.
- PNGs de las gráficas:
  - `senal_ruido.png`
  - `pasa_bajos.png`
  - `pasa_altos.png`
  - `pasa_bandas.png`
- FIGs de las gráficas (opcional, editable en MATLAB):
  - `senal_ruido.fig`
  - `pasa_bajos.fig`

## Uso
1. Abrir `filtros.m` en MATLAB.
2. Ejecutar el script para generar todas las gráficas y resultados automáticamente.
3. Las gráficas se guardarán automáticamente en la misma carpeta.

## Observaciones
- Se usó filtro **Butterworth** de orden 4.
- Frecuencia de muestreo: `fs = 1000 Hz`.
- `filtfilt` se usó para evitar desfase en las señales.
- Se muestran gráficas para:
  - Señal con ruido
  - Filtro pasa bajos
  - Filtro pasa altos
  - Filtro pasa bandas