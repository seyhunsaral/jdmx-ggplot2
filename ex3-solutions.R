# ========== Exercise 3 ==========
# Recreate the graph shown in the slides.
# Nobel winners data should be already on your workspace. Add if necessary.

# Step 1 - Create the average age (atomic) vector
average_age  <- mean(nobel_winners$age_awarded, na.rm = TRUE)

# Step 2 - Create the summary for each category
nobel_winners_summary  <- nobel_winners %>%
  group_by(category)  %>%
  summarise( mean_age_awarded = mean(age_awarded, na.rm = TRUE))  %>%
  arrange(mean_age_awarded)

# Step 3 - Create the ggplot2 with layers

# Tip - You can use the library ggrepel for a better text placement

# Step 4 - Add theme_economist() to your plot

library(ggrepel)
library(ggthemes)


ggplot(nobel_winners, aes(y = category, x = age_awarded, color = category))+
    geom_vline( xintercept = mean(nobel_winners$age_awarded, na.rm = TRUE), color = "gray20", linetype = "dashed") +
    geom_jitter(alpha = 0.3, width = 0.0, height = 0.1, size = 2) +
    geom_point(data = nobel_winners_summary,
               aes(x =mean_age_awarded), size = 10) +
    geom_text_repel(aes(label = full_name), data = filter(nobel_winners, age_awarded == min(nobel_winners$age_awarded, na.rm = TRUE) | age_awarded == max(nobel_winners$age_awarded, na.rm = TRUE)), color = "black") +
 theme_economist() +
 guides(fill=FALSE, color = FALSE)

## Note: Further improvements are left to the participants




