\name{addArrowMark}
\alias{addArrowMark}
\title{
Add arrow mark to the figure at a given position
}
\description{
A function to add arrow mark for emphasizing peaks 
}
\usage{
addArrowMark(pos=grid.locator(), label=NULL, angle=15, 
             length=unit(.25, "inches"), col="red", cex=1, quadrant=4,
             type="closed", vp=NULL)
}

\arguments{
  \item{pos}{A unit object representing the location of arrow mark to be placed 
  at current viewport. Default is the value of grid.locator, which will get the 
  location of the mouse click.}
  \item{label}{A character or expression vector.}
  \item{angle}{A parameter passed into grid::arrow function. The angle of arrow 
  head in degrees (smaller numbers produce narrower, pointier arrows). Essentially 
  describes the width of the arrow head.}
  \item{length}{A parameter passed into grid::arrow function. Aunit specifying 
  the length of the arrow head.}
  \item{col}{color of the arrow}
  \item{cex}{Multiplier applied to fontsize}
  \item{quadrant}{the direction of arrow, 1: to bottomleft, 2: to bottomright,
  3: to topright, 4: to topleft}
  \item{type}{A parameter passed into grid::arrow function. One of "open" or "closed"
  indicating whether the arrow head should be a closed triangle.}
  \item{vp}{A Grid viewport object. It must be output of \code{\link{viewTracks}}}
}
\value{
invisible x, y position value.
}
\author{
Jianhong Ou
}
\seealso{
See Also as \code{\link{addGuideLine}}, \code{\link[grid:arrow]{arrow}}
}
\examples{
    grid.newpage()
    addArrowMark(list(x=unit(.5, "npc"), 
                      y=unit(.5, "npc")), 
                 label="label1",
                 col="blue")
    ## how to get the position by mouse click
    if(interactive()){
        pos <- addArrowMark(label="byClick")
        addArrowMark(pos, label="samePosAsAbove")
    }
}
\keyword{ ~misc }
