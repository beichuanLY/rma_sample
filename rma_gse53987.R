# define parent directory
dirname <- "C:\\GSE53987"
setwd(dirname)

# read file names and sample names
filenames <- read.csv("C:\\GSE53987\\celfilenames.csv", header=FALSE)
samplenames <- list()


for (i in 1:dim(filenames[1])) {
  # for (i in 1:2) {
  setwd(filenames[i, 1])
  rma_data <- paste("rma", i, sep = '')
  samplenames <- append(samplenames, filenames[i, 2])
  
  # 読み込んだCELファイルをdataに代入
  data <- ReadAffy()
  
  # RMAの実行
  # これだけで Background correcting, Normalizing(たぶんquantile normalization), 
  # Calculating Expression が行われるスグレモノらしい
  rma.eset <- rma(data)
  
  # 発現量のlog2値を抽出
  rma.exprs <- exprs(rma.eset)
  
  rma_data <- assign(rma_data, rma.exprs[,1])
  
  setwd(dirname)
}


# draw box plots
boxplot(rma1,
        rma2,
        rma3,
        rma4,
        rma5,
        rma6,
        rma7,
        rma8,
        rma9,
        rma10,
        rma11,
        rma12,
        rma13,
        rma14,
        rma15,
        rma16,
        rma17,
        rma18,
        rma19,
        rma20,
        rma21,
        rma22,
        rma23,
        rma24,
        rma25,
        rma26,
        rma27,
        rma28,
        rma29,
        rma30,
        rma31,
        rma32,
        rma33,
        rma34,
        rma35,
        rma36,
        rma37,
        rma38,
        rma39,
        rma40,
        rma41,
        rma42,
        rma43,
        rma44,
        rma45,
        rma46,
        rma47,
        rma48,
        rma49,
        rma50,
        rma51,
        rma52,
        rma53,
        rma54,
        rma55,
        rma56,
        rma57,
        rma58,
        rma59,
        rma60,
        rma61,
        rma62,
        rma63,
        rma64,
        rma65,
        rma66,
        rma67,
        rma68,
        rma69,
        rma70,
        rma71,
        rma72,
        rma73,
        rma74,
        rma75,
        rma76,
        rma77,
        rma78,
        rma79,
        rma80,
        rma81,
        rma82,
        rma83,
        rma84,
        rma85,
        rma86,
        rma87,
        rma88,
        rma89,
        rma90,
        rma91,
        rma92,
        rma93,
        rma94,
        rma95,
        rma96,
        rma97,
        rma98,
        rma99,
        rma100,
        rma101,
        rma102, names=samplenames, ylab="frequency", las=2)
