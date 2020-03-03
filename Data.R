 For installing packages in R

install.packages("data.table")
library("data.table")  


 Only used if required package doesn't exist
quiz_data <- fread('hw1_data.csv')
<b>sed to read data or importing data in R</b>

<To Find out total number of rows we use the code given below<

nrows(quiz_data)

## To find out the missing values in data(Ozone) we use:

hw1 = read.csv('hw1_data.csv')
sub = subset(quiz_data, is.na(Ozone))
nrow(sub)

Outlier Detection methods like quantile method in case of Ozone xolumn where we get boxplot and histogram diagrams

# It(below) detects outliers by a method called quantile capp method which means a sample is derived from a given quantity.
```
outdetect <- function(c,w=1.5)
{
  h <- w*IQR(c,na.rm = T)
  q <- quantile(c,probs=c(.25, .75),na.rm = T)
  if(length(which(q[1]-h>c))==0)
    cat("There are",sum(q[1]-h>c,na.rm = T),"observations below the 1st quantile\n")
  else
    cat("There are",sum(q[1]-h>c,na.rm = T),"observations below the 1st quantile","on rows",which(q[1]-h>c),"and the values are",boxplot.stats(c)$out,"\n")
  if(length(which(q[2]+h<c))==0)
    cat("There are",sum(q[2]+h<c,na.rm = T),"observations above the 3rd quantile\n")
  else
    cat("There are",sum(q[2]+h<c,na.rm = T),"observations above the 3rd quantile","on rows",which(q[2]+h<c),"and the values are",boxplot.stats(c)$out,"\n")
}
```

Outiler removal by box plot method:
Box plot method is a method which are a standardized way of displaying the distribution of data based on a five number summary (“minimum”, first quartile (Q1), median, third quartile (Q3), and “maximum”
par(mfrow=c(1,2))
boxplot(airquality$Ozone,col = "antiquewhite3",main = "Boxplot of Ozone",outcol="Blue",outpch=19,boxwex=0.7,range = 1.5)
hist(airquality$Ozone,col = "antiquewhite3",main = "Histogram of Ozone", xlab = "Observations",breaks = 15)
