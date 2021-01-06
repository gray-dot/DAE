#' @title scale_fill_deloitte
#'
#' @description Fill scale constructor
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

scale_fill_deloitte <- function(palette = "2019", discrete = TRUE, reverse = FALSE, gradient = FALSE, ...) {
  pal <- deloitte_pal(palette = palette, reverse = reverse, gradient = gradient)

  if(discrete) {
    if(gradient){
      discrete_scale("fill", paste0("deloitte)", palette), palette = pal, ...)
    } else {
      scale_fill_manual(values = pal %>% unname())
    }
  } else {
    scale_fill_gradientn(colours = pal(256))
  }
}
