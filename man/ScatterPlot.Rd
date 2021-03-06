\name{ScatterPlot}
\alias{FittedLinePlot}
\alias{ScatterPlot}
\alias{plot.scatterplot}
\alias{plot.fittedlineplot}
\alias{print.scatterplot}
\alias{print.fittedlineplot}
\title{Create a standard scatter plot with a few extra elements added to the output object}
\description{This function is a wrapper to the standard \code{plott()} function in the \pkg{graphics} package. It is tailored to generating a scatter plot, and adds detail to the stored object so that a better text description can be formulated using the \code{VI()} method in the \pkg{BrailleR} package.}
\usage{
ScatterPlot(x, y, ...)

FittedLinePlot(x, y, line.col=2, ...)

}
\arguments{
  \item{x,y}{numeric variables.}
\item{line.col}{colour to be used for the fitted line; col is used to modify the colour of the points.}
  \item{\dots}{additional arguments passed on to the plotting function.}
}
\details{
These wrapper functions will draw the graphics plots for a set of points. The only difference is that the fitted line is added for the FittedLinePlot()}
\value{
An object of class scatterplot of fittedlineplot, with the addition of any calls to the main title or axis labels being explicitly stored even if a zero length character string.}
\references{Godfrey, A.J.R. (2013) \sQuote{Statistical Software from a Blind Person's Perspective: R is the Best, but we can make it better}, The R Journal 5(1), pp73-79.}
\author{A. Jonathan R. Godfrey}

\examples{
attach(airquality)
op = par(mfcol=c(3,2))
plot(Wind, Ozone, pch=4)
test1 = ScatterPlot(Wind, Ozone, pch=4)
test1 #does the plot method work?
plot(Wind, Ozone)
abline(coef(lm(Ozone~Wind)), col=4)
test2 = FittedLinePlot(Wind, Ozone, line.col=4)
test2 #does the plot method work?
par(op)
detach(airquality)
rm(test1); rm(test2); rm(op)
}

