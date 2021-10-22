## Exercise 4 -- `mutate`(...)
The mutate function allows you to:
* create, modify, and delete columns
* add new variables and preserve existing ones
```
# Calculate percent of artifact categories at SCV

SCVArtFreq <-  StewartCastleVillage %>%  # Identify the dataset
  group_by(ArtifactCategory) %>%         # Specify the variable you group_by
  summarise(Count = sum(Count)) %>%      # Summarize to get total count
  mutate(Percent = Count/sum(Count))     # Use mutate function to calculate the
# Percent
```
