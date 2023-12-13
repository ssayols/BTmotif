#' shiny_BTmotif
#' Launch an interactive web interface.
#'
#' @param ... other params sent to shiny::runApp().
#' @return Nothing
#' @import shiny
#' @import shinydashboard
#' @import DT
#' @export
shiny_BTmotif <- function(...) {
  shiny::runApp(appDir=system.file("shiny_BTmotif", package="BTmotif"), ...)
}
