% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graph.utility.R
\name{build.scores.matrix}
\alias{build.scores.matrix}
\alias{build.scores.matrix.from.list}
\alias{build.scores.matrix.from.tupla}
\title{Build scores matrix}
\usage{
build.scores.matrix.from.list(file = "scores.list.txt", split = "[(\\t,|)]")

build.scores.matrix.from.tupla(file = "scores.tupla.txt")
}
\arguments{
\item{file}{name of the text file to be read. The matrix of the input file can be either a list (e.g in the form \code{example nodeX|score}),
or a tupla (i.e. in the form \code{example nodeX score}).The file extension can be plain (".txt") or compressed (".gz").}

\item{split}{character vector containing a regular expression use for splitting.}
}
\value{
A named scores matrix.
}
\description{
Build a scores matrix from file
}
\examples{
file.list  <- system.file("extdata/scores.list.txt.gz", package="HEMDAG");
file.tupla <- system.file("extdata/scores.tupla.txt.gz", package="HEMDAG");
S <- build.scores.matrix.from.list(file.list, split="[(\t,|)]");
S <- build.scores.matrix.from.tupla(file.tupla);
}
