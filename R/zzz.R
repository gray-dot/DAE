.onAttach <- function(libname, pkgname) {

  #packageStartupMessage("Version 0.3.0")

}

.onLoad <- function(libname, pkgname){

  library(extrafont)
  extrafont::font_import(pattern = "verdana.ttf", prompt = FALSE)

}
