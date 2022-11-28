library(modeest)
cereal<-read.csv("D:\\DATA SCIENCE\\DESCRIPTIVE ANALYSIS\\cereal.csv")
View(cereal)
str(cereal)

#MEAN

Calmean<-mean(cereal$calories)
print(Calmean)
Promean<-mean(cereal$protein)
print(Promean)
Fatmean<-mean(cereal$fat)
print(Fatmean)
Fibremean<-mean(cereal$fiber)
print(Fibremean)

#MEDIAN  

Sodmed<-median(cereal$sodium)
print(Sodmed)
Vitmed<-median(cereal$vitamins)
print(Vitmed)
Weightmed<-median(cereal$weight)
print(Weightmed)
Fibmed<-median(cereal$fiber)
print(Fibmed)

#MODE

Fatmod<-mfv(cereal$fat)
print(Fatmod)
Vitmod<-mfv(cereal$vitamins)
print(Vitmod)
Fibmod<-mfv(cereal$fiber)
print(Fibmod)
Calmod<-mfv(cereal$calories)
print(Calmod)


#STANDARD DEVIATION

Prosd<-sd(cereal$protein)
print(Prosd)
Sugsd<-sd(cereal$sugars)
print(Sugsd)
Carbosd<-sd(cereal$carbo)
print(Carbosd)


#VARIANCE

Potvar<-var(cereal$potass)
print(Potvar)
Fatvar<-var(cereal$fat)
print(Fatvar)


#RANGE


Sodrar<-max(cereal$sodium)-min(Starbucks$Calories)
print(Sodrar)
Calar<-max(cereal$calories)-min(cereal$calories)
print(Calrar)

#SKEWNESS & KURTOSIS

library(moments)
Starbucks<-read.csv("D:\\DATA SCIENCE\\DESCRIPTIVE ANALYSIS\\cereal.csv")
View(cereal)
kurtosis(cereal$calories)
skewness(cereal$fat)
skewness(cereal$fiber)
