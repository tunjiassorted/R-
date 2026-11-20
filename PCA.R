#principle component analysis

install.packages("stats")

#load required libraries

library(stats)
library(dplyr)
#using iris data 
View(iris)

#unspervised learning : converting iris data to unlabelled
mydata = select(iris, c(1,2,3,4))

#check pca eligibility 

cor(mydata)
mean(cor(mydata))

#hence it is eligible 

#principal Component Analysis

PCA =princomp(mydata)

#Evaluate PCA

PCA$loadings

#principal component
PC = PCA$scores
View(PC)
cor(PC)
