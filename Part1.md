Statistical Infrence Project 1
========================================================

# Vrishank Subramani


## Background
Let us compare a simulation to what is known. Below I am comparing the theoretical mean and experimental mean for exponential diribution where $\lambda$ is .2 and running the simulation 1000 times per set for 40 sets.

### Part 1

First we state/create the givens and create a random process for R to follow and reproduce. Then we create our dataset


```r

lambda <- 0.2
set.seed(6)

data <- replicate(1000, rexp(40, lambda))

Mean <- colMeans(data, na.rm = FALSE, dims = 1)
```


Take a look at how the mean of an exponential distribution looks across a thousand samples


```r
hist(Mean, main = "Histogram for Mean of an Exponential Distribution", xlab = "Mean", 
    col = "red", breaks = 20, )
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


Next we find our Calculated Mean 

```r
Cmean <- mean(Mean)
Cmean
```

```
## [1] 4.95
```


Compare that to the Theoretical Mean of an exponential function which we know to be $\frac{1}{\lambda}$

```r
Tmean <- 1/(lambda)
Tmean
```

```
## [1] 5
```


As we can see the Calculated and Theoretical Means are very similar, only differing by .5

#### Part 2

Let us now calculate the Calculated Variance which we know the formula to be Std Dev Squared. Using the variance function we can easily find the variance of our set.



```r
Cvar <- var(Mean)
Cvar
```

```
## [1] 0.664
```


To find the theoretical mean we can use the definition of Variance which states it is the square of standard deviation. Std Dev for an exponential function being $\frac{\frac{1}{\lambda}}{\sqrt{n}}$ we can calculate our mean.


```r
Tvar <- ((1/lambda)/(sqrt(40)))^2
Tvar
```

```
## [1] 0.625
```

