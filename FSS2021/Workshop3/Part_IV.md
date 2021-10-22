

-- Remember this thing: `%>%` The Pipe


Run lines 136-138 and 140-141
```
#with pipe
SCVTotalArts <-  StewartCastleVillage %>%  
  summarise(TotalArtifacts = sum(Count))

#without pipe
SCVTotalArtsNP <- summarise(StewartCastleVillage, TotalArtifacts = sum(Count))
```

* Do you get the same result?
* What's different about the syntax?

## Exercise 5 `%>%` compared to other ways to chain together functions
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
