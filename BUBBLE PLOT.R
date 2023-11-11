library(ggplot2)
library(dplyr)


#US ARRESTS DATASET
head(USArrests)

data<-tibble(State = state.name,
             Region = state.region) %>%
  bind_cols(USArrests)

data %>%
  ggplot(aes(x=Murder,y=Assault, size=Rape)) +
  geom_point(alpha=0.6)+
  scale_size_continuous(range = c(1, 7))+
  labs(x="Murder", y="Assault", size="Rape")

data %>%
  ggplot(aes(x=Murder,y=Assault, size=Rape, color=UrbanPop, label=State)) +
  geom_point(alpha=0.6)+
  scale_size_continuous(range = c(1, 7))+
  labs(x="Murder", y="Assault", size="Rape")

Plot1 = data %>%
  ggplot(aes(x=Murder,y=Assault, size=Rape, color=UrbanPop, label=State)) +
  geom_point(alpha=0.8)+
  geom_text(aes(label = State), hjust = 0, vjust = 0)+
  scale_size_continuous(range = c(1, 7))+
  labs(x="Murder", y="Assault", size="Rape", color="UrbanPop")
Plot1

#MPG DATASET
mpg<- mpg[mpg$manufacturer %in% c("audi", "ford", "honda", "hyundai"),]
# Scatterplot
theme_set(theme_bw()) # pres-set the bw theme.
g <- ggplot(mpg, aes(displ, cty)) +
  labs(subtitle="mpg: Displacement vs City Mileage",
       title="Bubble chart")

g + geom_jitter(aes(col=manufacturer, size=hwy)) +
  geom_smooth(aes(col=manufacturer), method="lm", se=F)

Plot2 = g + geom_jitter(aes(col=manufacturer, size=hwy)) +
  geom_smooth(aes(col=manufacturer), method="lm", se=F)

Plot2
head(mpg)

#MTCARS DATASET
# Load data

data("mtcars")
df<-mtcars
df$cyl <- as.factor(df$cyl)
#make bubble plot
head(df[, c("wt", "mpg", "cyl", "qsec")], 4)
ggplot(df, aes(x=wt, y=mpg)) +
  geom_point(aes(color=cyl, size=qsec), alpha= 0.5) +
  scale_color_manual(values= c("#00AFBB", "#E7B800", "#FC4E07")) +
  scale_size(range= c(0.5, 12))

Plot3 = ggplot(df, aes(x=wt, y=mpg)) +
  geom_point(aes(color=cyl, size=qsec), alpha= 0.5) +
  scale_color_manual(values= c("#00AFBB", "#E7B800", "#FC4E07")) +
  scale_size(range= c(0.5, 12))
Plot3
