# Animated bubble chart with R and gganimate
# source: https://r-graph-gallery.com/271-ggplot2-animated-gif-chart-with-gganimate.html
# https://github.com/thomasp85/gganimate/tree/main/R

# Get data:
library(gapminder)
gapminder
View(gapminder)
 
# Charge libraries:
library(ggplot2)
library(gganimate)
 
# Make a ggplot, but add frame=year: one image per year
p <- ggplot(gapminder, aes(gdpPercap, lifeExp, size = pop, color = continent)) +
  		geom_point() +
  		scale_x_log10() +
  		theme_bw() +
  		# gganimate specific bits:
  		labs(title = 'Year: {frame_time}', x = 'GDP per capita', y = 'life expectancy') +
  		transition_time(year) +
  		ease_aes('linear')

# Save at gif:
library(gifski)
animate(p, renderer = gifski_renderer())
anim_save(filename="animated-gif-chart.gif")

