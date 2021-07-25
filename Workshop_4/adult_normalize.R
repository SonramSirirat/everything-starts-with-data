normalize_df <- data.frame(adult_pre_weka$age, 
                           adult_pre_weka$fnlwgt,
                           adult_pre_weka$education_num, 
                           adult_pre_weka$hours_per_week)
maxs <- apply(normalize_df, 2, max)
mins <- apply(normalize_df, 2, min)
normalize_data <- as.data.frame(scale(normalize_df, 
                                      center = mins,
                                      scale = (maxs - mins)))

library(tidyverse)
normalize_data <- data.frame(normalize_data %>%
  rename(
    age = adult_pre_weka.age,
    fnlwgt = adult_pre_weka.fnlwgt,
    edu_num = adult_pre_weka.education_num,
    hours_per_week = adult_pre_weka.hours_per_week
  )
)

write.csv(normalize_data,"C:/Users/sonram_sirirat/Documents/GitHub/everything-starts-with-data/Workshop_4/adult_normalize.csv", row.names = TRUE)
