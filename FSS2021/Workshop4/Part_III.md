## Exercise 2 -- `arrange`(...), `group_by`(...) and `summarise`(...)

* We are going to use the arrange, group_by and summarise functions to identify problems with the data.

### `arrange`(...) by Unit
1. Run line 54
```
MDUnit<-MDStreamlined%>% arrange(Unit)
```
2. Scroll through new dataframe, looking at observations in the Unit variable.
3. What do you notice?

### `group_by`(...) by Unit, `summarize`(...) by Count
5. Run lines 57-59
6. Note how it is easier to spot the problems in the Unit variable.
7. Run lines 61-69 to check Feature and Artifact Type.
8. Run lines 72-73 to see how many total artifacts are in the data frame.  An important check for later in this process.

## Exercise 3 -- Brainstorm! 

* What do we need to fix?
* Do we want/need to capture data in different variables?
* Give me a list.

## [Let's see what we have...](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop4/Part_IV.md)

