#multiple Linear regression 
growth <- read.table('plants.csv', header =TRUE, sep=',' )
attach(growth)
head(growth)

mrmodel <- lm(toxin~temp+rain+sunshine+wind)

summary(mrmodel)

#checking the P-values of coeffients 
#since temp and sunshine is not contributing information they will be drop
#the we perform some diagnostics analysis
#we check for multplelinearity
#we will install "mctest" package from tools
library(mctest)

imcdiag(mrmodel)
mrmodel<-lm(toxin~rain+sunshine+wind)
summary(mrmodel)
#predict with new multiple-regression model

newarea <- data.frame(rain=2.5, sunshine=35, wind=12)
predict((mrmodel), newarea, interval="confidence")

#final plot some residual (error) information
par(mfrow=c(2,2))
plot(mrmodel)