#Case Study Kelas Reguler
library(ggplot2)
library(dplyr)
library(tidyr)
library(lubridate)
library(gganimate)
library(gifski)
library(av)

datanew <- data %>% 
  mutate(date_confirmation = dmy(date_confirmation))

datanew %>% group_by(date_confirmation) %>% 
  summarise(count = n()) %>% 
  mutate(cuml = cumsum(count)) %>%
  datanew %>% group_by(date_confirmation) %>% 
  summarise(count = n()) %>% 
  mutate(cuml = cumsum(count)) %>% 
  ggplot(aes(x = date_confirmation, y = cuml)) +
  geom_line(color = 'red') +
  geom_point(size = 1.5) +
  geom_area(fill ='green')

ggplot(aes(x = date_confirmation, y = count)) +
  geom_line(color = 'red') +
  geom_point(size = 1.5) +
  geom_area(fill = 'orange')
transition_reveal(cuml)

new <- datanew %>% 
  group_by(day, country) %>% 
  summarise(count = n())
new %>% filter(country == 'United States' |
                 country == 'France' |
                 country == 'United Kingdom' |
                 country == 'Germany' )
new <- data.frame(complete(new, day, country,
                           fill = list(count = 0)))
new %>% filter(country == 'United States' |
                 country == 'France' |
                 country == 'United Kingdom' |
                 country == 'Germany') %>% 
  new %>% filter(country == 'United States' |
                   country == 'France' |
                   country == 'United Kingdom' |
                   country == 'Germany') %>% 
  ggplot(aes(x = day, y = count, 
             group = country,
             color = country)) +
  geom_line() +
  geom_point() 

new <- datanew %>% 
  filter(month == 2) %>% 
  group_by(day, country) %>% 
  summarise(count = n())
new <- data.frame(complete(new, day, country,
                           fill = list(count = 0)))

new %>% filter(country == 'United States' |
                 country == 'France' |
                 country == 'United Kingdom' |
                 country == 'Germany') %>% 
  ggplot(aes(x = day, y = count, 
             group = country,
             color = country)) +
  geom_line() +
  geom_point() 
transition_reveal(day)

new <- datanew %>% 
  filter(country == 'United States' |
           country == 'France' |
           country == 'United Kingdom' |
           country == 'Germany') %>% 
  filter(month == 2| month == 3) %>% 
  group_by(country, month) %>% 
  summarise(count = n()) 

p <- new %>% ggplot(aes(x = country, 
                        y = count,
                        fill = country)) +
  geom_bar(stat = 'identity') +
  geom_point(size = 1.5)
# by month
p + transition_time(as.integer(month))+
  labs(subtitle = 'Month:{frame_time}')
p <- new %>% ggplot(aes(x = country, 
                        y = count,
                        fill = country)) +
  geom_bar(stat = 'identity') +
  geom_point(size = 1.5)+ 
  scale_y_log10()
p <- new %>% ggplot(aes(x = country, 
                        y = count,
                        fill = country)) +
  geom_bar(stat = 'identity') +
  geom_point(size = 1.5)+ 
  scale_y_log10()

p + transition_states(count)+
  shadow_mark()+
  enter_grow() 


