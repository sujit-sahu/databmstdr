#' @import ggplot2
#' @import grid
#' @import maps
#' @importFrom stats na.omit
#' @importFrom Rdpack reprompt
NULL
utils::globalVariables(c("x"))
NULL
#' Data frame providing the polygons for plotting the map of
#' local authorities in England
#' @source
#' \insertCite{SahuBohning2021;textual}{databmstdr}
#' \insertCite{Sahubook;textual}{databmstdr}
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
#' @references
#' \insertAllCited{}
## #' \insertRef{Sahubook}{databmstdr}
## #' \insertRef{SahuBohning2021}{databmstdr}
# usethis::use_data(englamap, overwrite = TRUE)
#' @examples
#' \dontrun{
#'  head(englamap)
#' }
"englamap"

#' Data frame providing the polygons for plotting a map of the
#' administrative regions in England
#' @source
#' \insertCite{Sahubook;textual}{databmstdr}
#'
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
#' @references
#' \insertAllCited{}
# usethis::use_data(engregmap, overwrite = TRUE)
#' @examples
#' \dontrun{
#'  head(engregmap)
#' }
"engregmap"

#' The color palette used to draw maps in the book
#' \insertCite{Sahubook;textual}{databmstdr}
# usethis::use_data(colpalette, overwrite = TRUE)
#' @examples
#' \dontrun{
#'  colpalette
#' }
#' @references
#' \insertAllCited{}
"colpalette"

#' Data frame providing information regarding the 313 local authorities
#' in England.
#' @source
#' \insertCite{Sahubook;textual}{databmstdr}
#'
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
#' @references
#' \insertAllCited{}
#' @examples
#' \dontrun{
#'  head(englainfo)
#' }
"englainfo"

#' Information regarding 123 AURN data sites in England
#' @source
#' \insertCite{Sahubook;textual}{databmstdr}
#'
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
#' @references
#' \insertAllCited{}
"aurnsites"

#' Names of the 42 states and regions in the eastern USA used to draw the maps of the
#' eastern US.
#' @source
#' \insertCite{Sahubook;textual}{databmstdr}
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
#' @references
#' \insertAllCited{}
"eaststates"

#' Data frame containing the Kenya vaccination data
#' @source
#' \insertCite{Sahubook;textual}{databmstdr}
#' \insertCite{Utazi2021;textual}{databmstdr}
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
#' @references
#' \insertAllCited{}
"kdat"

#' Data frame containing daily air pollution data in England and Wales 2011
#' @source
#' \insertCite{Sahubook;textual}{databmstdr}
#' \insertCite{MukhopadhyayandSahu;textual}{databmstdr}
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
#' @references
#' \insertAllCited{}
"p2011data"

#' Daily PM10 concentration levels and covariate values from 24 sites in the
#' Piemonte region of Italy for 182 days during October 2005 to March 2006.
#' @docType data
#' @usage data(piemonte)
#' @source It is the same as the Piemonte Data set used by
#' \insertCite{blangiardoandcameletti;textual}{databmstdr}
#' with two added columns providing the UTM X- and Y- coordinates.
#'  Each data row is  for a particular site and day as detailed below.
#'
#'  @format A data frame with 4368 rows and 17 columns:
#' \describe{
#'   \item{s.index}{site index (1 to 28)}
#'   \item{utmx}{UTM X-coordinate of the site}
#'   \item{utmy}{UTM Y-coordinate of the site}
#'   \item{time}{Day number for the data row, It is a number between 1 to 182.}
#'   \item{date}{Date of the observation.}
#'   \item{Year}{Year of the observation.}
#'   \item{Month}{Month taking values 7 for July and 8 for August}
#'   \item{Day}{Day of the month, taking values 1 to 31}
#'   \item{ypm10}{PM10 concentration value observed on the day}
#'   \item{xaltitude}{Scaled value of altitude}
#'   \item{xws}{Scaled value of windspeed}
#'   \item{xtemp}{Scaled value of temperature}
#'   \item{xhmix}{Scaled value of mixing layer}
#'   \item{xprec}{Scaled value of precipitation}
#'  \item{xemi}{Scaled value of emission}
#'   \item{xutmx}{Scaled value of UTM-X}
#'   \item{xutmy}{Scaled value of UTM-Y}
#' }
# usethis::use_data(piemonte, overwrite = TRUE)
#' @examples
#' \dontrun{
#' piemonte
#' summary(piemonte[, 9:17])
#' }
#' @references
#' \insertAllCited{}
"piemonte"



