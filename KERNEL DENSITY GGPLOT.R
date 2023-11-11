#Kernel Densy using GGPLOT
library(dplyr)
library(ggplot2)

df = data_frame(x=c(107, 97, 99, 104, 103, 94, 102, 94, 102, 106)) 

density_estimate <- density(df$x)
mode_value <- density_estimate$x[which.max(density_estimate$y)]
mode_value

df %>% 
  ggplot(aes(x=x))+
  geom_density(bw=1, kernel='gaussian')+
  geom_rug(aes(x=x))+
  geom_vline(aes(xintercept=mode_value), linetype='dashed', color='green')+
  ggtitle('Kernel Density with Histogram of River Monsters')+
  theme_bw()


df %>% 
  ggplot(aes(x=x, fill = 'x')) + 
  geom_density(bw=1, kernel = 'gaussian') + 
  geom_rug(aes(x=x, y = 0), color = "grey",position = position_jitter(height = 0)) +
  geom_vline(aes(xintercept=mode_value),
             color="blue", linetype="dashed")+
  ggtitle('Kernel Density with Histogram of River Monsters')+
  theme_bw()