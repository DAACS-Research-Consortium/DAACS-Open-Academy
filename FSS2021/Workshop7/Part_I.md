# Part I: Review of the Frequency-Seriation Model and MCDs 

## 1. Recall the seriation model
- Over time the relative frequencies of certain artifact types ("historical types") tend to follow a battleship-shaped curves: they start off rare, get popular, then get rare again.
- A statistical way to say this is: type frequencies follow Gaussian response functions to time.
- The date of peak popularity is the mean of the Gausssian curve for each type. So each type has its own mean.

## 2. Here's an example, simulated in R: 
- We have three types that attain maximum popularity in the following time periods (e.g. years). In our simulation, the type means are 
 *m<sub>i</sub>* = [ 2, 29, 9]. 
 	-Here *m* stands for the mean for ceramic types mi. For example, for three ceramic types, mi = [1770, 1800, 1820]. Here the subscript i tells us which type we are dealing with: m1 = 1770, m2 = 1800, m3 = 1820.
- We ask R to generate assemblages from time periods 1,2,3 … 20, according to the Gaussian response model.
- Here's what we get: 
```
Date Type1 Type2 Type3
1    323     8   191
2    360     2   209
3    344    12   234
4    350    20   235
5    293    19   276
6    295    15   286
7    270    24   302
8    226    27   297
9    195    37   292
10   162    58   299
11   114    58   291
12   100    90   270
13    93    84   265
14    66   104   199
15    51    97   211
16    32   128   176
17    24   147   174
18    15   143   136
19    13   196    92
20    11   179    86
```
And here is the battleship plot: 

![](./Images/propMat.png)

## 3. Now we pretend we are archaeologsists
- Here is what we see:

![](./Images/propMatRan.png)

## 4. MCDs  
- The MCD method says that we can infer the dates of each assemblage from this mess if we know the type means. 
- All we do is multiply the vector of 3 ware type manufacturing dates *m<sub>i</sub>* = [ 1780, 1790, 1815] by the vector of relative frequencies in each assemblage and add the products. We get a weighted average, where the weights are the type relative frequnencies. This is the MCD estimate for each assemblage. 
- Then we sort the assmblagess of the MCD estiamates to see if we see the Gaussian reponses that the model assumes. Here is the plot:

![](./Images/propMatSortedByMCD.png)

- Hooray!!
- And we can go one step further here. This is a simulation,so we KNOW the true assemblage dates. We can plot MCDs against the true dates (the time periods: 1,2,3,…20) to see how well the method works: 

![](./Images/MCDxDate.png)


## 5. MCD Problems
But what if we do not know the  means for our types?
	- We don't have the documentary data on manufacturing midpoints.
	- We are unwilling to assume that the manufacturing midpoinst apply to the local cultural tradition that generated our assemblages.

CA offers a way forward!

### [On to Part II: Introduction to CA basics -- with a simple seriation example...](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop7/Part_II.md)



