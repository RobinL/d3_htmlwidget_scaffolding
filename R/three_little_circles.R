#' @export
threelittlecircles <- function(data = list(), width = NULL, height = NULL, elementId = NULL) {
  items <- data
  
  # forward options using x
  x = list(
    items = items
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'threelittlecircles',
    x,
    width = width,
    height = height,
    package = 'threelittlecircles',
    elementId = elementId
  )
}

#' Shiny bindings for timevis
#'
#' Output and render functions for using timevis within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended. \code{height} will probably not
#'   have an effect; instead, use the \code{height} parameter in
#'   \code{\link[timevis]{timevis}}.
#' @param expr An expression that generates a timevis
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name threelittlecircles-shiny
#' @export
TLCOutput <- function(outputId, width = '100%', height = 'auto') {
  htmlwidgets::shinyWidgetOutput(outputId, 'threelittlecircles', width, height, package = 'threelittlecircles')
}

#' @rdname threelittlecircles-shiny
#' @export
renderTLC <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, TLCOutput, env, quoted = TRUE)
}

