# Load tidyverse
library(tidyverse)
# Load Survivor data
confessionals <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/raw/main/Survivor-Confessionals.csv")

# Add this extra row to the dataframe by running the code below
confessionals <- confessionals %>% add_row(season = 43, episode=1, castaway='Harry Styles', confessional_count=0)

# Add a column to the confessionals dataframe called "Season_Episode" that includes the season number and episode number, like so 41-2
confessionals <-
# What *proportion* of contestants had zero confessionals in an episode for each season?

# First, we need to find the number of contestants who had no confessionals per season. Save this as `num_contestants_with_no_confessionals`
num_contestants_with_no_confessionals <-

# Next, we need to find the number of total confessionals per season. Save this as `num_confessionals_per_season`
num_confessionals_per_season <-

# Lastly, we need to join these two dataframes together and divide the number of contestants who had zero confessionals by the number of total confessionals per season. Save this as `prop_no_confessionals`
prop_no_confessionals <- 
