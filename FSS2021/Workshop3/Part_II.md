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

## Exercise 3 `Filtering(...)`

If you remember from last time, we made our first plot of artifacts summarized by category



but when we do artifacts by type, we have too many options.

So let's filter by Category so we can look at different types.


## Exercise 4 `ggplot` -- the grammar of graphics

ggplot is powerful package because it gives you *a lot* of control over the asthetics of your graphics

Important functions to understand that are part of the ggplot package
* `theme_set` -- the general asthetics of 
* `aes`  -- asethetics of plot
* `geom` -- type of plot


#[Up next -- A deep dive into pipes!](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop3/Part_III.md)
