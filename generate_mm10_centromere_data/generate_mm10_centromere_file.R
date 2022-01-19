library(gtools)

load("./R/sysdata.rda")

gap <- read.table("./R/gap.txt", sep="\t", header = F)
gap <- gap[gap$V8=="centromere",]
gap <- gap[mixedorder(gap$V2),]

chrominfo_mouse_mm10 = data.frame(chrom = gap$V2, centstart = gap$V3, centend = gap$V4, row.names = NULL, check.rows = FALSE, check.names = TRUE, stringsAsFactors = default.stringsAsFactors())
row.names(chrominfo_mouse_mm10) <- chrominfo_mouse_mm10$chrom
chrominfo_mouse_mm10 <- chrominfo_mouse_mm10[mixedorder(chrominfo_mouse_mm10$chrom),]

save(chrominfo_grch37, chrominfo_grch38, chrominfo_mouse, chrominfo_mouse_mm10, file = "./R/sysdata.rda")
