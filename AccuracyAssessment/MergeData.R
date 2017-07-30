setwd('C:\\Users\\krtenneson\\Desktop\\RLCMS\\CEOMapathon\\AccuracyAssessment')

files = list.files(pattern="*.csv")
myfiles = do.call(rbind, lapply(files, function(x) read.csv(x, stringsAsFactors = FALSE)))

head(myfiles)

colnames(myfiles)<-c("PLOTID", "longitude", "latitude", "SIZEM", "SHAPE", 
                     "FLAGGED", "ANALYSES", "SAMPLEPOINTS", "USERID", 
                     "BUILTSURFACE", "BUILTVEGNONTREE", "BUILTTREE", "MINING", 
                     "MUDFLATBEACH", "BARRENOTHER", "TREEPLANTATIONORCHARD", 
                     "TREEMANGROVE", "TREEOTHER", "SHRUB", "GRASS", "CROP", 
                     "AQUACULTUREPOND", "AQUATICVEGOTHER", "WATER", 
                     "SNOWICE", "UNKNOWN", "OTHER")
write.csv(myfiles, 'allPoints.csv', row.names = F)


#######################
plots <- myfiles[ myfiles$ANALYSES == 1,]
head(plots)

dim(plots)
