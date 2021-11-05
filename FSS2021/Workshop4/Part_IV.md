## Exercise 3, continued: Let's list those changes and additions...

* Unit observations: there are multiple different spellings and abbreviations for the same units.
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
   * What other spelling issues?
   * Are there any red flags in these data? (this is a question for the historical archaeologists in the class)

* New Variables/Fields? Yes, please! How about:
   * Form
   * Material
   * Others?

## Exercise 4: Add new variables with `mutate`(...)

You can add new variables in several different ways. I am going to show you one way, which uses the `mutate` function.

* Use mutate to create new variables and populate them at the same time.
   * Run lines 79-86.
```
CleanerData <- MDStreamlined %>%
  mutate(NewUnit=ifelse(Unit %in% c('F 26','F. 26'), 'F26', Unit))%>%
  mutate(NewUnit=ifelse(Unit %in% c('SP1','SPav1'), 'SouthPav1', NewUnit))%>%
  mutate(NewUnit=ifelse(Unit %in% c('HWN II','HWN Square II'), 'HWNII', NewUnit))%>%
  mutate(NewUnit=ifelse(Unit %in% c('Illegible/unmarked','Illegible'), 'Illegible', NewUnit))%>%
  mutate(NewUnit=ifelse(Unit %in% c('Miscellaneous','misc.'), 'Misc', NewUnit))%>%
  mutate(NewFeature=ifelse(Feature %in% c('F166','Fea 166','Feature 166'), 'F166', Feature))
```
* Run summary checks on NewUnit and NewFeature to make sure new data look clean.
   *Run lines 89-96.

## [On to Exercise 5 and Wrap Up](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop4/Part_V.md)

