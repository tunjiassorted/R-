#dplyr_task.R

library(dplyr)


patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "TType1")
status <- c("Poor", "Improve", "Excellent", "Poor")
patientdata <- data.frame(patientID, age, diabetes, status)

patientID <- c(1, 2, 3, 4)
medication <- c("Metformin", "Repaglinide", "Metformin", "Repaglinide")
sideeffects <- c("No", "Yes", "No", "Yes")
patientMEDS <- data.frame(patientID, medication, sideeffects)

library(stringr)
mydata1 <- read.csv("state.csv",header = TRUE)
head(mydata1)
