# Part 4: Confidence Limits
So far we have just computed what in the stats biz are called "point estimates" of relative frequencies (*alias* proportions) and AIs from an assemblage. That's cool!

But our estimates would be cooler if they also included an indication of how "confident" we are about the accuracy of the estimate for a given assemblage. 

A thought experiment...
- Your have  following data from two assmblages:  

| Assemblage | Ceramics | WBG | 
| ---- | ---- | ---- |
| Assemblage A | 4 | 10 |  
| Assemblage B | 53 | 285 |

 - You want to estimate the propotion of ceramics, relative to wine bottle glass (WBG).
 - For A, our estimate is  4/(4+10) = .28. For B it's (53/(53+285) = .16.  Which estimate do you think is more likely to be close to the true proportion of ceramics, relative to wine bottle glass?  
 - On way to make sense of this question is to *imagine* that each assemblage is a random sample from a much, much larger population of sherds. The "true proportion" is then the proportion of ceramics in that population. 
 - Our confidence will be a function of sample size: the bigger the assemblage, the more "confident" we should be that our estimate is close to the true value.
 - We can make the imagining process more useful with the help of a statisticial model.
 - The model we use in this case is called the *binomial distribution*. It's a formula that we can use to predict the probability of drawing a sample in which we get *x* "successes", when the total sample size is *n* and the true proportion in the underlying population is &phi;.
 - With some algebra, we can also use the binomial distrbution model to estimate *confidence limits*.    

**Confidence limits** on a point estimate are the upper and lower bounds of an interval that we can expect will contain the true value some specified percentage of the time that we compute such an interval. The interval is (not surprisingly) call a *confidence interval*. To compute CLs, we need to specify the percentage. Tradition, dating back to R.A. Fisher, is to specify 95%. But we could also go with 90, or 80, or 89! 

- In R, we can compute CLs using Frank Harrell's *Hmisc* package.
- Here is the code:
````
library(Hmisc)
Assemblage <- c('A', 'B')
Ceramics <- c( 4, 53)
WBG <- c (10, 285)
aData <- data.frame(Assemblage, Ceramics, WBG) 
aData
 
with(aData,
      Hmisc::binconf(x = Ceramics, 
                     n = Ceramics + WBG, 
                     alpha =.05)
)
````
Note the *alpha* argument. This is how we specify the percentge for the interval. The percentage is *(1-alpha) x 100* 





