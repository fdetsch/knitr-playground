#'---
#'title: R and Python in a spin file.
#'author: fdetsch
#'---
#'
#' Available online [here](https://stackoverflow.com/questions/58839450/r-knitr-use-spin-with-r-and-python-code/58880761#).
#' 
#' This is an example of one way to write one R script, containing both R and
#' Python, and can be spun to .Rmd via `knitr::spin`.
#'
#+ label = "setup"
library(nycflights13)
library(ggplot2)
library(reticulate)
# use_condaenv()

#'
#' Create the file data/flights.csv to
#'
#+ label = "create_flights_csv"
write.csv(flights, file = "data/flights.csv")

#'
#' The file flights.py will read in the data from the flights.csv file. It can
#' be evaluated in this script via `source_python()`. This sould add a data.frame
#' called `py_flights` to the workspace.
#' 
#+ label = "source_python"
source_python(file = "src/flights.py")

#'
#' And now, plot the results.
#'
#+ label = "plot"
ggplot(py_flights) + aes(carrier, arr_delay) + geom_point() + geom_jitter()


# /* spin and knit this file to html
knitr::spin(hair = "R/spin-me.R", knit = FALSE)
rmarkdown::render("R/spin-me.Rmd", knit_root_dir = getwd())
# */