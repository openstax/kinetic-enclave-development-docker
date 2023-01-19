templib <- tempfile()
dir.create(templib)
.libPaths(templib)
install.packages("~/kinetic", lib = templib, type = "source", repos = NULL)