.onAttach <- function(libname, pkgname) {
  # to show a startup message
  # packageStartupMessage("This is my package, enjoy it!")
}

.onLoad <- function(libname, pkgname){

  library(extrafont)
  extrafont::font_import(pattern = "verdana.ttf", prompt = FALSE)

}
