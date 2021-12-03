# Part 1: Conventional "Vanilla" Relative Frequencies
 ## vanilla (adj.): having no special or extra features; ordinary or standard
 - ![](./Images/Vanilla (2).jfif)  

The conventional application of a relative frequency in archaeology is the count of one artifact type divided by the count of all artifact types in a givem assemblage.

Relative Frequency = Artifact Type 1/Total Artifacts

## Let's calculate the relative frequencies of Buttons, Creamics, and Tobacco Pipes as proportions of the entire artifact assemblages for three sites:

siteMCDs <- c(1770, 1790, 1810) # We create a numeric vector of site MCDS
Buttons<- c(12, 17, 25) # We create a numeric vector of counts associated with buttons
Ceramics<- c(301, 452, 934) # We create a numeric vector of counts associated with ceramics
TobPipes<- c(56, 78, 102) # We create a numeric vector of counts associated with tobacco pipes
totalArts<- c(1000, 1540, 2300) # We create a numeric vector of total artifacts in an assemblage

df<-data.frame(Buttons, Ceramics, TobPipes, totalArts, siteMCDs)
  
RelativeFreqs <-df %>% mutate(ButtonRF=Buttons/totalArts,
                              CeramicRF=Ceramics/totalArts,
                              TobPipeRF=TobPipes/totalArts)


### [On to Part II: The Abundance Index ...](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop6/Part_II.md)

