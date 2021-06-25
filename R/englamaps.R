#' Data frame providing the polygons for plotting the map of
#' local authorities in England
#' @source Sahu and Bohning (2021)
#'  @format A data frame with 258188 rows and 7 columns:
#' \describe{
#'   \item{id}{Internal: The id number of the polygons.}
#'   \item{long}{Gives the UTM-X coordinates}
#'   \item{lat}{Gives the UTM-Y coordinates}
#'   \item{order}{Internal variable: order of the polygons}
#'   \item{hole}{Internal variable: binary variable}
#'   \item{piece}{Internal variable}
#'   \item{group}{Internal variable: group variable for plotting}
#'   \item{Areacode}{Areacode of the local authorties}
#' }
# usethis::use_data(englamap, overwrite = TRUE)
#' @examples
#' \dontrun{
#'  head(englamap)
#' }
"englamap"

#' Data frame providing the polygons for plotting the map of
#' local authorities in England
#' @source Sahu and Bohning (2021)
#'  @format A data frame with 258188 rows and 7 columns:
#' \describe{
#'   \item{id}{Internal: The id number of the polygons.}
#'   \item{long}{Gives the UTM-X coordinates}
#'   \item{lat}{Gives the UTM-Y coordinates}
#'   \item{order}{Internal variable: order of the polygons}
#'   \item{hole}{Internal variable: binary variable}
#'   \item{piece}{Internal variable}
#'   \item{group}{Internal variable: group variable for plotting}
#'   \item{Region}{Name of the regions}
#'   \item{Regioncode}{Codes of the regions}
#' }
# usethis::use_data(engregmap, overwrite = TRUE)
#' @examples
#' \dontrun{
#'  head(engregmap)
#' }
"engregmap"

#' The color palette used to draw most of the maps
#' @source Sahu and Bohning (2021)
# usethis::use_data(colpalette, overwrite = TRUE)
#' @examples
#' \dontrun{
#'  colpalette
#' }
"colpalette"

#' Data frame providing the polygons for plotting the map of
#' local authorities in England
#' @source Sahu and Bohning (2021)
#'  @format A data frame with 313 rows and 8 columns:
#' \describe{
#'   \item{Areacode}{Codes of the local authorities}
#'   \item{id}{Internal: The id number of the polygons.}
#'    \item{Areaname}{Name of the local authority}
#'    \item{Regioncode}{Codes of the regions}
#'    \item{Rid}{Internal: The id number of the region.}
#'    \item{Regionname}{Name of the regions}
#'   \item{centreEasting}{Gives the UTM-X coordinate of the centroid of the Areacode}
#'   \item{centreNorthing}{Gives the UTM-Y coordinate of the centroid of the Areacode}
#' }
# usethis::use_data(englainfo, overwrite = TRUE)
#' @examples
#' \dontrun{
#'  head(englainfo)
#' }
"englainfo"

#' AURN data sites (123) in England
#' @format A data frame with 123 rows and 9 columns:
#' \describe{
#'   \item{id}{Internal: The id number of the sites.}
#'    \item{SiteName}{Name of the site}
#'    \item{UK.AIRID}{UK Air id Code}
#'    \item{EnvironmentType}{Environment type of the site}
#'    \item{Latitude}{Latitude}
#'    \item{Longitude}{Longitude}
#'    \item{Northing}{Gives the UTM-Y coordinate of the site}
#'   \item{Easting}{Gives the UTM-X coordinate of the site}
#'   \item{Altitudeinm}{Altitude in metre}
#' }
# usethis::use_data(aurnsites, overwrite = TRUE)
#' @examples
#' \dontrun{
#'  head(aurnsites)
#' }
"aurnsites"

#' Names of the 42 states and regions in the eastern USA used to draw the maps of the
#' eastern US.
#' @source Sahu (2021)
# usethis::use_data(eaststates, overwrite = TRUE)
#' @examples
#' \dontrun{
#'  eaststates
#'  library(ggplot2)
#'  useastmap <- map_data(database="state",regions=eaststates)
#'  head(useastmap)
#'  p <-  ggplot(data=useastmap, aes(x=long, y=lat, group = group)) +
#'  geom_polygon(colour='black',size=0.8, fill=NA) +
#'  theme(axis.text.x = element_blank(), axis.text.y = element_blank(), axis.ticks = element_blank()) +
#'  ggsn::north(data=useastmap, location="bottomright", symbol=12) +
#'  ggsn::scalebar(data =useastmap, dist =500, location ="bottomleft", transform=T, dist_unit = "km",
#'  st.dist = .05, st.size = 5, height = .06, st.bottom=T, model="WGS84")
#'  p
#' }
"eaststates"

#' Data frame containing the Kenya vaccination data
#' @source Sahu (2021)
#' @format A data frame with 47 rows and 9 columns:
#' \describe{#
#'   \item{id}{id number of the 47 counties in Kenya}
#'   \item{countyname}{Name of the county}
#'    \item{n}{Number of children sampled}
#'    \item{yvac}{Number of children vaccinated }
#'    \item{propprimary}{proportion of women aged 15-49 years
#'    who had completed primary education}
#'    \item{traveltime}{travel time to the nearest health facility, which are
#'     county averages of 5 by 5 kilometer grid level values}
#'    \item{nightlight}{intensity which are also county averages of the corresponding
#'    5 by 5 kilometer  grid level values.}
#'    \item{wted_n}{Weighted number of children sampled}
#'    \item{wted_yvac}{Weighted number of children vaccinated}
#' }
# usethis::use_data(kdat, overwrite = TRUE)
#' @examples
#' \dontrun{
#'  summary(kdat)
#'
#' }
"kdat"

#' Data frame containing daily air pollution data in England and Wales 2011
#' @source Sahu (2021)
#' @format  A data frame with 52560 rows and 17 columns:
#' \describe{
#'   \item{index}{Site index}
#'   \item{lon}{Longitude}
#'   \item{lat}{Latitude}
#'   \item{easting}{Easting}
#'   \item{northing}{Northing}
#'   \item{type}{Site type}
#'   \item{year}{Year}
#'   \item{month}{Month}
#'   \item{day}{Day}
#'   \item{aqum_no2}{AQUM NO2}
#'   \item{aqum_ozone}{AQUM Ozone}
#'   \item{aqum_pm10}{AQUM PM10}
#'   \item{aqum_pm2p5}{AQUM PM2.5}
#'   \item{obs_no2}{Observed NO2}
#'   \item{obs_ozone}{Observed Ozone}
#'   \item{obs_pm10}{Observed PM10}
#'   \item{obs_pm2p5}{Observed PM2.5}
#' }
# usethis::use_data(p2011data, overwrite = TRUE)
#' @examples
#' \dontrun{
#'  summary(p2011data)
#' }
"p2011data"


