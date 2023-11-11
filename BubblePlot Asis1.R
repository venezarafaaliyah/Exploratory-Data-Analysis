library(ggplot)
library(dplyr)
library(plotly)

head(USArrests)

data<-tibble(State=state.name,
              Region=state.region)%>% bind_cols(USArrests)

data %>%
  ggplot(aes(x=murder,y=Assault, size=Rape))+
  geop_point(alpha=0.6)+
  scale_size_continous(range=c(1,7))+
  labs(x="Murder", y="Assault", size = "Rape")

data %>%
  ggplot(aes(x=murder,y=Assault, size=Rape, color=UrbanPop,label=State))+
  geop_point(alpha=0.6)+
  scale_size_continous(range=c(1,7))+
  labs(x="Murder", y="Assault", size = "Rape") 

?USArrests
plot1= data %>%
  ggplot(aes(x=murder,y=Assault, size=Rape, color=UrbanPop,label=State))+
  geop_point(alpha=0.6)+
  geom_point(alpha=0.8)+
  geom_text(aes(label=State), hjust=0, vjust=0)+
  scale_size_continous(range=c(1.7))+
  labs(x="Murder", y="Assault", size="Rape", color=UrbanPop)
plot1

mpg<- mpg[mpg$manufacturer %in% c("audi","ford", "honda", "hyundai"),]

theme_set(theme_bw())
g <- ggplot(mpg, aes(disp,cty))+
  labs(subtitle+"mpg: Displacement vs City Mileage",
       title="Bubble Chart")
g+geom_jitter(aes(col=manufacturer, size=hwy))+
  geom_smoth(aes(col=manufacturer), method="lm", se=F)
g

Plot2 = g + geom_jitter(aes(col=manufacturer, size=hwy))+
  geom_smooth(aes(col=manufacturer), method="lm",se=F)
Plot2
head(mpg)
?mpg

data("mtcars")
df <- mtcars

df$cyl <- as.factor(df$cyl)

?mtcars

head(df[, c("mt","mpg", "cyl", "qsec")], 4)
ggplot(df,aes(x=wt, y=mpg))+
  geom_point(aes(color=cyl, size=qsec), alpha=0.5)+
  scael_color_manual(values=c("#00AFBB", "#E7B800", "#FC4E07"))+
  scale_size(range=c(0.5, 12))

plot3=ggplot(df, aes(x=wt, y=mpg))+
  geom_point(aes(color=cyl, size=qsec), alpha = 0.5) +
  scale_color_manual(values=c("#00AFBB", "#E7B800", "#FC4E07"))+
  scale_size(range=c(0.5, 12))
plot3

                          

