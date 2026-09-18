# Time-Series-Project
This project analyses yearly crime rate data from a fictional Gotham case study using R, with a focus on preparing a non-stationary time series for ARIMA modelling. Initial visual exploration examines the upward trend and changing variability, followed by log transformation to stabilise variance and first-order differencing to remove the trend.

Stationarity is assessed using time series plots and Augmented Dickey–Fuller (ADF) tests before and after differencing. Autocorrelation (ACF) and partial autocorrelation (PACF) plots are then used to guide model identification and justify the selection of an ARIMA(1,1,0) model.

The selected model is fitted with a non-zero mean for the differenced log series, and its estimated parameters are expressed using backshift notation. An alternative ARIMA(2,1,1) model is fitted and compared using the Akaike Information Criterion (AIC) and Bayesian Information Criterion (BIC). Both criteria favour the simpler ARIMA(1,1,0) model, illustrating the balance between model fit and complexity.

# Project Report
[View full report](TimeSeries.pdf)

## License
This project is provided for viewing and evaluation purposes only.
Reuse, modification, or distribution is not permitted without explicit permission.
