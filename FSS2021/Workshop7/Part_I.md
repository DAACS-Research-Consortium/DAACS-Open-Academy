# Part I: Review of the Frequency-Seriation Model and MCDs 

## 1. Recall the seriation model
- Over time the relative frequencies of  certain artifact types ("historical types") tend to follow a battleship-shaped curves: they start off rare, get popular, then get rare again.
- A statistical way to say this is: type frequencies follow Gaussian response functions to time.
- The date of peak popularity is the mean of the Gausssian curve for each type. So each type has its own mean.

## 2. Here's an example, simulated in R: 
- We have three types that attain maximum popularity in the following time periods (e.g. years). In our simulation, the type means are 
 *m<sub>i</sub>* = [ 2, 29, 9]. 
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
