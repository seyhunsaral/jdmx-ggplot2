# ========== Exercise 2 ==========
#        Nobel Prize Winners
#
# Data: https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-05-14

library(ggplot2)
library(dplyr)
library(readr)

# Step 1 - Read the data from the file and take a look at the structure
nobel_winners <- read_csv("./data/nobel_winners.csv")

glimpse(   )
# or str, or summary


# Step 2 - Create bar chart on number of nobel winners for each category



# Step 3 - Show winners by gender by mapping it to `fill` aesthethic to the 



# Step 4 - Filter out individual laureates and save it to nobel_laureates_ind

nobel_winners_ind  <- nobel_winners  %>%
  filter(    )

# Step 5 - Plot the same graph with the dataset nobel_laureates_ind




nobel_winners  %>% summarise( mean = mean(age_awarded, na.rm = TRUE), min = min(age_awarded, na.rm = TRUE), max = max(age_awarded, na.rm = TRUE))  


nobel_winners  <- nobel_winners  %>% mutate( category = factor(category, levels = nobel_winners_summary$category))
nobel_winners_summary  <- nobel_winners_summary  %>% mutate( category = factor(category, levels = nobel_winners_summary$category))

ggplot(nobel_winners, aes(x = category, y = age_awarded, color = category))+
      geom_hline( yintercept = mean(nobel_winners$age_awarded, na.rm = TRUE), color = "gray20", linetype = "dashed") +
geom_jitter(alpha = 0.3, width = 0.1, height = 0, size = 2) +
  geom_point(data = nobel_winners_summary, aes(y = mean_age_awarded, fill = category), color = "black", size = 10, pch=21, alpha = 0.9) +
    geom_text_repel(data = filter(nobel_winners, age_awarded == min(nobel_winners$age_awarded, na.rm = TRUE) | age_awarded == max(nobel_winners$age_awarded, na.rm = TRUE)), aes(label = full_name),
                  color = "black",
                  xlim = c(4.5,5.5),
                  arrow = arrow(length = unit(0.03, "npc"))) +
#  geom_line(ylim = 40) +
    labs(title = "Nobel Prize winners by age and discipline",
         subtitle = "The age of prize winners at the time they won the prize",
         y = "Age awarded", x = "") +
  theme_economist() +
  theme(panel.grid.major.y = element_blank(),
        panel.grid.major.x = element_line ( size = .5)) +  
  guides(fill = FALSE, color = FALSE) +
  scale_y_continuous( limits = c(15,90), breaks = seq(10,90,10)) +
  annotate("text", x = 7.2, y = 28, label = "Average of all disciplines") +
  geom_curve(x = 7, y = 30, xend = 6.7, yend = 58, curvature = 0.2, size = 0.3, color = "black", arrow = arrow(length = unit(0.03, "npc"))) +
  annotate("text", x = 7.5, y = 28, label="")  # this is a trick to expand the space on the top: 
  #coord_flip() 

  nobel_winners  %>% group_by(category)  %>% arrange(age_awarded)  %>% filter(row_number()  == 1)  %>% select(full_name, category)



