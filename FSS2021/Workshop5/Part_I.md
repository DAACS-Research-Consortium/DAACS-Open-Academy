# MCDs and the Model Behind Them
## What is an MCD?
1. A weighted averaged of dates. The dates are estimates of the midpoints of the span of time over which each ceramic type found in an assmblage was manufactured. The weights are frequencies of each type in the assemblage -- more popular types get more weight.  
2. The ingredients:
    - A set of midpoints for the types *m<sub>i</sub>*. For example, for three types,*m<sub>i</sub>* = [1770, 1800, 1820]. Here the subscript *i* tells us which type we are dealing with: *m<sub>1</sub>* = 1770, *m<sub>2</sub>* = 1800, *m<sub>3</sub>* = 1820.     
    - A set of counts for the types  *x<sub>i</sub>*. For example, for the same three types,  *x<sub>i</sub>* = [21, 17, 36].
3. The algorithm:
    - Multiply the type midpoints by theer corresponding counts.
    - Add up the products.
    - Divide the sume of products by the sum of the counts.
4. Here it is in R:
    -    
   
