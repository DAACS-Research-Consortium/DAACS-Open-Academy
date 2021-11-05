## Important Links
Project for today in RStudio Cloud: https://rstudio.cloud/project/3112286

## Quick Review
1. Open the code. You will find it in "Files", lower right hand corner.
2. Load Packages.
3. Import CSV
4. Open the dataframe. You will find it in "Global Environment", upper right hand corner.
5. Remember this thing: the `<-` operator 'catches' the output of functions and stores them in variables.

![](https://github.com/alonzi/DAACS-Intro-to-R/blob/main/r-pac-man.jpg)

6. Remember this other thing: the `%>%` (pipe) operator takes the output of one function and passes it into another function as an argument
<img src="https://images-na.ssl-images-amazon.com/images/I/413f-p1yjTL.jpg" width="400" height="450">

## Exercise 1 - `select(...)`
We use the function "select" on the MessyData data frame to select only the variables we want. 

Explore the output after you run lines 35 and 36.  

```
MDStreamlined <- MessyData %>%
  select(Site, Unit, Feature, Count, ArtifactType, Decoration)
  ```
  
1. What does the new dataframe look like?
2. Run lines 48-49. How is the output different from the first example?
3. Notice how you can use select to easily rearrange the order of your variables.

### [On to Part III](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/FSS2021/Workshop4/Part_III.md)

