# RWorkshop2_SCV.R
# Created by: JEG 6 October 2021
# Details: Import Stewart Castle Village (SCV) Inventory. Summarize, filter, 
# and plot.

# Load the libraries you need for this code. Make sure you have installed the 
# packages.

library(tidyverse) # Note: this package contains multiple Tidyverse packages in 
                   # one. See: https://www.tidyverse.org/packages/

library(RColorBrewer) # This package provide color palettes for plot. It is 
                      # especially useful when you have many data points.

#### 1. Get the Stewart Castle Basic Inventory ####

# Import CSV, SCV_BasicInventory.csv
StewartCastleVillage  <- read_csv("SCV_BasicInventory.csv")

# What does the SCV data frame look like? 

str(StewartCastleVillage) # str prints the structure of the data frame in the 
                          # console and allows you to check the field types, etc. 
                          # This step is not required to successfully run this 
                          # program.
 
head(StewartCastleVillage) # head prints top 6 rows, including header row with 
                           # variables names, of the data frame. This step is 
                           # not required to successfully run this program.


#### 2. Summarize all artifacts to get a single total. ####

SCVTotalArts <-  StewartCastleVillage %>% 
  summarise(TotalArtifacts = sum(Count))

#### 3. Summarize, list and plot by Artifact Category ####

SCVArtCat <-  StewartCastleVillage %>% 
  group_by(ArtifactCategory) %>%  # group by tells you which variable to. 
                                  # summarize by.
  summarise(Count = sum(Count))   # this specifies the field you want 
                                  # summarized and what to call that field.

list(SCVArtCat) # Prints a list (tibble) in console.

# Plot

theme_set(theme_bw(base_size = 10)) # this sets the background theme of the plot
                                    # (black out, gray grid lines) and base font 
                                    # size.        

ggplot(SCVArtCat, aes(x=ArtifactCategory, y=Count, # here you specify the data 
                                                   # set and the x and y axes by
                                                   # variable name.
                       fill=ArtifactCategory)) +   # you need to specify which 
                                                   # variable is filled.
  geom_bar(stat="identity", show.legend=F) + # geom= the geometric object used 
                                             # to display the data. In this 
                                             # case, bars.
  scale_fill_brewer(type = "seq", palette = "Paired", direction = 1,
    aesthetics = "fill") # I choose a 10 + color ramp from Color Brewer so that I
                         # did not have to pick 10 individual colors
                         # https://ggplot2.tidyverse.org/reference/scale_brewer.html

#### 4. Summarize, list and plot by Artifact Type ####

# Summarize Artifact Type
SCVArtType <-  StewartCastleVillage %>% 
  group_by(ArtifactType) %>% 
  summarise(Count = sum(Count))

list(SCVArtType) 

# Plot

theme_set(theme_bw(base_size = 10)) 

ggplot(SCVArtType, aes(x=ArtifactType, y=Count, 
                      fill=ArtifactType)) +   
  geom_bar(stat="identity", show.legend=F) +
  scale_fill_brewer(type = "seq", palette = "Paired", direction = 1,
                    aesthetics = "fill") # Notice the error. Too many data points,
                                         # Not enough colors in "Paired" palette!

# Let's try again. 
nb.cols <- 182 # Define the number of colors you need.
mycolors <- colorRampPalette(brewer.pal(12, "Paired"))(nb.cols)

ggplot(SCVArtType, aes(x=ArtifactType, y=Count, 
                       fill=ArtifactType)) +   
  geom_bar(stat="identity", show.legend=F) +
  scale_fill_manual(values=mycolors) 

# Note: The above example still produces a illegible plot. Demonstrates data
# exploration and the need to rethink what you are plotting.


#### 5. Summarize, list and plot by Unit Type ####

# Summarize Unit Type
SCVUnitType <-  StewartCastleVillage %>% 
  group_by(UnitType) %>% 
  summarise(ArtifactCount = sum(Count))

list(SCVUnitType) 

# Plot

theme_set(theme_bw(base_size = 20)) #Note, increased base font size.

ggplot(SCVUnitType, aes(x=UnitType, y=ArtifactCount, 
                       fill=UnitType)) +   
  geom_bar(stat="identity", show.legend=F) +
  scale_fill_manual(values=c("blue","green")) #Choose color fill manually

#### 6. Calculate and plot frequency of Artifact Category ####

# Calculate percent of artifact categories at SCV

SCVArtFreq <-  StewartCastleVillage %>%  # Identify the dataset
  group_by(ArtifactCategory) %>%         # Specify the variable you group_by
  summarise(Count = sum(Count)) %>%      # Summarize to get total count
  mutate(Percent = Count/sum(Count))     # Use mutate function to calculate the
                                         # Percent

# Plot

theme_set(theme_bw(base_size = 20))       
ggplot(SCVArtFreq, aes(x=ArtifactCategory, y=Percent,
                       fill=ArtifactCategory)) +
  geom_bar(stat="identity", show.legend=F) +
  scale_fill_brewer(type = "seq", palette = "Paired", direction = 1,
                    aesthetics = "fill")+
  theme(axis.text.x = element_text(angle = 45, hjust=1)) # Here I fix a problem
      # I had earlier: overlapping axis labels.  This code turns the
      # to a 45 degree angle and uses "hjust" to place the X axis text below
      # the plot. Without the hjust, the labels print over the plot.
