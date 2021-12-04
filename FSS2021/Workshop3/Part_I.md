## Quick Review
1. Load the packages
2. Import CSV
3. Check out the dataframe
4. Remember this thing: the `<-` operator 'catches' the output of functions and stores them in variables.

![](https://github.com/alonzi/DAACS-Intro-to-R/blob/main/r-pac-man.jpg)

5. Remember this other thing: the `%>%` (pipe) operator takes the output of one function and passes it into another function as an argument
<img src="https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop3/FBbJQ2ZUUAwUcyw.png" width="400" height="450">
image credit @AndrewBarnas

## Exercise 1 - `arrange(...)`
We are going to use the function "arrange" on the SCV dataframe. 

Explore the output after you run lines 32 and 33.  

```
SCVSortbyPhase <- StewartCastleVillage %>%
  arrange(DAACSPhase)
  ```
  
1. What did the arrange function do to the dataset?
2. Run lines 34-35. How is the output different from the first example?
3. How does the output created in R differ from what is produced using a similar function in Excel?

### [On to Part II](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop3/Part_II.md)
