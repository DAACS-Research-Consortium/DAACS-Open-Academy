## Exercise 3, continued -- those changes and additions...


## Exercise 4: Add new variable.

You can add new varibales in several different ways. I am going to show you two ways.
* One creates new empty varibales.
* The other way populates the variables as you create them.

`mutate` with multiple groups
Let's say we want to look at artifact percentage by unit type
1. Run lines 135-139

```
SCVArtFreqByUnit <-  StewartCastleVillage %>%  # Identify the dataset
  group_by(ArtifactCategory, UnitType) %>%  # Specify the variable you group_by
  summarise(Count = sum(Count)) %>%      # Summarize to get total count
  mutate(Percent = Count/sum(Count))     # Use mutate function to calculate the
# Percent
```
2. Explore SCVArtFreqByUnit
3. Compare to SCArtFreq
4. Run lines 142-149
5. What is different about the new plot when compared to the plot of Artifact Category percentage? 
6. What argument did we add to ggplot that allowed us to make this plot?
7. Think about how different this process would be if you were performing it in Excel. What benefits does doing it in R provide?

### Wrap up/Q&A 
OR
