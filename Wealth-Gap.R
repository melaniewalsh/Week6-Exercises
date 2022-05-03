# Analyzing Family Wealth & Home Ownership Over Time in the U.S.

home_owner <- read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-02-09/home_owner.csv')

race_wealth <- read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-02-09/race_wealth.csv')

library(ggplot2)

# How is average family wealth in the U.S. trending over time?

# To answer this question, we first need to filter the data for "Average" (not "Median") family wealth. Then we need to make a new dataframe from race_wealth with the average family wealth per year for all races
# Save this as `total_avg_wealth`

total_avg_wealth <- race_wealth %>% filter(type == 'Average') %>% group_by(year) %>% summarize(avg_wealth = mean(wealth_family, na.rm=TRUE))
 
# Now let's make a scatter plot of total average family wealth over time
ggplot(data = total_avg_wealth) +
  geom_point(mapping = aes(x = year, y = avg_wealth)) +
  geom_line(mapping = aes(x = year, y = avg_wealth)) 

# Now let's draw a line plot on top of the same scatterplot
ggplot()

# Let's plot family wealth over time by racial category

# Use the race_wealth dataframe and filter for only "Average" wealth `avg_race_wealth`
avg_race_wealth <- race_wealth %>% filter(type == 'Average')

# Let's make a line plot of average family wealth over time by race
ggplot(data = avg_race_wealth) +
  geom_line(mapping = aes(x = year, y = wealth_family, color = race))

# Finally, let's make a line plot of the percentage of homeowners for racial categories over time, and color by race
# Use the home_owner dataframe
ggplot(data = home_owner) +
  geom_line(mapping = aes(x = year, y = home_owner_pct, color = race))
