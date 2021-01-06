#' @title deloitte_cols
#'
#' @description Deloitte colour palette
#'
#' @param
#'
#' @return NULL
#'
#' @examples
#'
#' @export

# Deloitte colours
deloitte_colours <- c(
  # 2020 Palette (Primary)
  green       = "#86BC25",
  green3      = "#43B02A",
  green4      = "#26890D",
  green6      = "#046A38",
  teal        = "#0D8390",
  blue        = "#007CB0",
  # 2020 Palette (Secondary)
  green1     = "#E3E48D",
  green2     = "#C4D600",
  green5     = "#009A44",
  green7     = "#2C5234",
  blue1      = "#A0DCFF",
  blue2      = "#62B5E5",
  blue3      = "#00A3E0",
  blue4      = "#0076A8",
  blue5      = "#005587",
  blue6      = "#012169",
  blue7      = "#041E42",
  teal1      = "#DDEFE8",
  teal2      = "#9DD4CF",
  teal3      = "#6FC2B4",
  teal4      = "#00ABAB",
  teal5      = "#0097A9",
  teal6      = "#007680",
  teal7      = "#004F59",
  gray2      = "#D0D0CE",
  gray4      = "#BBBCBC",
  gray6      = "#A7A8AA",
  gray7      = "#97999B",
  gray9      = "#75787B",
  gray10     = "#63666A",
  gray11     = "#53565A",
  # Bright colours
  lightgreen = "#0df200",
  lightteal  = "#3efac5",
  lightblue  = "#33f0ff",
  # Functional colours
  red        = "#DA291C",
  orange     = "#ED8B00",
  yellow     = "#FFCD00",
  # 2019 Palette (Primary)
  green19      = "#86BC25",
  darkgreen19  = "#046A38",
  blue19       = "#62B5E5",
  darkblue19   = "#012169",
  teal19       = "#0097A9",
  gray19       = "#75787B",
  lightgray19  = "#E7E6E6",
  bluegray19   = "#44546A",
  # Standard colours
  black        = "#000000",
  white        = "#FFFFFF"
)


# extrafont::font_import(pattern = "verdana.ttf", prompt = FALSE)

DAEChart <- ggplot2::theme_minimal() +
  ggplot2::theme(panel.grid.major.x = ggplot2::element_blank(),
        panel.grid.minor.x = ggplot2::element_blank(),
        panel.grid.major.y = ggplot2::element_line(colour = "#E7E6E6"),
        panel.grid.minor.y = ggplot2::element_blank(),
        legend.title = ggplot2::element_blank(),
        legend.position = "bottom",
        text = ggplot2::element_text(family = "Verdana", size = 11))


deloitte_cols <- function(...) {
cols <- c(...)

if(is.null(cols))
  return(deloitte_colours)

deloitte_colours[cols]
}
