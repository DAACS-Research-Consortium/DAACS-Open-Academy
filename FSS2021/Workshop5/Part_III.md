# Let's create MCDs for Stewart Castle Village

#### Lines 33-60: The functions used in these lines should be familiar at this point. 

* Remember to load the packages before running this code.
* Import the two data sets you need for this analysis.
*  Check the data frames.
*  Summarize the ceramic data. 

#### Line 65: New function ```merge(...)```

The ```merge(...)``` function allows you to join two data frames together.

```merged_VC <- merge(VillageCeramics, MCDType, by.x = "Ware", by.y = "Ware", all=FALSE)```

What is the structure of this function?
```merge(x, y, by.x, by.y,all.x,all.y, sort = TRUE)```
x= data frame1.
y=:data frame2.
by,x, by.y: The names of the varibales that are common to both x and y. The default is to use the variables with common names between the two data frames.

In the case of these data frames, "Ware" is the common variable on which we join the two data frames.
#all, all.x, all.y:Logical values that specify the type of merge. The default value is all=FALSE (meaning that only the matching rows are returned).
#https://www.datasciencemadesimple.com/join-in-r-merge-in-r/






