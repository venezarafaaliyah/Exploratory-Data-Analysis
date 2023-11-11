library(gganimate)
library(ggplot2)
library(dplyr)
library(gapminder)

ggplot(data= gapminder, aes(x=gdpPercap, y=lifeExp, color=continent, size=pop)) + geom_point(alpha = 0.7)
p=ggplot(data= gapminder, aes(x=gdpPercap, y=lifeExp, color=continent, size=pop)) +
  geom_point(alpha = 0.7)+  
  labs(title = "Life Expectancy vs GDP Per Capita by Country",
       x = "Income per person (GDP / capita)",
       y = "Life expectancy (years)",
       color = "Continent",
       caption = "Source: Gapminder")
p +  transition_time(year)+
  labs(subtitle = "Year: {frame_time}")
p +
  transition_time(year)+
  labs(subtitle = "Year: {frame_time}")+
  shadow_wake(wake_length = 0.1)

library(readr)
library(tidyr)

#Panggil data
game_sales = read_csv("vgsales.csv")

#Modifikasi data
game_sales = read_csv("vgsales.csv") %>%
  mutate(Year = as.numeric(Year)) %>%
  filter(Platform == 'PS3',
         Genre %in% c("Action", "Shooter", "Sports", "Racing", "Simulation")) %>%
  drop_na() %>%
  group_by(Year, Genre) %>%
  summarise(Sales = sum(Global_Sales, na.rm = TRUE))
p=game_sales %>%
  ggplot(aes(x=Year, y=Sales, color=Genre)) +
  geom_line(size = 2, alpha = 0.75) +
  labs(title = "PS3 Video Game Sales",
       y = "Global Sales ($ Millions USD)")+
  scale_color_brewer(palette = "Pastel1") +
  geom_point()
p+ transition_reveal(Year)

p+ transition_reveal(Year)+
  view_follow(fixed_y = TRUE)

reviews = read_csv("googleplaystore.csv") %>%
  filter(Category %in% c("GAME", "SOCIAL", "PRODUCTIVITY", "TOOLS", "EDUCATION")) 
p = reviews %>%
  ggplot(aes(x=Category, y=Rating, fill=Category)) +
  geom_boxplot() +
  labs(title = "Google Play Store Ratings",
       y = "Rating (out of 5)",
       caption = "Source: Kaggle") 
p+
  transition_states(Category, wrap = FALSE)
p+
  transition_states(Category, wrap = FALSE)+
  shadow_mark(alpha = 0.5) 
p+
  transition_states(Category, wrap = FALSE)+
  shadow_mark(alpha = 0.5)+
  enter_grow()
p+
  transition_states(Category, wrap = FALSE)+
  shadow_mark(alpha = 0.5)+
  enter_grow()+
  exit_fade()+
  ease_aes('back-out')
p = reviews %>%
  ggplot(aes(x=Category, y=Rating, fill=Category)) +
  geom_violin() +
  labs(title = "Google Play Store Ratings",
       y = "Rating (out of 5)",
       caption = "Source: Kaggle") 

p+
  transition_states(Category, wrap = FALSE)+
  shadow_mark(alpha = 0.5)+
  enter_grow()+
  exit_fade()+
  ease_aes('back-out')
library(plotly) 
df <- data.frame( 
  x = c(1,2,3,4), 
  y = c(1,2,3,4), 
  f = c(1,2,3,4) 
) 
p <- ggplot(df, aes(x, y)) + geom_point(aes(frame = f)) 
fig <- ggplotly(p) 
fig
p <- ggplot(gapminder, aes(gdpPercap, lifeExp, color = continent)) + 
  geom_point(aes(size = pop, frame = year, ids = country))+
  labs(title = "Life Expectancy vs GDP Per Capita by Country",
       x = "Income per person (GDP / capita)",
       y = "Life expectancy (years)",
       color = "Continent",
       caption = "Source: Gapminder")
fig <- ggplotly(p) 
fig
fig <- fig %>% 
  animation_opts( 
    1000, easing = "elastic", redraw = FALSE 	
  ) 
fig
fig <- fig %>% 
  animation_slider( 
    currentvalue = list(prefix = "YEAR ", font = list(color="red"))) 
fig 
fig <- fig %>% 
  animation_button( 
    x = 1, xanchor = "right", y = 0, yanchor = "bottom" ) 
fig


