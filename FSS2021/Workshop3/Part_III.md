## Exercise 4 -- `mutate`(...)
The mutate function allows you to:
* create, modify, and delete columns
* add new variables and preserve existing ones

We're going to create a new column for percentage of artifact categories at SCV
1. Run lines 113-117
```
SCVArtFreq <-  StewartCastleVillage %>%  # Identify the dataset
  group_by(ArtifactCategory) %>%         # Specify the variable you group_by
  summarise(Count = sum(Count)) %>%      # Summarize to get total count
  mutate(Percent = Count/sum(Count))     # Use mutate function to calculate the
# Percent
```
2. Explore SCArtFreq
3. Compare the output from `SCVArtFreq` to `SCVArtCat`
4. Run lines 120-126
5. Compare your new plot with the original plot of counts by Artifact Category.  Do they look the same?

## Exercise 5 -- `mutate` with multiple groups
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


[Bonus time -- More on Pipes](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop3/Part_IV.md)
