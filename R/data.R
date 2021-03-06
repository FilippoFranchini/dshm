#' Observation data
#'
#' A dataset containing relevant information for dolphin sightings.
#'
#' @format A data frame with 16 rows and 10 variables:
#' \describe{
#'   \item{Region.Label}{ID for stratum where the segment of the sighting is located}
#'   \item{Area}{Stratum area in km2}
#'   \item{Transect.Label}{ID for transect where the segment of the sighting is located}
#'   \item{Sample.Label}{ID for segment where the sighting is located}
#'   \item{Latitude}{Segment centroid latitude}
#'   \item{Longitude}{Segment centroid longitude}
#'   \item{distance}{Sighting perpendicular distance from the transect line}
#'   \item{size}{Number of dolphins}
#'   \item{object}{Sighting ID}
#'   \item{detected}{Required for \code{\link[Distance]{ds}} function}
#' }
"obsdata"


#' Transects
#'
#' Transect lines covered by a boat during a dolphin survey.
#'
#' @format A SpatialLinesDataFrame with 15 features (i.e. lines). Associated data are not important.
"transects"


#' Convoluted tranect lines
#'
#' Additional data for convoluted transect lines.
#'
#' @format A SpatialLinesDataFrame with 11 features (i.e. lines).
"transects_error"


#' Strata
#'
#' Strata covered by a boat during a dolphin survey.
#'
#' @format A SpatialPolygonsDataFrame with 9 features (i.e. strata). Except for ID, associated data are not important.
#' #' \describe{
#'   \item{ID}{ID for stratum}
#' }
"strata"


#' Land
#'
#' Land for the area of a dolphin survey.
#'
#' @format A SpatialPolygonsDataFrame with 30 features (i.e. islands). Associated data are not important.
"land_crop"


#' Distance to coast
#'
#' Least cost distances from the coastline for the area of a dolphin survey.
#'
#' @format A RasterLayer with 50 m resolution. Distances are in meters.
"DC_crop"


#' Distance to river
#'
#' Least cost distances from main rivers for the area of a dolphin survey.
#'
#' @format A RasterLayer with 50 m resolution. Distances are in meters.
"DR_crop"


#' Depth
#'
#' Depth for the area of a dolphin survey.
#'
#' @format A RasterLayer with 50 m resolution. Depth values are negative and in meters.
"depth_crop"




