# Part II: Reading code
In this part we will get to know the main R building blocks: Functions, Packages, Variables, and Data Structures. More importantly we will learn some R helpers, double most importantly '?'.

* Objective: Begin the work of R literacy.
* Why?: How can you program in R before you can read in R?

## Functions
In R a function is your main tool. Every function is designed to do one specific thing and hopefully has a name that makes it clear what the function does.

**For example** there is a function called 'c'. **facepalm emoji** I would argue that it is impossible to guess what that function does from its name. Let's introduce our first R helper. '?'

### Exercise 1
1. Enter `?c`
2. Read the Description from the documentation
3. Answer the question to yourself, "Did that description make me more or less confused?"
    * if you are less confused ask yourself "What does this function do?"
    * if you are more confused make a note of your new questions

### Exercise 2
Let's take a swing at a different function: sum(...)
1. Enter `sum(1,2,3,4)`
2. What does R return?
3. Is this what you expected?
4. Investigate sum, enter `?sum`

### Exercise 3: Recognizing functions in the wild
In this exercise we will attempt to do one thing. Find functions in code. Fortunately there is a feature that makes functions stick out. When you use a function it is a name followed immediately by a '('.

For Example:
* c(1,2,3)
* sum(1,2,3)
* read.csv('filename.csv')

Everytime a function is used there is a name followed by a '('

Now let's go hunting

1. We are going to look at some code but ... you have one job ... identify functions. Resist the temptation to understand what the code does.
2. Click on this link ---> [link](https://github.com/alonzi/DAACS-Intro-to-R/blob/main/RWorkshop1_SCV.R)
3. Read the code but don't try to understand anything, just identify functions. For everyone you see record the line number and the function
    * eg: line 10, library
    * eg: line 11, library
    * eg: line 29, summarise

3. Ask yourself, what percent of lines in this code have a function?


### Takeaway
* Everything you do is a function. (for the nerds: we call R programming 'functional programming').
* The key step here is recognizing a function when you see one.


## Packages (aka bundles of functions)
Packages are bundles of functions. There is more going on but for the moment a package is a bundle of functions. Also the word package is used more or less interchangably with other terms like 'library'. You can tell if some code uses a package by seeing where the package is loaded (sometimes called 'imported'). That happen's when you use the library function `library(...)`. The name of the package to load is put in the function eg: `library(RPostgreSQL)`.

### Exercise 4
In this exercise we will make a list of all the packages used in our example code.

1. Click on this link ---> [link](https://github.com/alonzi/DAACS-Intro-to-R/blob/main/RWorkshop1_SCV.R) (n.b.: it is the same link as the previous exercise)
2. Write down all of the libraries that are loaded in this code.



Answer: 
* library(RPostgreSQL)
* library(dplyr)
* library(tidyr)
* library(reshape2)
* library (plotrix)
* library(ggplot2)
* library(tidyverse)
* library(readxl)



### Exercise 5
The goal of this exercise is to figure out what this code does.

1. Take a look at the package names and use your helper '?'
2. Now describe what this code does.


### Exercise 6: installing
From time to time your installation of R will not know about a package. For instance one time mine didn't know about 'ca'

When I put in `?ca` i got this ---> `No documentation for ‘ca’ in specified packages and libraries`

If that is the case you need to install the package, this is different from loading it. Using a package is a two step process. And to do both steps we use ..... that's right functions.

1. install.packages('ca')
2. library(ca)




### Takeaway
The whole reason we use R is for the packages. Before you try to understand code, understand the packages it uses, that will give great insight into what the code is about.


## [On to part III](https://github.com/alonzi/DAACS-Intro-to-R/blob/main/part-III.md)

## Bonus Material
We will take a couple quick polls using the zoom tools. And that will show if we want to hit the following two points.

### Mini rant time
So in the first place we use `install.packages`, but then to load we use `library` and also the first time we put the name of the package in quotes? But the good news is we could have used the quotes inside of library. So that's cool but we can't not use the quotes inside of install.packages? I give up.

### Jargon Corner -- BaseR vs TidyR
Sometimes you may hear people talk about different parts of the R universe. The term 'BaseR' refers to everything that comes with R. You may have noticed in the documentation for `c` and `sum` that is said it came from `base`. Another major part is called the **tidyverse**. WoooooOOOOOooooOOOOOO. There is a movement in the R world that introduced the concept of data being 'tidy' and there is a whole pile of tools for helping you to do just that. You may recall one of the libraries we saw in our example code was called `tidyr`. If you punch in `?tidyr` you will see more. I have many thoughts about this approach and it is not always wise, but they are the folks behing RStudio so it's cool.

