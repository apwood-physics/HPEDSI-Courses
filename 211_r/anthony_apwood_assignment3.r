library(nycflights13)
library(tidyverse)
library(dplyr)


# nycflights13
#
# This package contains information about all flights that departed from NYC
# (e.g., EWR, JFK, and LGA) to destinations in the United States, Puerto Rico,
# and the American Virgin Islands) in 2013: 336,776 flights in total. To help
# understand what causes delays, it also includes several other valuable datasets.
#
# This package provides the following data tables.
#
# flights: all flights that departed from NYC in 2013
#
# weather: hourly meteorological data for each airport
#
# planes: construction information about each plane
#
# airports: airport names and locations
#
# airlines: translation between two letter carrier codes and names
#
#
# We have already explored the flights data table, so in this exercise, you are
# going to clean up the weather data and identify the following:


# 1. Clean the data by removing the missing values

weather_data <- na.omit(nycflights13::weather)
print(weather_data)


# 2. Find the day with the highest average wind speed, wind gust,
# and precipitation.

highest <- weather_data %>%
  group_by(year, month, day) %>%
  summarize(
    avg_wind_speed = mean(wind_speed, na.rm = TRUE),
    avg_wind_gust = mean(wind_gust, na.rm = TRUE),
    avg_precip = mean(precip, na.rm = TRUE)
    # avg_dep = mean()
  ) %>%
        arrange(desc(avg_wind_speed), desc(avg_wind_gust), desc(avg_precip)) %>%
        head(1)

print(highest)

# 3. Are there any correlations between weather conditions and departure delays?
# (compare daily average wind speed/wind gust/precipitation/visibility to average
# daily departure delays)

flight_data <- na.omit(nycflights13::flights)

merged <- merge(weather_data, flight_data, by = c("year", "month", "day")) %>%
  group_by(year, month, day) %>%
  summarize(
    avg_wind_speed = mean(wind_speed, na.rm = TRUE),
    avg_wind_gust = mean(wind_gust, na.rm = TRUE),
    avg_precip = mean(precip, na.rm = TRUE),
    avg_visibility = mean(visib, na.rm = TRUE),
    avg_delay = mean(dep_delay, na.rm = TRUE)
  ) %>%
  arrange(desc(avg_delay))

print(merged)
