## ---------------------------
## Author: Lucas Schroyer
## Purpose of script: W203 - Hw 1 Assignment - Question 4
## Script name: Hw1_CornaVirusTest_W203_Sp21.R
## Date Created: 2021-01-10
##
## Email: Lschroyer@ischool.berkeley.edu
##
## -------------------------
## Notes:
##   
## ---------------------------

## set working directory
#setwd()

## ---------------------------

options(scipen = 6, digits = 4) # View outputs in non-scientific notation

## ---------------------------
## load up the packages we will need:  

library(tidyverse)
library(ggplot2)
library(purrr)
library(haven)
# library(data.table)
# source("functions/packages.R")      

## ---------------------------
## read in initial data frame
anes_timeseries_2020_stata_20210211 <- read_dta("Data/anes_timeseries_2020_stata_20210211.dta")
labelled_df <- anes_timeseries_2020_stata_20210211

names_list <- c()
id_list <- c()
for (var_tmp in names(labelled_df)) {
  name_tmp <- attributes(zap_labels(labelled_df[[var_tmp]]))$label
  id_list <- c(id_list, var_tmp)
  names_list <- c(names_list, name_tmp)
}
names_list %>% head()

id_key <- data.frame("id" = id_list, "desc" = names_list)
id_key %>% head()


