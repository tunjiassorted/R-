#Resampling Tutorial


library(caret)
data("mtcars")
 set.seed(42)
 
 #fit linear model using 10-fild cross-validation
 lm_model <- train(mpg ~ hp, mtcars, method = "lm", 
                   trControl = trainControl(method = "cv", number = 10, verboseIter = TRUE))
 print(lm_model)
 
 #Next we examine the sampling methods learned in class using the iris data.
 data("iris")
 #repeated cross-validation
 # define training control 
 train_control<- trainControl(method = "repeatedcv", number = 10, repeats = 3)
 #train the model
 model <-train(Species~., data = iris, trControl=train_control, method="rf")
 #summerize result
 print(model)
 
 