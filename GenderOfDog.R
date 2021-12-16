library(ggplot2)
library(GGally)

setwd("C:/Users/annam/OneDrive/Documents/Fall 2021/Data Analytics 115/Group Dataset")

dogs <- read.csv("dogbreeddataset.csv")
dogs$GENDER <- as.factor(dogs$GENDER)
dogs$GENDER.OF.DOG <- as.factor(dogs$GENDER.OF.DOG)


popular <- c("Chihauhau", "Golden Retriever", "Labrador Retriever", "Yorkshire Terrier", "Jack Russel Terrier", "Französische Bulldogge", "Mischling gross", "Malteser", "Mops", "Golden Retriever")
popular_dogs <- dogs[dogs$PRIMARY.BREED %in% popular,]

popular_dogs$PRIMARY.BREED[popular_dogs$PRIMARY.BREED == "Französische Bulldogge"] <- "French Bulldog"

log <- glm(data = dogs, formula = GENDER.OF.DOG ~ GENDER, family = binomial)
summary(log)

dogs$fitted_values = log$fitted.values
dogs$prediction = ifelse(dogs$fitted_values < 0.5, "m", "w")
mean(dogs$prediction == dogs$GENDER.OF.DOG)

ggplot(data = dogs, aes(x = GENDER, fill = GENDER.OF.DOG)) + geom_bar() + scale_fill_manual(values = c("royal blue", "hot pink")) + ggtitle("The Owner's Gender of Male and Female Dogs")


ggplot(data = popular_dogs, aes(x = GENDER.OF.DOG, fill = PRIMARY.BREED)) + geom_bar() + ggtitle("COunt of the Top 10 Most Popular Primary Breeds of Male and Female Dogs")
ggplot(data = popular_dogs, aes(x = PRIMARY.BREED, fill = GENDER.OF.DOG)) + geom_bar()

log <- glm(data = popular_dogs, formula = GENDER.OF.DOG ~ PRIMARY.BREED, family = binomial)
summary(log)

popular_dogs$fitted_values = log$fitted.values
popular_dogs$prediction = ifelse(popular_dogs$fitted_values < 0.5, "m", "w")
mean(popular_dogs$prediction == popular_dogs$GENDER.OF.DOG)


ggplot(data = dogs, aes(x = BIRTH.YEAR, y = GENDER.OF.DOG)) + geom_boxplot(fill = c("royal blue", "hot pink"), color = c("dark blue", "violet red")) + ggtitle("Birth Year of Male and Female Dogs")
log2 <- glm(data = dogs, formula = GENDER.OF.DOG ~ BIRTH.YEAR, family = binomial)
summary(log2)

dogs$fitted_values2 = log$fitted.values
dogs$prediction2 = ifelse(dogs$fitted_values2 < 0.5, "m", "w")
mean(dogs$prediction2 == dogs$GENDER.OF.DOG)
