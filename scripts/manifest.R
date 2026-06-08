library(rsconnect)

source("scripts/requirements.R")

rsconnect::writeManifest(
  appDir = ".",
  appFiles = c(
    "Cuaderno_Curso.Rmd",
    "images"
  ),
  appPrimaryDoc = "Cuaderno_Curso.Rmd",
  appMode = "rmd-static",
  python = python
)
