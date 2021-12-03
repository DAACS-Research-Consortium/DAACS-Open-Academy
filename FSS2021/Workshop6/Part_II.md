# Part 2: Abundance Indices  
### bespoke (adj.): custom made
 
 * An abundance index, a variant of a relative frequency, is a promising solution.  
 
 * Abundance indices provide estimates of discard rates relative to a baseline discard rate, with the assumption that the base discard rate of the denominator class either does not change or, if it does change, it does so in a predictable manner. As a result, we only have to be concerned with correlated discard rate variation in a single denominator class, not many artifact classes.  
 
 * ** An Abundance Index is estimated as**: AI = (Artifact Group 1) / (Artifact Group 1) +(Artifact Group 2), where Group 1 is the artifact group whose variation we are interested in measuring and Group 2 represents the class whose discard rate we hypothesize is constant across the assemblages being compared.  

**The Challenge!**

* The real trick for any analysis using an Abundance Index, however, is finding an Artifact Group 2 with a discard rate that is either relatively constant across sites or that has a discard rate that varies predictably over time. 

* An artifact class whose discard is relatively constant through time is ideal, however an artifact class that decreases or increases predictably through time could be used as the baseline Artifact Group 2 artifact class, provided it is acknowledged that the predictable variation will artificially inflate or deflate our estimates of variation in discard rate for the Artifact Group 1. 

* Past research using abundance indices have used several lines of evidence to determine the most reliable Artifact Group 2 (Galle 2004, 2006, 2010, 2011; Bates 2015).
    -- The first step is considering which artifact classes, or groups, would most likely be discarded with some uniformity on your site type.  
    -- For historic-period sites, nails brick, mortar, window glass and other architectural artifacts are not likely uniformly distributed across sites since architectural            technology varied greatly. 
    -- It is expected that costly leaded glass and refined ceramics were introduced during the Consumer Revolution and required financial resources to acquire, therefore their        presence will vary depending on when the site was occupied and the ability of the residents to acquire these fashionable goods. 
    -- Other artifact types, such as tools, adornment items, and toys are found in sample sizes that are often too small to be useful.  
    -- Tobacco pipes and non-wine bottle glass tend to be skewed temporally, with tobacco pipes in much greater quantities in the 18th century and semi-molded or molded glass          vessels only appearing in significant quantities in the later 19th century. 
    -- Wine bottles were ubiquitous on sites occupied during the late 17th to early 19th centuries, regularly finding their way to sites where, after their original contents          were drained, they were reused as storage containers for other liquids. Recent analyses of 18th century slave quarters sites in the greater Chesapeake and Jamaica              indicate that the discard of wine bottle glass had no correlation with time, meaning that the presence of wine bottle sherds at these sites neither increased nor                decreased through time. (Galle 2006, 2010, 2011; Bates 2015). 


**Abundance Index = Artifact Group 1/(Artifact Group 1 + Artifact Group 2)**

where Group 1 is the artifact group whose variation we are interested in measuring and Group 2 represents the class whose discard rate we hypothesize is constant across the assemblages being compared.

#### Let's calculate, in R, abundance indices for the three artifact types with Olive-green Wine Bottle Glass as Artifact Group 2.
Lines 69-81

```
siteMCDs <- c(1770, 1790, 1810) 
WBG<- c(180, 218, 342) 
Buttons<- c(12, 17, 25)
Ceramics<- c(301, 452, 934) 
TobPipes<- c(56, 78, 102) 
totalArts<- c(1000, 1540, 2300) 
```
```AIdf<-data.frame(WBG, Buttons, Ceramics, TobPipes, totalArts, siteMCDs)```

```
AI <-AIdf %>% mutate(CeramicAI=Ceramics/(Ceramics+WBG),
                          ButtonAI=Buttons/(Buttons+WBG),
                          TobPipeAI=TobPipes/(TobPipes+WBG)) 
```


### [On to Part III: Frequencies and AI with Real Data ...](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop6/Part_III.md)


