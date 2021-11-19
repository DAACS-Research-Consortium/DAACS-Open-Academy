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
* x=: data frame1. In this case, VillageCeramics.
* y=: data frame2. In this case, MCDType.
* by=: Name of the variable that is common to both x and y. In this case, "Ware" is the common variable on which we join these dataframes.
* keep=: Should the join variable or "keys" from both x and y be preserved in the output? Here we say FALSE (no) and only keep one "Ware" variable.
* Read more about mutating joins here: https://dplyr.tidyverse.org/reference/mutate-joins.html

### Lines 96-99: Let's calculate!

Here we add one new numeric variable to the merged data frame.  We will use this variable to calculate the MCD.

The variable is:
* Midpoint: the midpoint of the manufacturing span for a given ware type.  It is calcuated by adding the values in the BeginDate and EndDate fields together and then dividing by 2.

Line XX ```merged_VC1 <- merged_VC %>%
 mutate(midPoint = (EndDate+BeginDate)/2)```
 
Next we create a new field "Unit" and populate it with data from "Context".
```VC.Unit <- merged_VC1 %>% mutate(Unit = Context)```

After we use the filter function to and mutate function to choose all the levels from Unit 003, and combine assemblage counts from the last two layers, we then compute the MCDs and TPQ!

#### MCDs
Lines XX ```MCDs <- VC.Unit.Quad3a %>% group_by(Unit) %>% 
  dplyr::summarize (sumOfProducts = sum(midPoint*Count),
                    sumOfCounts= sum(Count),
                    MCD = sumOfProducts /sumOfCounts)```

#### TPQs
Lines XX ```TPQs <- VC.Unit.Quad3a %>% group_by(Unit) %>% 
  dplyr::summarize (TPQ = max(BeginDate),
                    sumOfCounts= sum(Count))```

