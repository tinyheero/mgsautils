# mgsautils

An R package for working with the [Model-based gene set analysis (MGSA)](https://www.bioconductor.org/packages/release/bioc/html/mgsa.html) inputs and outputs.

You can install this package using devtools:

```{r}
devtools::install_github("tinyheero/mgsautils")
```

# Overview

To see the full list of exported functions:

```{r}
library("mgsautils")
ls("package:mgsautils")
```

A quick overview of some of the key functions:

* `convert_cpdb_pathway_to_mgsa_geneset`: Converts the CPDB pathway tab format into MGSA geneset format.
