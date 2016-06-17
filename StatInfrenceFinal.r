#Vrishank Subramani
#Statistical Infrence Final Project

#Part 1
#Setting Lambda to .2
lambda <- .2

#Setting a Seed

set.seed(6)

data <- replicate(1000, rexp(40,lambda))

Mean <- colMeans(data, na.rm = FALSE, dims = 1)

avgMean <- mean(Mean)

hist(Mean, 
     main="Histogram for Mean of an Exponential Distribution", 
     xlab="Mean", 
     col="red",
     breaks=20,)
abline(v =avgMean, )

avgMean
