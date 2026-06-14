if (!nzchar(Sys.getenv("RSTUDIO_PANDOC"))) {
  pandoc_candidates <- c(
    "/Applications/quarto/bin/tools/aarch64",
    "/Applications/quarto/bin/tools/x86_64",
    "/Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools/aarch64",
    "/Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools/x86_64"
  )
  pandoc_dir <- pandoc_candidates[file.exists(file.path(pandoc_candidates, "pandoc"))][1]
  if (!is.na(pandoc_dir)) {
    Sys.setenv(RSTUDIO_PANDOC = pandoc_dir)
  }
}

render_one <- function(input, ...) {
  if (!file.exists(input)) {
    stop("No se encontro el archivo: ", input, call. = FALSE)
  }

  rmarkdown::render(input, envir = new.env(parent = globalenv()), ...)
}

render_one("README.Rmd", output_format = "github_document", output_options = list(html_preview = FALSE))
render_one("Cuaderno_Curso.Rmd")
