#utilice VEGAN para jugar con datos y graficar datos
library(vegan)
library(MASS)

data(BCI)
mod <- decorana(BCI)
plot(mod)
names(BCI)[1:5]
shnam <- make.cepnames(names(BCI))
shnam[1:5]
pl <- plot(mod, dis="sp")
identify(pl, "sp", labels=shnam)
stems <- colSums(BCI)
plot(mod, dis="sp", type="n")
sel<- orditorp(mod, dis="sp", lab=shnam, priority=stems, pcol = "grey")
                
