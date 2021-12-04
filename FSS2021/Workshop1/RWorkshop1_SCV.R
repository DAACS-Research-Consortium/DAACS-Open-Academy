# RWorkshop1_SCV.R
# Created by:  JEG 23 Sept 2021
# Details: Import SCV Inventory. Summarize, filter,

#Load the libraries you need for this code. Make sure you have installed the packages.
library(RPostgreSQL)
library(dplyr)
library(tidyr)
library(reshape2)
library (plotrix)
library(ggplot2)
library(tidyverse)
library(readxl)


# 1. Get the Stewart Castle Basic Inventory#

#Import CSV, Stewart Castle Village Basic Inventory
StewartCastleVillage  <- read.csv("C:/Users/jgalle/Desktop/SCV_BasicInventory.csv", stringsAsFactors = F)

#What does the StewartCastleVillage dataframe look like? 
#str prints the structure of the dataframe in the console and allows you to check the field types, etc. This step is not required to successfully run this program.
str(StewartCastleVillage)

# 2. Summarize Stewart Castle Basic Inventory#

# Summarize all artifacts
SCVTotalArts <-  StewartCastleVillage %>% 
  summarise(TotalArtifacts = sum(Count))

# Summarize by artifact category
SCVArtCat <-  StewartCastleVillage %>% 
  group_by(ArtifactCategory) %>% 
  summarise(Count = sum(Count))

# Summarize Artifact Type
SCVArtType <-  StewartCastleVillage %>% 
  group_by(ArtifactType) %>% 
  summarise(Count = sum(Count))

# Summarize Unit Type
SCVUnitType <-  StewartCastleVillage %>% 
  group_by(UnitType) %>% 
  summarise(ArtifactCount = sum(Count))


# 3. Calculate and plot frequency of Artifact Category from Stewart Castle Village#

# Summarize ceramics by Material and Region
# the factor() function specifies the order of material classes in the plot
# we get rid of NAs
SCVArtFreq <-  StewartCastleVillage %>% 
  group_by(ArtifactCategory) %>% 
  summarise(Count = sum(Count)) %>%
  mutate(Percent = Count/sum(Count))
        

theme_set(theme_bw(base_size = 20))       
ggplot(SCVArtFreq, aes(x=ArtifactCategory, y=Percent,
                                         fill=ArtifactCategory)) +
  geom_bar(stat="identity", show.legend=F) +
  scale_fill_manual(values=c("#BBE1FA","#3282B8","#0F4C75", "blue","green",
                             "purple","red","orange", "black","green"))
