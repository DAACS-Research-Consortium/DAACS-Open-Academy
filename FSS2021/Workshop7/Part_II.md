# Part II: Introduction to CA Basics -- With a Simple Seriation Example.

## 1. Some Geometry.
There are several different ways to understand CA and motivate the math behind it. We'll start with geometry. That means pictures!! 
- We will be using the "data" from our simulation of the frequencies of 3 types over 20 years to make our first pictures.
- We can think of the 20 rows of our data matrix (the assemblages) as points in space. The each axis of the space measures the relative frequency of one of the 3 types. So the axes represent the columns of the matrix. Three types gets us three axes. Here they are:
![](./Images/3dCoords.png) 
- Each axis represents the proportion of its type -- from 0 to 1 -- in an assemblage. So we can plot each assembage on the 3 axes. Here's what that plot looks like:
![](./Images/3dCoordsPoints.png) 
- The points are shaded according to their chronological order.
- Some questions:
  - What are the proportions for the three types in the assemblage represented by the darkest point? 
  - How about the lightest point?
  - How about a point that is medium gray?      
  - Check the *shape* and *orientation* of the point scatter... How would you describe them?
 - Here's another version of the plot, with a "special" triangle added:   
![](./Images/3dCoordsPointsSimplex.png) 
- Things to note about the shape: point scatter looks like an arch.
  - Why does this happen ?   
  - This is the hallmark of data that fit the seriation model and we will encounter it in CA.
- Things to note abou the orientation: the points all fall on the surface of the triangle. 
  - Why? Geek answer: the assemblage proportions must obey a "closed sum constraint".
  - So even though we initially plotted the data in 3 dimensions, they actually fall in a 2-d subspace (geek lingo: a simplex).
- The triangle may look familar...   
![](./Images/usdaSoilTexture.jpg)
- Here's another view of the point scatter:
![](./Images/3dCoordsPointsSimplexR.png)
- For 3 types, the assemblage points lie in a 2-d space. With only 2 dimensions, it is pretty easy to guess the chronological order by eyeballing the curved point cloud. 
- But this approach will not work if we have 10 types. Then we are dealing with a 10-1 = 9 dimensional space.
- And even with two dimensions, the geeks in the crowd will insist that we use a reproducible computational method to assign scores to the assemblages such that when we sort the assemblages on their scores, we get the chronological order. So these scores would serve the same function as MCDs. But they would not be calibrated in "years".
- CA is all about figuring out the assemblage scores. But to do that we also have to figure out a "corresponding" (get it?) set of scores for the types. And just as with MCDs, the assemblage scores in CA are proportional to weighted avarages of the types scores.  

## 2. From Higher-Dimensional Descriptions to Lower Dimensional Summaries
Let's think again about how to describe the job we want to do:
- In our example with 3 types, we have seen that the locations of the assemblage points (and the pattern of distances among them) can be completely described in 2 dimensions.  
- But what the geeks ask is for us to replace that 2-d description with a 1-d summary that would consist of a single set of scores along a new axis. We'd want a single set of scores such that when we comnpute the pattern of distances among the points on the new axis, the distances approximate -- as much as possible -- the distances in the orginal 2-d space.  
- In a case with 10 types, the geeks are asking for a 1 or maybe 2-d summary. They might let us get away with a 3-d summary, if  it turned out that 3 dimenisons were required for a good summary of the major trends in the data.
- So in all cases, we are going to a completely accurate higher-dimensional description, to a less accurate low-dimensional summary.
- But some low-dimensional summaries are better than others!! 
- To pick the best one, we need a way to measure how much variation there is in the original data. We can then compare it to how much variation is captured in the summary. We want a low-dimensional summary that captures the highest possible proportion of the variation in the original data

## 3. Measuring Distances and Variation
- Here's another picture. It will help us think about how to measure the total amount of variation in the orginal data.
![](./Images/3dCoordsPointsSimplexRMean.png)
- The red dot is the *mean* of the type proportions(geek lingo: "centroid"). We compute it by adding up counts for each of the types and dividing by the sum of the counts in all the assemblages. Here is the vector, straight from the R console: 
```
    Type1     Type2     Type3 
0.3585859 0.1555985 0.4858156 
```
- Here's how  we are going to compute our measure of total variation:
1. Compute the mean of the type proportions (the red dot). We did that! But here is the code:
```
> # the compute the mean proportions for the three types
> colProps<- colSums(simData)/ sum(simData)
> colProps
    Type1     Type2     Type3 
0.3585859 0.1555985 0.4858156 
```

2. Compute the distance from each assemblage to the red dot. The distance we use to do this in CA is called (geek lingo!) the *chi-square distance*. Here is the computation for the first row of the matrix of type proportions in each assemblage. First we chck the proportions for the first assemblage:
 ```
  propMat[1,]
     Type1      Type2      Type3 
0.61877395 0.01532567 0.36590038 
```
Get the sum of squared differences between the mean proportions (centroid) and the proportions in the first assemblage: 
```
> (propMat[1,] - colProps)^2
     Type1      Type2      Type3 
0.06769784 0.01967648 0.01437966
```
To get the *Squared chi-square distance* we square the differences, add them up, and divide by the mean proportions:
```
> squaredChi2Dist <- (propMat[1,] - colProps)^2/colProps
> squaredChi2Dist
     Type1      Type2      Type3 
0.18879116 0.12645670 0.02959901 
> colProps<- colSums(simData)/ sum(simData)
```
If we skipped the didicion stp, we dould have a *squared Euclidean distance*. It's diciving by the column means (centroidfa) that makes it a chi-squarted distance. Thoinnk back to intor stats... The guts of  the chisquared statiotsc in (O-E)   


 3. Compute a weighted sum of the distances, where the weights are the sizes of the assemblages: bigger asssemblages get more weight. This weighted sum is called (more geek lingo) the *Inertia* 
- In the next section, we use R to compute both these measures for our simple 3-type dataset.   


  



