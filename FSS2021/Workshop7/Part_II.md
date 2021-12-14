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

## 2. Measuring Distances between Points and Variation in the Data
Let's think again about how to describe the job we want to do:
- In our example with 3 types, we have seen that the locations of the assemblage points can be completely described in 2 dimensions. 
- But what the geeks ask is for us to replace that 2-d desciption with a 1-d summary that would consist of a single set of scores along a new axis.
- In a case with 10 types, the geeks are asking for a 1 or maybe 2-d summary. They might let us get away with a 3-d summary, if  it turned out that 3 dismnison were required for a good summary of the major trends in the data.
- So in all cases, we are going to a completely accurate higher-dimensional description, to a less accurate low-dimensional summary.
- But some low-dimensional summaries are better than others!! 
- To pick the best one, we need a way to measure how much variation there is in the original data. We can then compare it to how much variation is captured in the summary. We want low-dimensional pictures that capture the highest proportion of the variation in the original data. 
- Here's another picture. It will help us think about how to measure the total amount of variation in the orginal data.
![](./Images/3dCoordsPointsSimplexRMean.png)
- The red dot is the *mean* of the type proportions. We compute it by adding up counts for each of the types and dividing by the sum of the counts in all the assemblages.
- Here how we are going to compute our measure of total variation:
  - Compute the mean of the type proportions (the red dot).
  - Compute the distance from each assemblage to the red dot. The distance we use to do this in CA is called (geek lingo!) the *chi-square distance*.
  - Compute a weighted sum of the distances, where the weights are the sizes of the assmblages: bigger asssemblages get more weight. This weighted sum is called (more geek lingo) the *Inertia* 
- In the next section, we use R to compute both these measures for our simple 3-type dataset.   


  



