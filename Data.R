For installing packages in R,
```R
install.packages("data.table")
library("data.table")  
```
<!--
Only used if required package doesn't exist
-->
```
quiz_data <- fread('hw1_data.csv')
```
<!---
sed to read data or importing data in R
-->
To Find out total number of rows we use the code given below
```R
nrows(quiz_data)
```
To find out the missing values in data(Ozone) we use 
```R
hw1 = read.csv('hw1_data.csv')
sub = subset(quiz_data, is.na(Ozone))
nrow(sub)
```
