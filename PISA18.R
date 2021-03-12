setwd("D:/acp/datasets/PISA/PISA2018")


library(tidyverse)
library(haven)
library(foreign)
#########################################

stud <- read_dta("CY07_MSU_STU_QQQ.dta")

stud <- stud %>% 
  filter(cntryid==360) %>%
  select(ST186Q01HA, ST186Q02HA, ST186Q03HA, ST186Q05HA, ST186Q06HA, ST186Q07HA, ST186Q08HA,
         ST186Q09HA, ST186Q10HA) %>% 
  rename ("joyful"="ST186Q01HA", 
          "afraid"="ST186Q02HA", 
          "cheerful"="ST186Q03HA", 
          "happy"="ST186Q05HA", 
          "scared"="ST186Q06HA", 
          "lively"="ST186Q07HA",
          "sad"="ST186Q08HA", 
          "proud"="ST186Q09HA", 
          "miserable"="ST186Q10HA"  
  )

write.csv(stud, "studwb.csv")

#############################################
studid <- stud %>% 
  filter(cntryid==360)
write.csv(studid, "studid.csv")
#############################################

studid <- read_csv("studid.csv")

studid <- studid %>% 
  select(ST004D01T, ST016Q01NA, ST186Q01HA, ST186Q02HA, ST186Q03HA, ST186Q05HA, ST186Q06HA, ST186Q07HA, ST186Q08HA,
         ST186Q09HA, ST186Q10HA, PV1MATH, PV1READ, PV1SCIE) %>% 
  rename ("gender"="ST004D01T",
          "lifesat"="ST016Q01NA",
          "joyful"="ST186Q01HA", 
          "afraid"="ST186Q02HA", 
          "cheerful"="ST186Q03HA", 
          "happy"="ST186Q05HA", 
          "scared"="ST186Q06HA", 
          "lively"="ST186Q07HA",
          "sad"="ST186Q08HA", 
          "proud"="ST186Q09HA", 
          "miserable"="ST186Q10HA",
          "math"="PV1MATH",
          "read"="PV1READ",
          "scie"="PV1SCIE"
  )




