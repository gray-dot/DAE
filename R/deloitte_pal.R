#' @title deloitte_pal
#'
#' @description Deloitte palette selector
#'
#' @param discrete
#' @param reverse
#' @param gradient
#'
#' @return NULL
#'
#' @examples
#'
#' @export

deloitte_palettes <- list(
  "2019" = deloitte_cols("green19", "darkgreen19", "blue19", "darkblue19", "teal19",
                         "gray19", "bluegray19"),
  "2020" = deloitte_cols("green", "green3", "green4", "green6", "teal",
                         "blue", "green2", "green5", "green7", "blue1",
                         "blue2", "blue3", "blue4", "blue5", "blue6",
                         "blue7", "teal1", "teal2", "teal3", "teal4",
                         "teal5", "teal6", "teal7", "gray2", "gray4",
                         "gray6", "gray7", "gray9", "gray10", "gray11"),
  greens = deloitte_cols("green1", "green2", "green", "green3", "green4",
                         "green5", "green6", "green7"),
  blues = deloitte_cols("blue1", "blue2", "blue3", "blue4",
                        "blue5", "blue6", "blue7"),
  grays = deloitte_cols("gray2", "gray4", "gray6", "gray7", "gray9",
                        "gray10", "gray11")
)

deloitte_pal <- function(palette = "2019", reverse = FALSE, gradient = FALSE, ...) {
  pal <- deloitte_palettes[[palette]]

  if(reverse) pal <- rev(pal)

  if(gradient) pal <- colorRampPalette(pal, ...)

  pal
}
