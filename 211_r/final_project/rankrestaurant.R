library(tidyverse)
library(dplyr)


rankrestaurant <- function(country, pricerange, num) {
  zomato <- read_csv("zomato.csv")

  country_codes <- read_csv("Country-Code.csv")

  zomato_with_countries <- merge(
          zomato,
          country_codes,
          by.x = "Country Code",
          by.y = "Country Code"
  )

  if (!country %in% unique(zomato_with_countries$`3lettercode`)) {
          stop("Invalid country")
  }
  if (!pricerange %in% unique(zomato_with_countries$`Price range`)) {
          stop("Invalid price range")
  }

  restaurant_rankings <- zomato_with_countries %>%
          filter(`3lettercode` == country, `Price range` == pricerange) %>%
          arrange(desc(`Price range`), desc(`Aggregate rating`)) %>%
          select(`Restaurant Name`, `Aggregate rating`)

  nrows <- nrow(restaurant_rankings)

  if (!is.numeric(num) && !num %in% c("best", "worst")) {
    stop("Invalid ranking")
  } else if (!is.numeric(num)) {
    num <- ifelse(num == "best", 1, nrows)
  }

  if (num > nrows) {
    return(NA)
  }

  selected_restaurant <- restaurant_rankings[num, ]
  return(selected_restaurant)
}
