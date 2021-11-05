## Important Links
Project for today in RStudio Cloud: https://rstudio.cloud/project/3112286

## Quick Review
1. Open the code. You will find it in "Files", lower right hand corner.
2. Load Packages.
3. Import CSV
4. Open the dataframe. You will find it in "Global Environment", upper right hand corner.

6. Remember this thing: the `<-` operator 'catches' the output of functions and stores them in variables.

![](https://github.com/alonzi/DAACS-Intro-to-R/blob/main/r-pac-man.jpg)

5. Remember this other thing: the `%>%` (pipe) operator takes the output of one function and passes it into another function as an argument
<img src="https://images-na.ssl-images-amazon.com/images/I/413f-p1yjTL.jpg" width="400" height="450">
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

