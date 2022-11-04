# rma_sample
This is just a memo for me, not assure that codes would work.

# How to run
1. Create a folder named "GSE53987" under the root directory (path should be "C:\GSE53987")
2. Go https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE53987 and download GSE53987_RAW.tar (this may take some time)
3. Extract the tar file to obtain a gz file, which can then be extracted to "C:\Users\GSE53987"
4. Copy lines below and run in R:

if (!require("BiocManager", quietly = TRUE))

  install.package("BiocManager")
  
BiocManager::install(version = "3.15")

5. Type BiocManager::install("affy") to read files from Affymetrix

6. Run library(affy) to load "affy" library

7. Run "rma_gse53987.R"
