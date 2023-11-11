#boxplot 3 variables
library(ggplot2)

Toothgrowth$dose <- as.factor (ToothGrowth$dose)
str (ToothGrowth)

b <- ggplot (ToothGrowth, aes (x=dose, y=len)) + geom_boxplot()
b

ggplot(ToothGrowth, aes (x=dose, len, fill_dose)) + geom_boxplot()
ggplot (ToothGrowth, aes (x=dose, len, fill_dose)) + geom_boxplot() + scale_fill_manual (values = c ('orange1', 'dodgerblue1', 'olivedrab3'))

ggplot(ToothGrowth, aes (x=dose, len, fill = dose))+geom_boxplot() + scale_fill_brewer(palette = 'Dark2')

ggplot(ToothGrowth, aes(x=factor(dose), len, fill = dose)) + geom_boxplot() + scale_fill_grey()

ggplot(ToothGrowth, aes (x = dose, len, fill =dose)) + geom_boxplot (fill = 'lightblue', color = 'dodgerblue1')

ggplot (ToothGrowth,aes(x=dose,len))+geom_boxplot(outlier.size=3,outlier.shape = 18, outlier.colour = 'red')

ggplot (ToothGrowth, aes ( x=dose , len , fill = dose)) + geom_boxplot() + theme_minimal ()

ggplot(ToothGrowth, aes ( x=dose, len, fill = dose)) + geom_boxplot() + ggtitle("Tooth Growth in Guinea Pigs") + xlab('Vitamin C dose (mg/day)')+ ylab ("Length of odontoblast")

ggplot (ToothGrowth, aes (x=dose, len, fill = dose)) + geom_boxplot () + stat_summary (fun= mean, geom = "point", shape = 18, size = 3, color= "white")

ggplot (ToothGrowth , aes (x=dose, y =len, fill = supp)) + geom_boxplot ()