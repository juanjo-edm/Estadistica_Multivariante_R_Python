#install.packages("rsconnect")

library(rsconnect)

rsconnect::writeManifest(
  appDir = ".",
  appPrimaryDoc = "Cuaderno_Curso.Rmd",
  appMode = "rmd-static"
)


