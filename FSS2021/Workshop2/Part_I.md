
# Part I: Variables and Data Structures
In this part we are going to dig into some code and investigate what is going on. Along the way we will learn about variables and data structures. We will focus on Lines 15-19 in our sample code. I will guide you through the exercises.

* We will use a new R project for these exercises, please access it here: https://rstudio.cloud/project/2983017

## Exercise 1 - Variables
1. In the File left click 'SCV_BasicInventory.csv' and select "view file"
2. Explore the output that appears in editor window

3. Examine Line 18, but do not run it. Let's break it down.
`StewartCastleVillage  <- read_csv("SCV_BasicInventory.csv")`
    * 3 parts
      * the variable `StewartCastleVillage`
      * this thing `<-`
      * a function call `read_csv("SCV_BasicInventory.csv")`

4. Let's start with the function, enter the function call into the console and run it.
5. Explore the output it produces.

### Variables and this thing `<-`
In these steps we will explore the value of functions.
1. Take a look at line 18 again `StewartCastleVillage  <- read_csv("SCV_BasicInventory.csv")`
2. Run line 18
3. Enter `StewartCastleVillage` into the console and hit enter.

By comparing the function call and the variable we created you can see that we get the same result in the console. But now we have a peristent object, our variable, `StewartCastleVillage` for later use. It is not fleeting like the result of the function, you can see it in the Environment tab.

### Heuristic: The `<-` operator 'catches' the output of functions and stores them in variables.

![](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop2/Images/r-pac-man.jpg)

### A note about variable names - clarity and brevity

## Exercise 2 - Data Structures
Now that we have finished getting our data from the csv file into a variable in memory we can explore the structure of that variable.


1. Take a look at the Environment panel and expand the `StewartCastleVillage` entry. Explore
2. Click on  `StewartCastleVillage` to open it in the editor window
3. Compare the csv file and the variable in the editor (same data, easier to use)

In the next part of the exercise we will explore `StewartCastleVillage`. It is data that we have put into a structure called a data frame.

**Jargon Note:** Formally we have created a 'tibble' and it falls into a general cateogry of data structure called a data frame. To quote Hadley, "Tibbles are data frames, but they tweak some older behaviours to make life a little easier."


We are going to look at a couple functions that help to describe data frames.

1. enter `class(StewartCastleVillage)` into the console
2. enter `typeof(StewartCastleVillage)` into the console
3. enter `typeof(`StewartCastleVillage$`
    * nb: do not hit enter, look at what pops up
    * `typeof(StewartCastleVillage$Count)`
5. `length(StewartCastleVillage)`
6. `length(StewartCastleVillage$ProjectName)`




### Heuristic: A tibble is a csv file stored in memory (and it has superpowers).

&nbsp;

### ... And now for an Interlude about Domain Knowledge ...

&nbsp;


## [On to part II](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop2/Part_II.md)
