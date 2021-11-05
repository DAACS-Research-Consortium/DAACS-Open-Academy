## Exercise 3, continued: Let's list those changes and additions...

* Unit observations: there are multiple d            ifferent spellings and abbreviations for the same units.
    * 'F 26','F. 26'
    * 'SP1','SPav1'
    * 'HWN II','HWN Square II'
    * 'Illegible/unmarked','Illegible'
    * 'Miscellaneous','misc.'

* Feature observations: there are multiple different spellings and abbreviations for the same features.
   * 'F166','Fea 166','Feature 166'

* Artifact Type Observations: there are different spellings for the same types.
   * "ccware", "Creamware", "Creamware, bowl"
   * "White ware", "Whiteware", "Whiteware, annular", "Whiteware, mocha"

* New Variables/Fields? Yes, please! How about:
   * Form
   * Material
   * Others?

## Exercise 4: Add new variables with `mutate`(...)

You can add new variables in several different ways. I am going to show you two ways, both of which use the `mutate` function.

* One way creates new empty variables.
   * Run lines 74-81

...
NewEmptyFields <- MDStreamlined %>%
  mutate(NewUnit= ' ')%>%
  mutate(NewFeature= ' ')%>%
  mutate(NewArtType= ' ')%>%
  mutate(NewForm= ' ')%>%
  mutate(NewMaterial= ' ')%>%
  mutate(NewDecoration= ' ')%>%
  mutate(NewColor= ' ')
...

* The other way populates the variables as you create them.
   * Run lines 87-92.
...
NewCompleteFields <- MDStreamlined %>%
  mutate(NewUnit=ifelse(Unit %in% c('F 26','F. 26'), 'F26', Unit))%>%
  mutate(NewUnit=ifelse(Unit %in% c('SP1','SPav1'), 'SouthPav1', NewUnit))%>%
  mutate(NewUnit=ifelse(Unit %in% c('HWN II','HWN Square II'), 'HWNII', NewUnit))%>%
  mutate(NewUnit=ifelse(Unit %in% c('Illegible/unmarked','Illegible'), 'Illegible', NewUnit))%>%
  mutate(NewUnit=ifelse(Unit %in% c('Miscellaneous','misc.'), 'Misc', NewUnit))
...






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
