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
#  		facet_wrap(~continent) +				# Create facets by continent
		shadow_mark(alpha = 0.3, size = 0.5) +	# Show the original data as background marks
		transition_time(year) +
#		view_follow(fixed_y = TRUE) + 			# Let the view follow the data in each frame
#		shadow_wake(wake_length = 0.1, alpha = FALSE) + # Show preceding frames with gradual falloff
  		ease_aes('linear')

# Save at gif:
library(gifski)
animate(p, renderer = gifski_renderer())
anim_save(filename="animated-gif-chart-2.gif")

