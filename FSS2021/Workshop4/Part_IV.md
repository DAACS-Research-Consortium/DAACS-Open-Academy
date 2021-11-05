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

```
NewEmptyFields <- MDStreamlined %>%
  mutate(NewUnit= ' ')%>%
  mutate(NewFeature= ' ')%>%
  mutate(NewArtType= ' ')%>%
  mutate(NewForm= ' ')%>%
  mutate(NewMaterial= ' ')%>%
  mutate(NewDecoration= ' ')%>%
  mutate(NewColor= ' ')
```

* The other way populates the variables as you create them.
   * Run lines 87-92.
```
NewCompleteFields <- MDStreamlined %>%
  mutate(NewUnit=ifelse(Unit %in% c('F 26','F. 26'), 'F26', Unit))%>%
  mutate(NewUnit=ifelse(Unit %in% c('SP1','SPav1'), 'SouthPav1', NewUnit))%>%
  mutate(NewUnit=ifelse(Unit %in% c('HWN II','HWN Square II'), 'HWNII', NewUnit))%>%
  mutate(NewUnit=ifelse(Unit %in% c('Illegible/unmarked','Illegible'), 'Illegible', NewUnit))%>%
  mutate(NewUnit=ifelse(Unit %in% c('Miscellaneous','misc.'), 'Misc', NewUnit))
```

## On to Exercise 5 and Wrap Up

