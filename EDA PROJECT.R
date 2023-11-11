library(tidyverse)
library(readr)
library(dplyr)
library(corrplot)
library(ggcorrplot)
library(MASS)
library(rpart)
library(class)
library(GGally)
library(gridExtra)
library(extrafont)
library(ggthemes)
library(Rmisc)

data<- read.csv("C:/Users/ACER/Downloads/heart (1).csv")
df<- na.omit(data)
head(df)
str(df)

df$sex <- as.factor(df$sex)
df$cp <- as.factor(df$cp)
df$fbs <- as.factor(df$fbs)
df$restecg <- as.factor(df$restecg)
df$exang <- as.factor(df$exang)
df$slope <- as.factor(df$slope)
df$ca <- as.factor(df$ca)
df$thal <- as.factor(df$thal)
df$target <- as.factor(df$target)
str(df)

corrplot(cor(df[,c(1,4,5,8,10)]),type="lower", method="number")

g_age_chol <- ggplot(df,aes(x=age,y=chol,size=chol))+
  geom_point(aes(col=taret))+
  geom_smooth(method="lm", se=FALSE)+
  scale_x_continous(name="Age")+
  scale_y_continous(name="Chol Level")+
  theme_economist_white(gray_bg=FALSE)+
  ggtitle("Age & Cholestrol")+
  theme(plot.title=element_text(hjust=0.5))

g_age_maxhr <- ggplot(df, aes(x=age, y=thalach, size=thalach))+
  geom_point(aes(col=target))+
  geom_smooth(method="Im", se=FALSE)+
  scale_x_continous(name="Age")+
  scale_y_continous(name="Max heart rate")+
  theme_economist_white(gray_bg=FALSE)+
  ggtitle("Age & Max Heart Rate")+
  theme(plot.title = element_text(hjust=0.5))

ggplot(df, aes(x=age, y=chol, color=sex, size=chol))+
  geom_point(alpha=0.7)+xlab("Age")+
  ylab("Cholestrol")+
  guides(fill=guide_legend(title="Gender"))

ggplot(df,aes(target, fill=target))+
  geom_bar(stats="count")+
  guides(fill=F)+
  labs(x="Target",y="count",caption="0= no heart disease, 1 =heart disease")+
  theme_economist_white(gray_bg=FALSE)+
  theme(plot.caption= element_text(hjust=0.5))+
  ggtitle("Total Target")+
  theme(plot.title=element_text(hjust=0.5))

summary(df$age)
g1 <- ggplot(df, aes(x=sex,y=age, fill= sex))+
  geom_boxplot()+
  theme_economist_white(gray_bg = FALSE)+
  labs(x="Sex", caption = " 0 = female 1 = male", fill = " sex ")+
  theme(plot.caption=element_text(hjust=0.5))

g2 <- ggplot(df,aes(sex, fill=sex))+
  geom_bar()+
  theme_economist_white(gray_bg=FALSE)+
  labs(x="sex", fill="sex")

g3 <- ggplot (df, aes(age, col=target, fill= target))+
  geom_density(alpha=0.2)+
  theme_economist_white(gray_bg=FALSE)+
  guides(col=F)+
  labs(fill="Target", x="Age")

g4 <- ggplot(df,aes(x=target, y=age, fill=target))+
  geom_boxplot()+
  theme_economist_white(gray_bg=FALSE)+
  labs(y="Age",x="Target", fill="Target")
gr
multiplot(g3, g4, cols=2)
grid.arrange(g2, g1, nrow = 1)

g1 <- ggplot(df, aes(trestbps, col=target, fill=target))+
  geom_density(alpha=0.2)+
  theme_economist_white(gray_bg=FALSE)+
  guides(col=F)+
  labs(fill="Target", x="Resting Blood Pressure", y="")

g2 <- ggplot(df,aes(target,trestbps,fill=target))+
  geom_boxplot()+
  labs(y="Resting Blood Pressure", x= "Target", fill="Target")+
  theme_economist_white(gray_bg=FALSE)

grid.arrange

g1 <- ggplot(df,aes(cp,fill=target))+
  geom_bar(stat="count", position="fill")+
  theme_economist_white(gray_bg=FALSE)+
  labs(x="Chest Pain Type", fill="Target", y="stacked count", caption = "value 0 : typical angina 
       Value 1 : atypical angina
       Value 2 : non-anginal pain
       Value 3 : assymptomatice")

g1 <- ggplot(df,aes(thalach, col=target, fill=target))+
  geom_density(alpha=0.2)+
  guides(col=F)+
  labs(fill="Target", x="Maximum heart rate achieved")+
  tehme_economist_white(gray_bg=FALSE)

g2 <- ggplot(df,aes(target, thalach, fill=target))+
  geom_boxplot()+
  labs(y="Maximum Heart Rate Achieved", x="Target", fill="Target")+
  theme_economist_white(gray_bg=FALSE)
grid.arrange(g2, g1, nrow = 1)