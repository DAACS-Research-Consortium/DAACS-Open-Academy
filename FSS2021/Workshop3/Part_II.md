## Exercise 2 -- `ggplot` the grammar of graphics

ggplot is powerful package (loads as part of the tidyverse package) because it gives you *a lot* of control over the asthetics of your graphics using a concept called layering.
You can learn more about the underlying philsophy and details of ggplot here: https://ggplot2.tidyverse.org/
```
theme_set(theme_bw(base_size = 10)) # this sets the background theme of the plot
# (black out, gray grid lines) and base font 
# size.  
ggplot(SCVArtCat, aes(x=ArtifactCategory, y=Count, 
                      fill=ArtifactCategory)) +   
  geom_bar(stat="identity", show.legend=F) 
  scale_fill_brewer(type = "seq", palette = "Paired", direction = 1,
                    aesthetics = "fill") # I choose a 10 + color ramp from Color Brewer so that I
```

Important functions to understand that are part of the ggplot package
* `theme_set` -- theme of the plot -- allows you to adjust the background, presence/absence of grid lines, etc.
* `aes`  -- asethetics of plot -- you provide the dataframe and variables you want to plot
* `geom` -- type of plot -- options: bar, line, point, histogram
* `scale_fill_brewer` -- allows you to set fill colors

## Exercise 3 -- `Filtering(...)`

Next we wanted to plot a summary of artifact types, but we have too many options.  The plot is illegible.

So let's filter by Category so we can look at different types.

We can either create a separate dataframe by filtering 

```
#Filter Artifact Type
SCVButtons <-  StewartCastleVillage %>% 
  filter(ArtifactCategory == 'Button')
  
SCVButtonsGrouped<-SCVButtons %>% 
  group_by(ArtifactType) %>%
  summarise(Count = sum(Count))

OR

#Group by, Filter, Summarize By Buttons
SCVButtons2 <-  StewartCastleVillage %>% 
  group_by(ArtifactType) %>%
  filter(ArtifactCategory == 'Button') %>%
  summarise(Count = sum(Count))

```
#[Up next -- Mutate](https://github.com/DAACS-Research-Consortium/DAACS-Open-Academy/blob/main/FSS2021/Workshop3/Part_III.md)
