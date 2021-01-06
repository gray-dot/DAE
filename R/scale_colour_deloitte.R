#' @title scale_colour_deloitte
#'
#' @description Colour scale constructor
#'
#' @param palette
#' @param discrete
#' @param reverse
#' @param gradient
#'
#' @return NULL
#'
#' @examples
#'
#' @export

scale_colour_deloitte <- function(palette = "2019", discrete = TRUE, reverse = FALSE, gradient = FALSE, ...) {
  pal <- deloitte_pal(palette = palette, reverse = reverse, gradient = gradient)

  if(discrete) {
    if(gradient){
      discrete_scale("colour", paste0("deloitte)", palette), palette = pal, ...)
    } else {
      scale_colour_manual(values = pal %>% unname())
    }
  } else {
    scale_colour_gradientn(colours = pal(256))
  }
}
