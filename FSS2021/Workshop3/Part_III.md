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
5. Compare the plot with the original plot of counts by Artifact Category.  Do they look the same?

## Exercise 5 -- `mutate` with multiple groups





[Bonus time -- More on Pipes](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop3/Part_IV.md)
