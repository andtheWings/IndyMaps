#' Make a leaflet basemap of Indianapolis, IN
#'
#'@param df A dataframe to be used in the map function
#'
#' @return A leaflet htmlwidget
#' @export
#'
#' @examples
make_Indy_leaflet <- function(df = NULL, zoom = 10) {
    leaflet::leaflet(df) %>%
        leaflet::addProviderTiles("CartoDB") %>%
        leaflet::setView(lng = -86.158, lat = 39.768, zoom = zoom) %>%
        leaflet.extras::addFullscreenControl()
}
