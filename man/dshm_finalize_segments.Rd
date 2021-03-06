% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dshm_finalize_segments.R
\name{dshm_finalize_segments}
\alias{dshm_finalize_segments}
\title{Preparing segments for spatial analysis}
\usage{
dshm_finalize_segments(segment.data, land.data = NULL, covariates, fun,
  parallel = FALSE, ncores = NULL)
}
\arguments{
\item{segment.data}{Segments as SpatialPolygonsDataFrame. You can use the function \code{dshm_split_transects} to create segments from transect lines.}

\item{land.data}{A SptialPolygonsDataFrame such as land (for marine species) or other obstacles not relevant to predictions.}

\item{covariates}{List of covariate raters.}

\item{fun}{Function for covariate statistcs within each segment (i.e. mean or median).}

\item{parallel}{If \code{TRUE} the function is run on multiple cores. Default is \code{FALSE}.}

\item{ncores}{Number of cores if parallel is \code{TRUE}.}
}
\value{
Segments as SptialPolygonsDataFrame with following data attached:
\itemize{
  \item Transect.Label: ID for split transect.
  \item Sample.Label: ID for segment.
  \item length: segment length.
  \item area: segment area.
  \item XYZ covariates: different habitat covariates such as depth, distance to coast, etc. specific to each segment.
}
}
\description{
\code{dshm_finalize_segments} calculates covariate statisitcs within each segment. It also corrects segments for land or other obstacles not relevant to the analysis.
}
\details{
For more information about splitting transects into segments as well as checking and correcting segments you can download the \href{http://github.com/FilippoFranchini/dshm/blob/master/vignettes}{split_transects.pdf} tutorial.
}
\author{
Filippo Franchini \email{filippo.franchini@outlook.com}
}
