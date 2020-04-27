#' ---
#' title: "Test title"
#' author: "`r Sys.getenv('USERNAME')"
#' output: md_document
#' ---

#' (issue first described [here](https://github.com/rstudio/rmarkdown/issues/1740))
#+ pandoc_version, echo = FALSE
jnk = system(
  "pandoc --version"
  , intern = TRUE
)
jnk