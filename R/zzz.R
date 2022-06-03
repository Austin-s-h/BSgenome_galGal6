###
###

.pkgname <- "BSgenome.Ggallus.ENSEMBL.galGal6"

.seqnames <- NULL

.circ_seqs <- NULL

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Gallus gallus",
        common_name="Chicken",
        provider="ENSEMBL",
        provider_version="galGal6",
        release_date="12/21/2020",
        release_name="Release 103",
        source_url="'http://ftp.ensembl.org/pub/release-103/fasta/gallus_gallus/dna/Gallus_gallus.GRCg6a.dna.toplevel.fa.gz'",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Ggallus"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

