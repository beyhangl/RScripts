##Here we are doing base feature engineering

##Usage Dataset: Fake customers data,not real.

##Beyhan Gul   28 December 2016

##Next part will be implement first churn algorithm on 'ChurnCustomerData.csv' dataset
customerdata<-read.csv(file="C:\\Users\\asus\\Desktop\\Kafein\\Genel Dökümanlar\\Dataset\\fakeCustomers.csv", header=TRUE, sep=",")

head(customerdata)

##fill logic data
customerdata$TARIFF_ID<-sample(6, size = nrow(customerdata), replace = TRUE)
customerdata$CUSTOMER_TYPE <-sample(2, size = nrow(customerdata), replace = TRUE)
#head(customerdata)

age = function(from, to) {
  from_lt = as.POSIXlt(from)
  to_lt = as.POSIXlt(to)
  
  age = to_lt$year - from_lt$year
  
  ifelse(to_lt$mon < from_lt$mon |
           (to_lt$mon == from_lt$mon & to_lt$mday < from_lt$mday),
         age - 1, age)
}
##convert to date format
date1 <- as.Date(customerdata$DATEOFBIRTH, "%d.%m.%Y" )
##calculate age of each customer
customerdata$AGE<-age(date1,"2017-01-01")
##greater than 0
customerdata<-customerdata[customerdata$AGE>0,]
##delete nan rows
customerdata<-customerdata[complete.cases(customerdata), ]

##bimcell,pocell,trabzoncell to numeric
customerdata$MVNO <- as.numeric(factor(customerdata$MVNO))
customerdata$SEX <- as.numeric(factor(customerdata$SEX))
customerdata$SEGMENT <- as.numeric(factor(customerdata$SEGMENT))

##delete some column which is not numeric
customerdata$DATEOFBIRTH<-NULL
##Create churn to test
customerdata$CHURN<-sample(2, size = nrow(customerdata), replace = TRUE)

write.csv(customerdata,"C:\\Users\\asus\\Desktop\\Kafein\\Genel Dökümanlar\\Dataset\\ChurnCustomerData.csv",row.names=F)