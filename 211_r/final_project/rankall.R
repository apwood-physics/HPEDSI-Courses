library(tidyverse)
library(dplyr)


rankall <- function(pricerange, num = "best") {
  zomato <- read_csv("zomato.csv")

  country_codes <- read_csv("Country-Code.csv")

  zomato_with_countries <- merge(
          zomato,
          country_codes,
          by.x = "Country Code",
          by.y = "Country Code"
  )

  if (!pricerange %in% unique(zomato_with_countries$`Price range`)) {
          stop("Invalid price range")
  }

  if (!is.numeric(num) && !num %in% c("best", "worst")) {
    stop("Invalid ranking")
  } else if (!is.numeric(num)) {
    num <- ifelse(num == "best", 1, -1)
  }

  restaurant_rankings <- zomato_with_countries %>%
          filter(`Price range` == pricerange) %>%
          group_by(`3lettercode`) %>%
          arrange(desc(`Price range`), desc(`Aggregate rating`)) %>%
          mutate(row_num = row_number())

  ranks_with_na <-  restaurant_rankings %>%
          filter(if (num == -1) row_num == n() else row_num == num) %>%
          select(`Restaurant Name`, country = `3lettercode`) %>%
          ungroup() %>%
          complete(country = unique(restaurant_rankings$`3lettercode`))

  return(ranks_with_na)
}
