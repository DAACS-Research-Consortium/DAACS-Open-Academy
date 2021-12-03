# Part 1: Conventional "Vanilla" Relative Frequencies  
### vanilla (adj.): having no special or extra features; ordinary or standard
 
**The** conventional application of a relative frequency in archaeology is the count of one artifact type divided by the count of all artifact types in a given assemblage.

**Relative Frequency = Artifact Type 1/Total Artifacts**

#### Let's calculate, in R, the relative frequencies of three artifact types as proportions of the entire artifact assemblage for a single site:

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
## Things to Keep in Mind about Relative Frequencies

* Relative frequencies are one of the most commonly used measures of assemblage variation. 

* They are ideal for seriation and related chronology methods such as mean ceramic dates and pipe stem bore diameter dating. 

* **However**, they are problematic if you want to reliably measure and compare variation in discard patterns.  Relative frequencies  are based on the assumption that the discard rate of the artifact class in the numerator is independent of the discard rates for all the artifact classes that make up the denominator. This is rarely the case. 

* For traditional relative frequencies of a given artifact type, relative to all other artifact types , to provide an accurate picture of discard, the discard rate of all the other types must be constant. A constant discard rate of all other artifact types, within a single site and between sites, is highly unlikely. As a result, archaeologists need a measure that is sensitive to the discard of not simply the artifact being measured, but also the other artifact classes that comprise the assemblage.


### [On to Part II: The Abundance Index ...](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop6/Part_II.md)

