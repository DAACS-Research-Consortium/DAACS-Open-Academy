## Exercise 2 - `%>%`
Remember this thing: `%>%` The Pipe

![](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop3/FBbJQ2ZUUAwUcyw.png)

Run lines 41-43 and 45-46 
`#with pipe
SCVTotalArts <-  StewartCastleVillage %>%
  summarise(TotalArtifacts = sum(Count))`

`#without pipe -- different syntax

SCVTotalArtsNP <- summarise(StewartCastleVillage, TotalArtifacts = sum(Count))`

* Do you get the same result?
* What's different about the syntax?

## Exercise 3
Run lines 41-55 and 58-59
* Do you get the same result?
* What's different about the process between the two?
