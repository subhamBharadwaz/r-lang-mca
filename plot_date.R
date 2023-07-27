# Use the dataset airquality, plot the date/month against the temperature. Also plot the moving 
# average at a length of 3. Compare the two results

# Load the datasets package (if not already loaded)
library(datasets)

# Load the airquality dataset
data(airquality)

# Step 1: Convert the Month variable to a Date format
airquality$Date <- as.Date(paste(airquality$Month, "1", airquality$Day, sep = "-"), format = "%Y-%m-%d")

# Step 2: Plot date/month against temperature
plot(airquality$Date, airquality$Temp, type = "l", col = "blue", xlab = "Date/Month", ylab = "Temperature", main = "Temperature vs. Date/Month")

# Step 3: Plot the moving average with a length of 3
lines(airquality$Date, filter(airquality$Temp, rep(1/3, 3), sides = 2), col = "red")
legend("topleft", legend = c("Temperature", "Moving Average (3)"), col = c("blue", "red"), lty = 1)
