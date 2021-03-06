% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graph.utility.R
\name{constraints.matrix}
\alias{constraints.matrix}
\title{Constraints matrix}
\usage{
constraints.matrix(g)
}
\arguments{
\item{g}{a graph of class \code{graphNELL}. It represents the hierarchy of the classes.}
}
\value{
A constraints matrix w.r.t the graph \code{g}.
}
\description{
Return a matrix with two columns and as many rows as there are edges. The entries of the first columns are the index of the node the edge
comes from (i.e. children nodes), the entries of the second columns indicate the index of node the edge is to (i.e. parents nodes).
Referring to a dag this matrix defines a partial order.
}
\examples{
data(graph);
m <- constraints.matrix(g);
}
