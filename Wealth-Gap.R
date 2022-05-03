# Analyzing Family Wealth & Home Ownership Over Time in the U.S.

home_owner <- read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-02-09/home_owner.csv')

race_wealth <- read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-02-09/race_wealth.csv')

library(ggplot2)

# How is average family wealth in the U.S. trending over time?

# To answer this question, we first need to filter the data for "Average" (not "Median") family wealth. Then we need to make a new dataframe from race_wealth with the average family wealth per year for all races
# Save this as `total_avg_wealth`

Your code here

# Now let's make a scatter plot of total average family wealth over time

Your code here

# Now let's draw a line plot on top of the same scatterplot

Your code here

# Let's plot family wealth over time by racial category

# Use the race_wealth dataframe and filter for only "Average" wealth `avg_race_wealth`

Your code here

# Let's make a line plot of average family wealth over time by race

Your code here

# Finally, let's make a line plot of the percentage of homeowners for racial categories over time, and color by race
# Use the home_owner dataframe

Your code here
