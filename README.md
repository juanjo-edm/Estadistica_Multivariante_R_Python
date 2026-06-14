Estadistica Multivariante Avanzada en R
================

Este portafolio contiene un cuaderno de curso sobre estadistica
multivariante avanzada implementado unicamente en R. El material
principal esta en `Cuaderno_Curso.Rmd` e integra explicaciones teoricas,
formulas, ejemplos reproducibles y visualizaciones sobre espacio
multivariante, correlaciones, distribuciones multivariantes, inferencia,
PCA, analisis factorial, escalamiento multidimensional, clusterizacion,
clasificacion, regresion y regularizacion.

La seccion de regresion enfatiza la lectura tecnica de `summary(lm)`,
errores estandar, p-valores, grados de libertad, intervalos, diagnostico
de residuales, multicolinealidad, validacion cruzada y comparacion entre
inferencia y prediccion.

El proyecto esta pensado para trabajarse desde RStudio o desde una
sesion estandar de R. Los archivos renderizados se pueden regenerar
localmente y no forman parte de la fuente limpia del portafolio.

## Estructura del portafolio

``` text
.
├── Cuaderno_Curso.Rmd
├── README.Rmd
├── README.md
├── Curso avanzado de estadistica multivariante.Rproj
├── data/
│   └── companies79.csv
├── docs/
│   └── libro-multivariante.pdf
├── images/
└── scripts/
    ├── render.R
    └── seccion_4/
        ├── 01_usa_states.R
        └── 02_iris_dataset.R
```

- `Cuaderno_Curso.Rmd`: cuaderno principal del curso.
- `README.Rmd`: fuente editable de este README.
- `README.md`: version renderizada para GitHub.
- `data/`: datos complementarios usados por scripts de ejemplo.
- `docs/`: documentacion de apoyo.
- `images/`: imagenes referenciadas por el cuaderno principal.
- `scripts/render.R`: renderiza el README y el cuaderno principal desde
  R.
- `scripts/seccion_4/`: scripts R complementarios de la seccion 4.

## Requisitos

El cuaderno usa paquetes de R para analisis, visualizacion, modelado y
reportes. Entre los paquetes principales estan `tidyverse`, `ggplot2`,
`GGally`, `plotly`, `MASS`, `mvtnorm`, `mclust`, `copula`, `Hotelling`,
`ellipse`, `psych`, `GPArotation`, `corrplot`, `vegan`, `cluster`,
`factoextra`, `caret`, `class`, `e1071`, `glmnet`, `ggpubr`, `broom`,
`car`, `leaps`, `ddalpha`, `scatterplot3d`, `patchwork`, `aplpack`,
`janitor`, `scales`, `ICSNP` y `reshape2`.

Instala los paquetes faltantes desde R antes de renderizar:

``` r
install.packages(c(
  "tidyverse", "GGally", "plotly", "mvtnorm", "mclust", "copula",
  "Hotelling", "ellipse", "psych", "GPArotation", "corrplot",
  "vegan", "cluster", "factoextra", "caret", "e1071", "glmnet",
  "ggpubr", "broom", "car", "leaps", "ddalpha", "scatterplot3d",
  "patchwork", "aplpack", "janitor", "ICSNP", "reshape2"
))
```

## Renderizar

Para regenerar el README y el cuaderno principal:

``` bash
Rscript scripts/render.R
```

Tambien puedes renderizar solo el cuaderno:

``` bash
Rscript -e 'rmarkdown::render("Cuaderno_Curso.Rmd")'
```

## Notas

- El portafolio fuente no requiere dependencias externas a R.
- Los datos, imagenes y PDF se conservan como material de soporte.
- Los archivos HTML renderizados, metadatos locales y salidas de
  despliegue se consideran artefactos regenerables.
