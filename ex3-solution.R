# ========== Exercise 1 ==========
#        Sorting Factors
#
# Data: World Happiness Report 2018


# load the ggplot2 library
library(ggplot2)
library(dplyr)
library(forcats)

# load the data
happiness_data  <- readRDS("./data/happiness_data.rds")

happiness_data  %>%
  filter(happiness > 7.3 | happiness < 3.6)  %>%
 mutate(country = fct_reorder(country, happiness))  %>% 
ggplot(aes(y = happiness, x = country)) +
  geom_bar(stat = "identity", fill = "darkblue") #+
#  geom_point(size = 4) +
#  coord_flip()
  
