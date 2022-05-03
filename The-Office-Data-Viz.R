#### Making Data Visualizations with The Office

# Install schrute package and ggplot2
install.packages("schrute")
install.packages("ggplot2")

# Load schrute package, dplyr, and ggplot2
library("schrute")
library("dplyr")
library("ggplot2")

# Load The Office data
office_df <- theoffice

# What is the episode with the highest IMDB rating in the dataset?
# Filter the data and save the row(s) as highest_rating_rows
Your code here

# Which season of The Office was the best?
# Calculate the average IMDB rating for each season
# Save as rating_per_season
Your code here

# Now plot the average IMDB rating for each season as a scatterplot, a line plot, and a bar plot
# Which do you think is the best representation of this data?
Your code here

# If you want to make the x axis of the plot above have whole numbers, you can install and load the "scales" package and add the line of code below
#install.packages("scales")
#library("scales")
# + scale_x_continuous(breaks = pretty_breaks())

# Which character speaks the most?
# Calculate the total number of lines spoken by each character for the entire series
total_lines_per_character <- office_df %>%
  # Group by character
  Your code here
  # Calculate number of rows (aka lines spoken) in each group with n()
  Your code here %>%
  # Slice for top 10 values by total_lines
  slice_max(n = 10, order_by = total_lines)

# Make a bar plot of this data
Your code here
