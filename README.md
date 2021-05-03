### Detalles previos

- Este dataset ha sido extraído de [Kaggle](https://www.kaggle.com/iliassekkaf/computerparts "Kaggle").
- El análisis de los datos se ha realizado con [R](https://en.wikipedia.org/wiki/R_programming_language "R"), en [RStudio](https://www.rstudio.com/ "RStudio").

# GPU Dataset Analysis

![](https://img.shields.io/github/issues/JohanVonElectrum/GPU-Dataset-Analysis) ![](https://img.shields.io/github/forks/JohanVonElectrum/GPU-Dataset-Analysis) ![](https://img.shields.io/github/stars/JohanVonElectrum/GPU-Dataset-Analysis) ![](https://img.shields.io/github/license/JohanVonElectrum/GPU-Dataset-Analysis)


**Table of Contents**

[TOCM]

[TOC]

## Resumen

## Información relevante

- El dataset consta de 34 variables con 3406 observaciones. Se puede encontrar en [Kaggle](https://www.kaggle.com/iliassekkaf/computerparts "Kaggle").
- Este estudio se hace con el fin de encontrar patrones y tendencias en los datos sobre las GPUs del dataset.
- La muestra en cada sección del análisis es diferente, así que se especificarán sus características y como se ha seleccionado en los casos que no usen la totalidad de los datos.
- Existen variables redundantes en el [dataset](https://www.kaggle.com/iliassekkaf/computerparts "Kaggle"), como el par ["Dedicated", "Integrated"].

### Breve descripción sobre las variables

| Variable               | Descripción                     | Tipo      | Unidad        | NA %     | Relación                |
| ---------------------- | ------------------------------- | --------- |:-------------:| --------:| ----------------------- |
| Architecture           | Nombre de la arquitectura       | Categoría |               |   1.82 % |                         |
| Best_Resolution        | Resolución óptima               | Categoría | Píxel         |  18.85 % |                         |
| Boost_Clock            | Frecuencia en turbo             | Número    | Hz            |  57.55 % |                         |
| Core_Speed             | Frecuencia del reloj            | Número    | Hz            |  26.63 % |                         |
| DVI_Connection         | Conexiones DVI                  | Número    |               |  22.02 % |                         |
| Dedicated              | Tarjeta dedicada                | Booleano  |               |   0.41 % | Inversa de "Integrated" |
| Direct_X               | Versión de DirectX              | SEMVER*   |               |   0.18 % |                         |
| DisplayPort_Connection | Conexiones DisplayPort          | Número    |               |  74.84 % |                         |
| HDMI_Connection        | Conexiones HDMI                 | Número    |               |  22.4  % |                         |
| Integrated             | Tarjeta integrada               | Booleano  |               |   0.41 % | Inversa de "Dedicated"  |
| L2_Cache               | Tamaño del L2 Cache             | Número    | Byte          |   0    % |                         |
| Manufacturer           | Fabricante                      | Categoría |               |   0    % |                         |
| Max_Power              | Potencia requerida              | Número    | Watts         |  18.35 % |                         |
| Memory                 | Cantidad de VRAM                | Número    | Byte          |  12.33 % |                         |
| Memory_Bandwidth       | Velocidad de i/o en VRAM        | Número    | Byte/segundo  |   3.55 % |                         |
| Memory_Bus             | Tamaño del BUS                  | Número    | Bit           |   1.82 % |                         |
| Memory_Speed           | Frecuencia de la VRAM           | Número    | Hz            |   3.08 % |                         |
| Memory_Type            | Tipo de VRAM                    | Categoría |               |   1.64 % |                         |
| Name                   | Nombre de la GPU                | Texto     |               |   0    % |                         |
| Notebook_GPU           | GPU para Notebook               | Booleano  |               |   0    % |                         |
| Open_GL                | Versión de OpenGL               | SEMVER*   |               |   1.17 % |                         |
| PSU                    | Fuente de alimentación          | Categoría |               |  34.5  % |                         |
| Pixel_Rate             | Píxeles por segundo             | Número    | Píxel/segundo |  19.97 % |                         |
| Power_Connector        | Conector de corriente           | Categoría |               |  20.82 % |                         |
| Process                | Tecnología                      | Número    | Nanómetro     |  13.59 % |                         |
| ROPs                   | Pipelines de rasterización      | Número    |               |  15.8  % |                         |
| Release_Date           | Fecha de salida al mercado      | Fecha     |               |   0    % |                         |
| Release_Price          | Precio de salida                | Número    | Dólares ($)   |  83.68 % |                         |
| Resolution_WxH         | Máxima resolución               | Categoría | Píxel         |   5.73 % |                         |
| SLI_Crossfire          | Compatible con Crossfire o SLI  | Booleano  |               |   0    % |                         |
| Shader                 | Modelo de Shader                | SEMVER*   |               |   3.14 % |                         |
| TMUs                   | Unidades de mapeado de texturas | Número    |               |  15.8  % |                         |
| Texture_Rate           | Téxeles por segundo             | Número    | Téxel/segundo |  15.97 % |                         |
| VGA_Connection         | Conexiones VGA                  | Número    |               |  22.25 % |                         |

## Objetivo

En este análisis se pretenden sacar conclusiones a partir de los datos disponibles en el [dataset](https://www.kaggle.com/iliassekkaf/computerparts "Kaggle"). Algunos de ellos serán:
- Relación del precio de salida con la fecha de salida, los nanómetros de la tecnología, la memoria VRAM, la resolución óptima, y la frecuencia del reloj.
- Relación de la resolución óptima con los téxeles por segundo, los píxeles por segundo, la frecuencia del reloj, y la potencia requerida.

## Población-muestra

Cada muestra es elegida para representar a la población correctamente. En cada análisis se especificará con que criterio se ha seleccionado la muestra y por qué se considera representativa de la población. Los criterios siempre evitaran sesgar y/o perder información.

# Análisis de las variables

## Frecuencia de las arquitecturas
