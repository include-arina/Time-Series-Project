#install.packages("ggfortify")   
#library(ggfortify) 
library(tseries)
library(gridExtra)
install.packages("forecast")
library(forecast)

#question 1
crime_rates <- read.csv("gotham-crime-rate.csv")
plot.ts(crime_rates$Crime.Rate, xlab = "Time", ylab = "Crime Rates")

#question 2
crime_rates$log_rates <- log(crime_rates$Crime.Rate) #adding another column with the log crime rates
plot.ts(crime_rates$log_rates, xlab="Time", ylab="Log-Transformed Crime Data")

#question 3 
#the plot from question 3 indicates that the data is non stationary, to be sure we can perform the adf test
adf.test(crime_rates$log_rates)

#using differencing to remove the trend and seasonality
first_diff <- diff(crime_rates$log_rates)
plot.ts(first_diff, xlab = "Time", ylab = "First Order Differencing of the log(Crime.Rate)")

#performing the adf test on the differenced data to determine whether the data is weakly stationary
adf.test(first_diff)

#question 4
acf(first_diff, lag.max = 20, xlab = "Time", ylab = "ACF", main = "First Order Differencing of Log(Crime Rates)") #the lag appears to be insignificant between around 0.2 and -0.2
pacf(first_diff, lag.max = 20, xlab = "Time", ylab = "PACF", main = "First Order Differencing of Log(Crime Rates)")

#question 5
#proposed_model <- Arima(crime_rates$log_rates ,c(1,1,0),include.drift = TRUE);proposed_model

#question 6
proposed_model <- Arima(crime_rates$log_rates ,c(1,1,0), include.drift = TRUE);proposed_model #proposed model

#question 8
batman_model <- Arima(crime_rates$log_rates, c(2,1,1), include.drift = TRUE); batman_model


