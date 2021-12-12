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

