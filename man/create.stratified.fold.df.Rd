% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/perf.meas.R
\name{create.stratified.fold.df}
\alias{create.stratified.fold.df}
\title{DataFrame for stratified cross validation}
\usage{
create.stratified.fold.df(labels, scores, folds = 5, seed = 23)
}
\arguments{
\item{labels}{vector of the true labels (0 negative, 1 positive).}

\item{scores}{a numeric vector of the values of the predicted labels.}

\item{folds}{number of folds of the cross validation (\code{def. folds=5}).}

\item{seed}{initialization seed for the random generator to create folds (\code{def. seed=23}).
If \code{seed=NULL}, the stratified folds are generated without seed initialization.}
}
\value{
A data frame with three columns:
\itemize{
 \item \code{scores}: contains the predicted scores;
   \item \code{labels}: contains the labels as \code{pos} or \code{neg};
 \item \code{folds}: contains the index of the fold in which the example falls.
   The index can range from 1 to the number of folds.
}
}
\description{
Create a data frame for stratified cross-validation.
}
\details{
Folds are \emph{stratified}, i.e. contain the same amount of positive and negative examples.
}
\examples{
data(labels);
data(scores);
df <- create.stratified.fold.df(L[,3], S[,3], folds=5, seed=23);
}
