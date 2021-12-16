---
title: "dogbreed"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.


```{r cars}
library("tidyverse")
Dog <- read.csv("./dogbreed2.csv")
summary(Dog$Chihuahua)
summary(Dog$Mischling.klein)
ggplot(data = Dog, mapping = aes(y=Chihuahua)) + geom_boxplot()
ggplot(data = Dog, mapping = aes(y=Mischling.klein)) + geom_boxplot()





```


```{r cars}
mischling = c(8.2,11.4,9.3,8.7,9.5,9.9,8.9)
chihuahua = c(9.8, 10.6, 8.2, 9.5, 14.5)
summary(mischling)
summary(chihuahua)
```


```{r cars}
color <- read.csv("./districtcolor.csv")
summary(color$schwarz)
summary(color$braun)
summary(color$weiss)
ggplot(data = color, mapping = aes(y=schwarz)) + geom_boxplot()
ggplot(data = color, mapping = aes(y=braun)) + geom_boxplot()
ggplot(data = color, mapping = aes(y=weiss)) + geom_boxplot()
```




