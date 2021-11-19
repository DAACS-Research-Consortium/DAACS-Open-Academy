# Let's create MCDs for Stewart Castle Village

### Lines 33-60: The functions used in these lines should be familiar at this point. 

* Remember to load the packages before running this code.
* Import the two data sets you need for this analysis.
*  Check the data frames.
*  Summarize the ceramic data. 

### Line 65: Meet ```inner_join(...)```

```inner_join(...)``` is a mutating join that adds columns from one data frame to another using a common variable.


Line 65: ```merged_VC <- inner_join(VillageCeramics, MCDType, by = "Ware", keep = FALSE)```

Here we are joining VillageCeramics and MCType on the "Ware" variable.

What is the structure of this function?

```inner_join(x, y, by=, keep = )```
* x= data frame1. In this case, VillageCeramics.
* y=:data frame2. In this case, MCDType.
* by=: Names of the variable that is common to both x and y. In the case of these data frames, "Ware" is the common variable on which we join these dataframes.
* keep=: should the join variable or "keys" from both x and y be preserved in the output? Here we say FALSE (no) and only keep one "Ware" variable.
* Read more about mutating joins here: https://dplyr.tidyverse.org/reference/mutate-joins.html

### Lines 96-99: Let's calculate!

Here we add three new numeric variables to the merged data frame.  We will use these variables to calculate MCDs and TPQs.

The three variables are:
* Midpoint: the midpoint of the manufacturing span for a given ware type.
* Span: the difference between the end date and beginning date of manufacture for a given ware type.
* Inverse Variance: 

The first two variables are created using the BeginDate and EndDate fields in the data frame. Span is then used to create inverseVar.

Line ```merged_VC1 <- merged_VC %>%
 mutate(midPoint = (EndDate+BeginDate)/2,
         span = (EndDate - BeginDate),
         inverseVar = 1/(span/6)^2)```
         
The only thing we know about these types is span.  How do we get from the begin and end dates to get to a variance estimate? If you have a Gaussian distribution, roughly 95% of the mass of the curve falls within + or minus 2 standard deviations of the mean. One way to estimate variance is divide span but two standard deviations on either side of the mid point.  That would be then dividing span by 4. But if we are interested in 99% of the observations under the curve, then that is covered by 3 standard deviations. Then the estimate of variance is the span/6 standard deviations (3 in one direction and 3 in the other).


         
         




