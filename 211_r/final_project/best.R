library(tidyverse)
library(dplyr)


best <- function(country, pricerange) {
        zomato <- read_csv("zomato.csv")
        hist(zomato$`Aggregate rating`)
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

        zomato_with_countries %>%
                filter(`3lettercode` == country, `Price range` == pricerange) %>%
                arrange(desc(`Price range`)) %>%
                select(`Restaurant Name`, `City`) %>%
                head(3)
}
