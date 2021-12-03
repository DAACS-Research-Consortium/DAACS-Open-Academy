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
## The plan for today is to:

1. Learn how to compute and plot conventional "vanilla" relative frequencies in R.
2. Meet their more bespoke cousin, the abundance index. You will also learn how to calculate and plot AI data.
3. Learn how to create and plot confidence limits for the data.
4. Refresh our data-wranging and cleaning skills from last time.
    - Get comfortable with using mutate to create new variables.
    - Think through data cleaning and organization.  
    - Reacquaint ourselves with ggplot to make cool plots like this: 
    - ![](./Images/BattleshipPlot.png)  
5. Finally, we will be staying after class today to help anyone with questions or problems related to their own research datasets.

### [On to Part I: Vanilla Relative Frequencies ...](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop6/Part_II.md)

