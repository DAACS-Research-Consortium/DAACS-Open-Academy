# Part II: Introduction to CA Basics -- With a Simple Seriation Example.

## 1. CA from Geometric Perspective.
- There are several different ways to understand CA and motivate the math behind it. We'll start with geometry. 
- We can think of the rows of our data table (the assemblages) as points in space. The each axis of the space measures the relative frequency of a type. So the axes represent the columns. In our MCD example, we had three types. So there are three axes. Here they are:
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
- Note how the points all fall on the surface of the triangle. Why? Geek answer: the assemblage proportions must obey a "closed sum constraint".
  - So even though we initially plotted the data in 3 dimensions, they actually fal in a 2-d subspace (geek terms: a simplex)
- Note also how the point scatter looks like an arch. This is the hallmark of data that fit the seriation model.
- Here's another view of the point scatter:
![](./Images/3dCoordsPointsSimplexR.png)
