# Wrangling Data for W9 Homework

# Libraries
library(tidyverse)
library(readr)

# Load Data
sep_loc <- read_csv("Desktop/FIT3179/Visualisation II/Data/sep_loc.csv")

# Create Summary

map_data <- sep_loc |> 
  group_by(location) |> 
  summarise(no_conflicts = n(),
            avg_intensity = round(mean(intensity_level), 2),
            avg_duration = round(mean(duration),0),
            start_year = min(year),
            end_year = max(year))

# Write csv file

write_csv(map_data, "Desktop/FIT3179/Homework/Homework W9/Data/map_data.csv")
