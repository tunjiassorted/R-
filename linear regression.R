# Linear correlation

studyhard <- read.table('correlation.csv', header = TRUE, sep=',')
head(studyhard)
cor(studyhard)
cor.test(studyhard$studytime,studyhard$grade)
#scatterplot
attach(studyhard)
plot(studytime,grade,main="Scatterplot Example",xlab="Study Time",ylab="Exam Mark", pch=19)
#add fit lines
abline(lm(grade~studytime),col="red")

#linear regression 
lmmodel<- lm(grade~studytime)
summary(lmmodel)

kenhope <- data.frame(studytime=70)
predict(lm(grade~studytime),kenhope)
predict((lmmodel),kenhope, interval = "confidence")

#by hand 
34.4 +(0.744*70)

