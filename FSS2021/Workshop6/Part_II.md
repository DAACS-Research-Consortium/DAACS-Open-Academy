# Part 2: Abundance Indices  
### bespoke (adj.): custom made
 


**Abundance Index = Artifact Group 1/(Artifact Group 1 + Artifact Group 2)**

where Group 1 is the artifact group whose variation we are interested in measuring and Group 2 represents the class whose discard rate we hypothesize is constant across the assemblages being compared.

#### Let's calculate, in R, abundance indices for the three artifact types with Olive-green Wine Bottle Glass as Artifact Group 2.

```
Buttons<- c(12) # We create a numeric vector of counts associated with buttons.
Ceramics<- c(301) # We create a numeric vector of counts associated with ceramics.
TobPipes<- c(56) # We create a numeric vector of counts associated with tobacco pipes.
totalArts<- c(1000) # We create a numeric vector of total artifacts in an assemblage.
```

``` df<-data.frame(Buttons, Ceramics, TobPipes, totalArts) ```
  
``` 
RelFreq <-df %>% mutate(ButtonRF=Buttons/totalArts,
                              CeramicRF=Ceramics/totalArts,
                              TobPipeRF=TobPipes/totalArts) 
```

#### Now let's calculate relative frequencies of these three artifact types as proportions of artifact assemblages from three sites:
```
siteMCDs <- c(1770, 1790, 1810) # We create a numeric vector of site MCDS.
Buttons<- c(12, 17, 25)         # Use c(...) concatenate function to put 
Ceramics<- c(301, 452, 934)     # multiples obs together in one vector.
TobPipes<- c(56, 78, 102) 
totalArts<- c(1000, 1540, 2300) 
```

``` df<-data.frame(Buttons, Ceramics, TobPipes, totalArts, siteMCDs) ```
  
```
RelativeFreqs <-df %>% mutate(ButtonRF=Buttons/totalArts,
                              CeramicRF=Ceramics/totalArts,
                              TobPipeRF=TobPipes/totalArts)
 ```



### [On to Part III: AI with Real Data ...](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop6/Part_III.md)


