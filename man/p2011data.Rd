% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datafiles.R
\docType{data}
\name{p2011data}
\alias{p2011data}
\title{Data frame containing daily air pollution data in England and Wales 2011}
\format{
A data frame with 52560 rows and 17 columns:
\describe{
  \item{index}{Site index}
  \item{lon}{Longitude}
  \item{lat}{Latitude}
  \item{easting}{Easting}
  \item{northing}{Northing}
  \item{type}{Site type}
  \item{year}{Year}
  \item{month}{Month}
  \item{day}{Day}
  \item{aqum_no2}{AQUM NO2}
  \item{aqum_ozone}{AQUM Ozone}
  \item{aqum_pm10}{AQUM PM10}
  \item{aqum_pm2p5}{AQUM PM2.5}
  \item{obs_no2}{Observed NO2}
  \item{obs_ozone}{Observed Ozone}
  \item{obs_pm10}{Observed PM10}
  \item{obs_pm2p5}{Observed PM2.5}
}
}
\source{
\insertCite{Sahubook;textual}{databmstdr}
\insertCite{MukhopadhyayandSahu;textual}{databmstdr}
}
\usage{
p2011data
}
\description{
Data frame containing daily air pollution data in England and Wales 2011
}
\examples{
\dontrun{
 summary(p2011data)
}
}
\references{
\insertAllCited{}
}
\keyword{datasets}
