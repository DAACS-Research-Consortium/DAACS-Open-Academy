## Exercise 2 -- 'arrange', 'group_by' and `summarise`(...)
We are going to use the arrange, group_by and summarise functions to: 

* identify problems with the data
* 

'arrange'(...) by Unit
1. Run line 53
```
MDUnit<-MDStreamlined%>% arrange(Unit)
```
2. Scroll through new dataframe, looking at observations in the Unit variable.
#3. What do you notice?
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
7. Think about how different this process would be if you were performing it in Excel. What benefits does doing it in R provide?

### Wrap up/Q&A 
OR
[Bonus time -- More on Pipes](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop3/Part_IV.md)

