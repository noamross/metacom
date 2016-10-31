library(devtools)
library(vegan)
load_all()
data(TestMatrices)
intmat <- TestMatrices[[7]]

Rprof("out.test")
ems.test <- Metacommunity(intmat, method='r1', sims=100, scores=1)
Rprof(NULL)
noamtools::proftable("out.test")
