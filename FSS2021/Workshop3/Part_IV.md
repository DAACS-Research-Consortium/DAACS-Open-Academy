
## Exercise 6 -- `%>%` compared to other ways to chain together functions
-- Returning to `%>%` The Pipe

Run lines 155-160
```
#with pipe
SCVTotalArts <-  StewartCastleVillage %>%  
  summarise(TotalArtifacts = sum(Count))

#without pipe
SCVTotalArtsNP <- summarise(StewartCastleVillage, TotalArtifacts = sum(Count))
```

* Do you get the same result?
* What's different about the syntax?

Run lines 164-178
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
* What's different about the process between the two options (intermediate steps vs chaining with parentheses?)
* What is more readible?

