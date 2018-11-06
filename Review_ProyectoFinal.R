folder <- "/Users/nmorales/Documents/2Sem/DataW/Proyecto final/0118-12/"      
# path to folder that holds multiple .csv files

file_list <- list.files(path=folder, pattern="*.csv") 
# create list of all .csv files in folder

# read in each .csv file in file_list and create a data frame with the 
#same name as the .csv file
for (i in 1:length(file_list)){
  assign(file_list[i], read.csv(paste(folder, file_list[i], sep=''), header=FALSE))}

file_list

data <-NULL
for (i in 1:length(file_list)){
  data<-rbind(data, read.csv(file_list[i]))}


library(dplyr)

summary(`300118-12.csv`)

View(file_list)
