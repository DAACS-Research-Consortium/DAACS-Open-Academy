## Exercise 2 - `%>%`
Remember this thing: `%>%` The Pipe


Run lines 41-43 and 45-46 
```
#with pipe
SCVTotalArts <-  StewartCastleVillage %>%  
  summarise(TotalArtifacts = sum(Count))

#without pipe
SCVTotalArtsNP <- summarise(StewartCastleVillage, TotalArtifacts = sum(Count))
```

* Do you get the same result?
* What's different about the syntax?

## Exercise 3 more `%>%`
Run lines 41-55 and 58-59
```
#with pipe
SCVArtCat <-  StewartCastleVillage %>% 
  group_by(ArtifactCategory) %>%  # group by tells you which variable to 
  # summarize by
  summarise(Count = sum(Count))   # this specifies the field you want 
  # summarized and what to call that field.

#without pipe
#Option 1: Must do intermediate steps
SCVArtCat2 <- group_by(StewartCastleVillage, ArtifactCategory)
SCVArtCatSum <- summarise(SCVArtCat2, Count = sum(Count))

#another option without the pipe, chain functions together
SCVArtCatNP <- summarise(
  group_by(StewartCastleVillage, ArtifactCategory), 
  Count = sum(Count))

```
* Do you get the same result?
* What's different about the process between the two?

#[Up next -- Filtering and Plotting!](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop3/Part_III.md)
