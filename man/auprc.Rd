% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/perf.meas.R
\name{auprc}
\alias{auprc}
\alias{auprc.single.class}
\alias{auprc.single.over.classes}
\title{AUPRC measures}
\usage{
auprc.single.class(labels, scores, folds = NULL, seed = NULL)

auprc.single.over.classes(target, predicted, folds = NULL, seed = NULL)
}
\arguments{
\item{labels}{vector of the true labels (0 negative, 1 positive examples).}

\item{scores}{a numeric vector of the values of the predicted labels (scores).}

\item{folds}{number of folds on which computing the AUPRC. If \code{folds=NULL} (\code{def.}), the AUPRC is computed one-shot,
otherwise the AUPRC is computed averaged across folds.}

\item{seed}{initialization seed for the random generator to create folds. Set \code{seed} only if \code{folds}\eqn{\neq}\code{NULL}.
If \code{seed=NULL} and \code{folds}\eqn{\neq}\code{NULL}, the AUPRC averaged across folds is computed without seed initialization.}

\item{target}{matrix with the target multilabel: rows correspond to examples and columns to classes.
\eqn{target[i,j]=1} if example \eqn{i} belongs to class \eqn{j}, \eqn{target[i,j]=0} otherwise.}

\item{predicted}{a numeric matrix with predicted values (scores): rows correspond to examples and columns to classes.}
}
\value{
\code{auprc.single.class} returns a numeric value corresponding to the AUPRC for the considered class;
\code{auprc.single.over.classes} returns a list with two elements:
\enumerate{
 \item average: the average AUPRC across classes;
 \item per.class: a named vector with AUPRC for each class. Names correspond to classes.
}
}
\description{
Compute the Area under the Precision Recall Curve (AUPRC) through \pkg{precrec} package.
}
\details{
The AUPRC (for a single class or for a set of classes) is computed either one-shot or averaged across stratified folds.

\code{auprc.single.class} computes the AUPRC just for a given class.

\code{auprc.single.over.classes} computes the AUPRC for a set of classes, returning also the averaged values across the classes.

For all those classes having zero annotations, the AUPRC is set to 0. These classes are discarded in the computing of the AUPRC
averaged across classes, both when the AUPRC is computed one-shot or averaged across stratified folds.

Names of rows and columns of \code{labels} and \code{predicted} matrix must be provided in the same order, otherwise a stop message is returned.
}
\examples{
data(labels);
data(scores);
data(graph);
root <- root.node(g);
L <- L[,-which(colnames(L)==root)];
S <- S[,-which(colnames(S)==root)];
prc.single.class <- auprc.single.class(L[,3], S[,3], folds=5, seed=23);
prc.over.classes <- auprc.single.over.classes(L, S, folds=5, seed=23);
}
