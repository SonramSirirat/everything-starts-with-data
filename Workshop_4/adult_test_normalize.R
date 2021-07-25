normalize_df <- data.frame(adult_test_pre$age, 
                           adult_test_pre$fnlwgt,
                           adult_test_pre$education_num, 
                           adult_test_pre$hours_per_week)
maxs <- apply(normalize_df, 2, max)
mins <- apply(normalize_df, 2, min)
normalize_data <- as.data.frame(scale(normalize_df, 
                                      center = mins,
                                      scale = (maxs - mins)))

library(tidyverse)
normalize_data <- data.frame(normalize_data %>%
                               rename(
                                 age = adult_test_pre.age,
                                 fnlwgt = adult_test_pre.fnlwgt,
                                 edu_num = adult_test_pre.education_num,
                                 hours_per_week = adult_test_pre.hours_per_week
                               )
)

write.csv(normalize_data,"C:/Users/sonram_sirirat/Documents/GitHub/everything-starts-with-data/Workshop_4/adult_test_normalize.csv", row.names = TRUE)
