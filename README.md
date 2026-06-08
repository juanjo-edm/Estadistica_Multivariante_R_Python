Estadistica Multivariante Avanzada
================

# Estadistica Multivariante Avanzada

Este repositorio contiene un cuaderno de curso sobre estadistica
multivariante avanzada en R y Python. El material principal esta en
`Cuaderno_Curso.Rmd` y combina explicaciones teoricas, ejemplos
reproducibles y visualizaciones para temas como espacio multivariante,
distribuciones multivariantes, inferencia, PCA, analisis factorial,
escalamiento multidimensional, clusterizacion, clasificacion y
regularizacion.

El proyecto esta pensado para trabajarse desde RStudio y para publicarse
en GitHub manteniendo el cuaderno como fuente principal. Los archivos
HTML renderizados se pueden regenerar localmente y no se versionan para
mantener liviano el repositorio.

## Estructura del repositorio

``` text
.
├── Cuaderno_Curso.Rmd
├── README.Rmd
├── README.md
├── requirements.txt
├── scripts/
│   ├── manifest.R
│   └── requirements.R
├── images/
├── examples/
│   └── section-4/
├── docs/
└── outputs/
```

- `Cuaderno_Curso.Rmd`: cuaderno principal del curso.
- `scripts/requirements.R`: regenera `requirements.txt` desde el entorno
  Python usado por `reticulate`.
- `scripts/manifest.R`: regenera `requirements.txt` y luego crea
  `manifest.json` para despliegue con `rsconnect`.
- `images/`: imagenes usadas directamente por el cuaderno principal.
- `examples/section-4/`: scripts y datos de ejemplo complementarios.
- `docs/`: documentacion de apoyo.
- `outputs/`: salidas HTML renderizadas localmente; esta carpeta esta
  ignorada por Git.

## Requisitos

El cuaderno usa paquetes de R para analisis, visualizacion, modelado y
despliegue. Tambien usa Python mediante `reticulate`.

En R, el cuaderno carga paquetes como `tidyverse`, `ggplot2`, `GGally`,
`plotly`, `psych`, `factoextra`, `mclust`, `vegan`, `caret`, `glmnet`,
`rsconnect` y otros paquetes estadisticos.

En Python, las dependencias principales quedan documentadas en
`requirements.txt`, incluyendo paquetes como `numpy`, `pandas`, `scipy`,
`scikit-learn`, `seaborn`, `matplotlib`, `plotly`, `statsmodels`,
`factor_analyzer`, `imbalanced-learn`, `networkx` y `pydataset`.

## Entorno Python

El cuaderno configura Python con `reticulate` usando el entorno
`py311_arm`:

``` r
reticulate::use_condaenv("py311_arm", required = TRUE)
```

Para mantener sincronizado el archivo de dependencias Python, ejecuta:

``` bash
Rscript scripts/requirements.R
```

Este script actualiza `requirements.txt` con los paquetes instalados en
el entorno Python configurado.

## Manifest para despliegue

Para crear o actualizar el manifest de `rsconnect`, ejecuta:

``` bash
Rscript scripts/manifest.R
```

Ese script primero regenera `requirements.txt` y luego crea
`manifest.json` usando `Cuaderno_Curso.Rmd` como documento principal. El
archivo `manifest.json` se versiona porque Posit Connect Cloud lo usa
para reconstruir el entorno de R desde GitHub.

## Renderizar el cuaderno

Para renderizar el cuaderno principal localmente:

``` bash
Rscript -e 'rmarkdown::render("Cuaderno_Curso.Rmd")'
```

Las salidas HTML generadas deben guardarse o moverse a `outputs/`,
carpeta que esta ignorada por Git para evitar subir archivos pesados.

## Notas para GitHub

- `README.Rmd` es la fuente editable del README.
- `README.md` es el archivo que GitHub muestra directamente.
- Las imagenes en `images/` se mantienen en su ruta actual porque
  `Cuaderno_Curso.Rmd` las referencia directamente.
- Los archivos de sesion de RStudio, caches, salidas renderizadas y
  metadatos locales de despliegue estan excluidos mediante `.gitignore`.
