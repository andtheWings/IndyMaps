#' Make a leaflet basemap of Indianapolis, IN
#'
#' @return A leaflet htmlwidget
#' @export
#'
#' @examples
make_Indy_leaflet <- function() {
    leaflet::leaflet() %>%
        leaflet::addProviderTiles("CartoDB") %>%
        leaflet::setView(lng = -86.158, lat = 39.768, zoom =9) %>%
        leaflet.extras::addFullscreenControl()
}
