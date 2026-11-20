

sports <- read.csv("chestsizes.csv", header=TRUE, stringsAsFactors = FALSE)
str(sports)
head(sports)

#using anova to check the for statiscal significance 

sports$activity <- as.factor(sports$activity)
results <- aov(chestsize ~ activity, data = sports)
summary(results)
TukeyHSD(results)

# plotting boxplot

boxplot(sports$chestsize~sports$activity,data = sports)

