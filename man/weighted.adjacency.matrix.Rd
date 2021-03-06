% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graph.utility.R
\name{weighted.adjacency.matrix}
\alias{weighted.adjacency.matrix}
\title{Weighted adjacency matrix}
\usage{
weighted.adjacency.matrix(file = "edges.txt")
}
\arguments{
\item{file}{name of the plain text file to be read (\code{def. edges}). The format of the file is a sequence of rows.
Each row corresponds to an edge represented through a pair of vertexes (blank separated) and the weight of the edges.
For instance: \code{nodeX nodeY score}. The file extension can be plain (".txt") or compressed (".gz").}
}
\value{
A named symmetric weighted adjacency matrix of the graph.
}
\description{
Build a symmetric weighted adjacency matrix (wadj matrix) of a graph.
}
\examples{
edges <- system.file("extdata/edges.txt.gz", package="HEMDAG");
W <- weighted.adjacency.matrix(file=edges);
}
