\name{BSgenome.Ggallus.ENSEMBL.galGal6}
\docType{package}

\alias{BSgenome.Ggallus.ENSEMBL.galGal6-package}
\alias{BSgenome.Ggallus.ENSEMBL.galGal6}
\alias{Ggallus}

\title{Full genome sequences for Gallus gallus (ENSEMBL version galGal6 release 103)}

\description{
  A custom-forged BSgenome for galGal6, used in 'chromVAR'.
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
-- information not available --
  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{Austin Hovland Cornell University}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSgenome.Ggallus.ENSEMBL.galGal6
genome <- BSgenome.Ggallus.ENSEMBL.galGal6
head(seqlengths(genome))


## ---------------------------------------------------------------------
## Genome-wide motif searching
## ---------------------------------------------------------------------
## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}
