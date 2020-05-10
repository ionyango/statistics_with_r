library(tidyverse)
library(dslabs)

##generate data
beads<-rep(c("red","blue"), times = c(2,3))
beads

##Picking a sample randomly
sample(beads,B, replace = TRUE)

## Simulating categorical variabes using Monte Carlo
## define the number of simulations
B<-10000

##Run Monte Carlo
events<-replicate(B,sample(beads,1))

##distribtion of events
tab<-table(events)

#probabiity distribution
prop.table(tab)

