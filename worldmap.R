
library(rworldmap)
library(ggplot2)
library(dplyr)
happiness_data  <- readRDS("./data/happiness_data.rds")


map_world <- map_data(map="world")

#Add the data you want to map countries by to map.world
#In this example, I add lengths of country names plus some offset

map_world_happiness  <- map_world  %>% rename(country = region)  %>% left_join(happiness_data, by = "country") 

map_world_new  <- map_world  %>% rename(country = region) 

ggplot() +
  geom_map(data=map_world_happiness, map=map_world, aes(map_id=country, x=long, y=lat, fill=happiness), color = "black", size =0.2) +
  scale_fill_distiller(direction = 1) +
  coord_equal()
