#' Convert the CPDB Pathway Tab Format into MGSA Format
#'
#' This function converts the ConsensusPathDB \url{http://consensuspathdb.org/} 
#' biological pathways (.tab) into a mgsa geneset object
#'
#' @param infile Pathway to the CPDB pathway file
#' @param pathway.id.col Column name of the pathway identifer in the infile
#' @param gene.id.col Column name of the gene identifier in the infile
convert_cpdb_pathway_to_mgsa_geneset <- function(infile,
                                                 pathway.id.col = "external_id",
                                                 gene.id.col = "hgnc_symbol_ids") {

  CPDB.df <- readr::read_tsv(infile)
  CPDB.list <- list()

  for (i in 1:nrow(CPDB.df)) {
    if (i %% 100 == 0) {
      cat(".")
    }
    pathway.id <- CPDB.df[i, pathway.id.col]
    pathway.genes <- unlist(strsplit(CPDB.df[i, gene.id.col], ","))
    CPDB.list[[pathway.id]] <- pathway.genes
  }
  CPDB.list
}
