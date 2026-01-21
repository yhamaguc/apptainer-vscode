#! /bin/bash

# NOTE: Build the image and run this on the guest (binding host $HOME)

# NOTE: Append user local directory to `libPaths` to avoid NOT writable error when installing package
if [ -e ${HOME}/.Rprofile ]
then
  touch ${HOME}/.Rprofile
fi

if grep -q '.libPaths' ${HOME}/.Rprofile
then
  echo 'Please add `R_LIBS` path to `.Rprofile` manually'
else
  echo '.libPaths(c(file.path("~/R", paste0(R.version$platform, "-library"), paste(strsplit(strsplit(R.version$version.string, " ")[[1]][[3]], "[.]")[[1]][c(1, 2, 3)], collapse = ".")), .libPaths()))' >> ${HOME}/.Rprofile
fi

R -e 'dir.create(file.path("~/R", paste0(R.version$platform, "-library"), paste(strsplit(strsplit(R.version$version.string, " ")[[1]][[3]], "[.]")[[1]][c(1, 2, 3)], collapse = ".")), recursive = TRUE, showWarnings = FALSE)' && \

# FIXME: httpgd was removed from CRAN
install2.r -s -n -1 -d TRUE \
  RcppGSL \
  RcppZiggurat \
  devtools \
  tidyverse \
  here \
  Rfast \
  foreach \
  svglite \
  ggpubr \
  cowplot \
  ggplotify \
  ggrepel \
  ggcorrplot \
  plotly \
  XML \
  plotROC \
  clipr \
  languageserver \
  jsonlite \
  uwot \
  Rtsne \
  igraph \
  NMF \
  readxl

installGithub.r -d TRUE \
  pachterlab/sleuth \
  krassowski/complex-upset \
  satijalab/seurat

install2.r -s -n -1 -d TRUE BiocManager
biocpackages=(
  AnnotationDbi
  org.Hs.eg.db
  org.Mm.eg.db
  clusterProfiler
  GenomicRanges
  GenomicFeatures
  rtracklayer
  rhdf5
  genomation
  DESeq2
  edgeR
  GO.db
  tximport
  BSgenome.Hsapiens.UCSC.hg38
  methylKit
  maftools
)

R -e "
pkgs <- c($(printf '"%s",' "${biocpackages[@]}" | sed 's/,$//'))
BiocManager::install(pkgs, ask = FALSE, update = FALSE)
"

pip install radian
