# Let's create MCDs for Stewart Castle Village

#### Lines 33-60: The functions used in these lines should be familiar at this point. 

* Remember to load the packages before running this code.
* Import the two data sets you need for this analysis.
*  Check the data frames.
*  Summarize the ceramic data. 

#### Line 65: Meet ```inner_join(...)```

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

#### Lines 96-99: Let's calculate!

```merged_VC1 <- merged_VC %>% 
  mutate(midPoint = (EndDate+BeginDate)/2,
         span = (EndDate - BeginDate),
         inverseVar = 1/(span/6)^2)```



