# ========== Exercise 2 ==========
#        Nobel Prize Winners
#
# Data: https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-05-14

library(ggplot2)
library(dplyr)
library(readr)

# Step 1 - Read the data from the file and take a look at the structure
nobel_winners <- read_csv("./data/nobel_winners.csv")

glimpse(nobel_winners)
# or str, or summary


# Step 2 - Create bar chart on number of nobel winners for each category


# Step 3 - Show winners by gender by mapping it to `fill` aesthethic



# Step 4 - Filter out individual laureates and save it to nobel_laureates_ind

nobel_winners_ind  <- nobel_winners  %>%
  filter(     )

# Step 5 - Plot the same graph with the dataset nobel_laureates_ind


# Step 6 - Change the order of the bars as from higher to lower

# Tip: One way of doing it is to reorder factors. To my knowledge the quickest and cleanest way would be using `fct_infreq` function that sorts factors by their frequency. You can wrap the category column directly into the function on the fly in aesthetic function.
library(forcats)





# Step 7 - Flip coordinates by adding `coord_flip()` function


# Step 8 - Fix the ordering by using fct_relevel function instead. You can get help by ?fct_relevel



# Step 9 - Place bars for different genders next to each other 

