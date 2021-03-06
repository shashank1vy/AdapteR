% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FLAggClustering.R
\docType{class}
\name{FLAggClust-class}
\alias{FLAggClust-class}
\title{An S4 class to represent FLAggClustering}
\arguments{
\item{object}{returns a vector giving a permutation of the original observations to allow for plotting, 
in the sense that the branches of a clustering tree will not cross.}

\item{object}{returns a vector with the distances between merging clusters at the successive stages.}

\item{object}{the agglomerative coefficient, measuring the clustering structure of the dataset.}

\item{object}{returns an (n-1) by 2 matrix, where n is the number of observations. Row i of merge describes 
the merging of clusters at step i of the clustering.}

\item{object}{prints the results of agglomerative clustering on FLTable objects.}

\item{object}{plots the results of agglomerative clustering on FLtable objects.
Creates plots for visualizing an agnes object.}
}
\description{
An S4 class to represent FLAggClustering
}
\section{Slots}{

\describe{
\item{\code{AnalysisID}}{A character output used to retrieve the results of analysis}

\item{\code{wideToDeepAnalysisID}}{A character string denoting the intermediate identifier
during widetable to deeptable conversion.}

\item{\code{diss}}{logical TRUE if dissimilarity matrix is supplied to \code{fanny}}

\item{\code{table}}{FLTable object given as input on which analysis is performed}

\item{\code{results}}{A list of all fetched components}

\item{\code{deeptable}}{A character vector containing a deeptable(either conversion from a 
widetable or input deeptable)}

\item{\code{temptables}}{A list of temporary table names used across the results}

\item{\code{mapTable}}{A character string name for the mapping table in-database if input is wide-table.}

\item{\code{whereconditions}}{takes the where_clause as a string}

\item{\code{maxit}}{maximal number of iterations for the FANNY algorithm.}
}}

