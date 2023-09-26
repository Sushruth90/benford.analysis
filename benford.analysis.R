# load libraries
install.packages("gtrendsR")
install.packages("reshape2")
install.packages("dplyr")
install.packages("benford.analysis")
install.packages("pdftools")
install.packages("stringr")

library(stringr)
library(gtrendsR)
library(reshape2)
library(dplyr)
library(benford.analysis)
library(pdftools)
# read data
txt <- pdf_text("C:/.....")
txt
# filter out numbers
numeric_values <- as.numeric(unlist(str_extract_all(txt, "\\d+")))
# perform benford analysis
trends = benford(numeric_values, number.of.digits = 1, discrete = T, sign = "positive") 
trends
# plot results
plot(trends)
