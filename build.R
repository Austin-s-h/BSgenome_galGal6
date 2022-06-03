# Build the package
library(BSgenome)
forgeBSgenomeDataPkg("DESCRIPTION")
system("R CMD build BSgenome.Ggallus.ENSEMBL.galGal6")
system("R CMD check BSgenome.Ggallus.ENSEMBL.galGal6.tar.gz")