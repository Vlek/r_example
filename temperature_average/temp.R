"
Temperature average example

In this file we are reading data in, subsetting the data, and getting
the average for a single location.

In this example, we are grabbing Sacramento and getting the average temp
for the year.
"

# Reading in the weather data, it contains normal headers and uses commas
weatherData <- read.csv("data/weather.csv")


# Subsetting data
sacramentoData <- subset(weatherData, Station.City == "Sacramento")


# Grabbing the average for Sac
averageTemp <- mean(sacramentoData$Data.Temperature.Avg.Temp)


# Presenting the user in the console with the info.
# We could have gone with paste0 or sprintf here, paste0 worked as we did not
# have a tough format to deal with.
print(paste0("The average temperature for the year 2016 in Sac was: ", averageTemp))