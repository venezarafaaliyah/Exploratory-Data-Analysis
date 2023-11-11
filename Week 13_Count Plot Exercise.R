# load package and data
library(ggplot2)
library(tidyverse)
install.packages('tidyverse')
# load data
data(mpg)
?mpg
str(mpg)

# pre-set the bw theme.
theme_set(theme_bw()) 

# Count Plot basic with mpg dataset and cty as x-axis & hwy as y-axis
ggplot(data = mpg, aes(x=cty, y=hwy))+
  geom_count()

# Add "Counts Plot as title and mpg: city vs highway mileage as subtitle
ggplot(data = mpg, aes(x=cty, y=hwy) )+
  geom_count(show.legend=FALSE) +
  labs(title='Counts Plot',
       x='city',
       y='hwy',
       subtitle='mpg : city vs highway mileage')

#Change the plot color 
ggplot(data = mpg, aes(x=cty, y=hwy) )+
  geom_count(aes(color='dark red') ) +
  labs(title='Counts Plot',
       x='city',
       y='hwy',
       subtitle='mpg : city vs highway mileage' )

# Change Count Plot with gradation color
ggplot(data = mpg, aes(x=cty, y=hwy)) +
  geom_count(aes(color='dark red'), show.legend=FALSE) +
  #guides(color = 'legend') +
  labs(title='Counts Plot',
       x='city',
       y='hwy',
       subtitle='mpg : city vs highway mileage' )

# Change Count Plot with color in each respected manufacturer
ggplot(data = mpg, aes(x=cty, y=hwy)) +
  geom_count(aes(color=..n..,size=..n..)) +
  labs(title='Counts Plot',
       x='city',
       y='hwy',
       subtitle='mpg : city vs highway mileage')

# Add regression line
ggplot(data = mpg, aes(x=cty, y=hwy) ) + 
  geom_count(aes(color=manufacturer)) +     # Add count geom (see ?geom_count)
  geom_smooth(method="lm", se=FALSE) +
  labs(title='Counts Plot',
       x='city',
       y='hwy',
       subtitle='mpg : city vs highway mileage')

# Another fancier example
ggplot(data = mpg, aes(x=cty, y=hwy) ) + 
  geom_count(aes(color=manufacturer)) +     # Add count geom (see ?geom_count)
  geom_smooth(method="lm", se=FALSE) +                   # smoothed line without confidence interval
  geom_text(data = filter(mpg, cty > 25), 
            aes(x = cty,y = hwy, 
                label = rownames(filter(mpg, cty > 25))),
            position = position_nudge(y = -1), 
            check_overlap = TRUE, 
            size = 5) + 
  labs(x = "City miles per gallon", 
       y = "Highway miles per gallon",
       title = "City and Highway miles per gallon", 
       subtitle = "Numbers indicate cars with highway mpg > 25",
       caption = "Source: mpg data in ggplot2",
       color = "Manufacturer", 
       size = "Counts") +
  theme_bw()

