## Exercise 3, continued: Let's list those changes and additions...

* Unit observations: there are multiple different spellings and abbreviations for the same units.
    * 'F 26','F. 26'
    * 'SP1','SPav1'
    * 'HWN II','HWN Square II'
    * 'Illegible/unmarked','Illegible'
    * 'Miscellaneous','misc.'

* Artifact Type Observations: there are different spellings for the same types.
   * "ccware", "Creamware", "Creamware, bowl"
   * "White ware", "Whiteware", "Whiteware, annular", "Whiteware, mocha"
   * What other spelling issues?
   * Are there any red flags in these data? (this is a question for the historical archaeologists in the class)

* New Variables/Fields? Yes, please! How about:
   * Form
   * Material
   * Others?

## Exercise 4: Add new variables and observations with `mutate`(...)

You can add new variables in several different ways. I am going to show you one way, which uses the `mutate(...)` function.
Nested within the `mutate(...)` function are two other functions: `ifelse(...)` and `c(...)`

* Use mutate to create new variables and populate them at the same time.
   * Run lines 78-79.
```
CleanerData <- MDStreamlined %>% # We take MDStreamlined and will create CleanerData
  mutate(NewUnit=ifelse(Unit %in% c('F 26','F. 26'), 'F26', Unit))
```
* What does the c(...) function do?
   * c('F 26','F. 26') 
   * Run line 85.

## [On to Exercise 4 and Wrap Up](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop4/Part_V.md)

