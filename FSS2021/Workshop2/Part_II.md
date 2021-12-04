# Part II: Using code to accomplish a task
In this part we will explore Lines 21-66 in the sample code (and maybe more). In these lines the DAACS team performs common analysis techniques including summarising and graphing.

## Exercise 1 - `summarise(...)`
In this exercise we look at L34-35 and the `summarise` function
1. Run Line 34
2. Explore the result (a new variable named `SCVTotalArts`)
3. Breakdown how the `summarise(...)` function works
    * find the documentation using google
    * https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/summarise


## Exercise 2 - `group_by(...)`
Now we explore grouping in our dataset. Warning: This is tricky.
1. Run Line 39
2. Explore the result (a new variable named `SCVArtCat`)
3. Compare `SCVArtCat` and `SCVTotalArts`
4. Compare sum(SCVArtCat$Count) and `SCVTotalArts`

## Exercise 3 - `ggplot(...)`
Finally we will make a plot to show our data. This is very complicated so we are going to break it down piece by piece.
1. Goto line 49 and follow along

## Wrap up Q&A
