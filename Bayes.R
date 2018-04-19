setwd("F:/untitled1")
library(bnlearn)
bayes <- read.csv('vectors.csv')
bayes <- bayes[,-1]
for(i in 1:ncol(bayes)){
  bayes[,i] <- as.factor(bayes[,i])
}
model.constrain <- cextend(pc.stable(bayes))
model.score <- cextend(tabu(bayes))
model.hybrid <- cextend(mmhc(bayes))
model.constrain$arcs
bn.fit(model.constrain,bayes)
model.score$arcs
bn.fit(model.score,bayes)
model.hybrid$arcs
bn.fit(model.hybrid,bayes)
