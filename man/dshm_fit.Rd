% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dshm_fit.R
\name{dshm_fit}
\alias{dshm_fit}
\title{Fitting spatial Hurdle models}
\usage{
dshm_fit(det.fn, effects.pa = NULL, effects.ab = NULL,
  knots.pa = NULL, knots.ab = NULL, method = "GCV.Cp", lim = 0.1,
  obsdata, segdata, grid, SelectionTable = TRUE,
  showSelectedModels = FALSE, group = FALSE, strip.width = NULL)
}
\arguments{
\item{det.fn}{Detection function fitted by \code{\link[Distance]{ds}}.}

\item{effects.pa}{List of characters defining the binomial gam models to be fitted. For model structure see \code{\link[mgcv]{gam}}.}

\item{effects.ab}{List of characters defining the zero-truncated Poisson gam models to be fitted. For model structure see \code{\link[mgcv]{gam}}.}

\item{knots.pa}{List of knot gam knot positions for each smooth term of the fitted binomial models.}

\item{knots.ab}{List of knot gam knot positions for each smooth term of the fitted zero-truncated Poisson models.}

\item{method}{GAM fitting method. Note that \code{"REML"} is not available since it is not campatible with \code{\link[countreg]{ztpoisson}}. Default is \code{"GCV.Cp"}.}

\item{lim}{AIC weight (AICw) threshold for model averaging. Models with AICw < lim are not averaged. Default is 0.1.}

\item{obsdata}{Dataframe object with the following structure:
\itemize{
  \item Region.Label: ID for stratum where the animal was observed.
  \item Transect.Label: ID for transect where the animal was observed.
  \item Sample.Label: ID for segment where the animal was observed.
  \item distance: sighting perpendicular distance from the transect line.
  \item size: sighting size, i.e. number of animals.
  \item object: sighting ID.
}}

\item{segdata}{Dataframe object with the following strucuture:
\itemize{
  \item Region.Label: ID for stratum where the transects and segments are located.
  \item Transect.Label: ID for split transect.
  \item Sample.Label: ID for segment.
  \item length: segment length.
  \item area: segment area.
  \item XYZ covariates: different habitat covariates such as depth, distance to coast, etc. specific to each segment.
}
You do not have to create segdata manually. You can use the functions in \code{\link{dshm}} to automatically split transects into segments. For more information you can download the \href{http://github.com/FilippoFranchini/dshm/blob/master/vignettes}{split_transects.pdf} tutorial.}

\item{grid}{Grid used for model prediction. Column names for habitat covriates should correspond to those in 'segdata'. You can create a grid using the function \code{\link{dshm_make_grid}}. For more information about creating and preparing a grid for spatial analysis you can download the \href{http://github.com/FilippoFranchini/dshm/blob/master/vignettes}{build_grid.pdf} tutorial.}

\item{SelectionTable}{If \code{TRUE} model selection table is reported for each submodel. Default is \code{TRUE}.}

\item{showSelectedModels}{If \code{TRUE} best fitted submodel variants are reported. Default is \code{FALSE}.}

\item{group}{If \code{TRUE} group abundance is estimated (i.e. sighting size = 1). Default is \code{FALSE}.}

\item{strip.width}{Strip width to calculate segment area if there is no "area" column in segdata.}
}
\value{
A list of 6 objects:
\itemize{
  \item models: list of fitted \code{pa} and \code{ab} submodel variants.
  \item info: list of information for the fitted submodel variants.\itemize{
    \item ID: ID of selected models.
    \item k: number of knots for all model variants.
    \item weight: AIC weights for all model variants.
    \item edfs: effective degree of freedom for all model variants.
    \item k.loc: knot locations for all model variants.
    \item exdev: explained deviances for all model variants.
    \item method: fitting methods for all model variants.
    \item lim: selected AIC weight threshold for model averaging.
  }
  \item grid_data: prediction grids for presence-absence submodel (\code{pa}), abundance-given-presence submodel (\code{ab}) and Hurdle model (\code{H}).
  \item fitted: fitted values for presence-absence submodel (\code{pa}) and abundance-given-presence submodel (\code{ab.full}).
  \item obs: original observations.
  \item residuals: Hurdle model residuals.
}
}
\description{
\code{dshm_fit} fits Hurdle models, performs model averaging, calculates Hurdle model predictions on a user-defined grid.
}
\details{
Hurdle models are two stage models. They consist in a presence-absence (\code{pa}) submodel and an abundance-given-presence (\code{ab}) submodel. Each submodel can be specified in many ways that we call submodel variants. Final Hurdle model predictions are obtained by multiplying \code{pa} with \code{ab} predictions. For more information about fitting Hurdle models you can download the \href{http://github.com/FilippoFranchini/dshm/blob/master/vignettes}{fitting_Hurldle.pdf} tutorial.
}
\author{
Filippo Franchini \email{filippo.franchini@outlook.com}
}
