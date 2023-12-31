setwd("/home/sadi/MY_data/Data science project")
library(ggplot2)
library(ggpmisc)

############# Function to Read Data Frame #################
readData <- function(){
  myD <- read.csv(file = "/home/sadi/MY_data/Data science project/Dataset_2.csv") 
  print(head(myD))
  return(myD)
}
createHistogram <- function(myData){
  
  myPlot <- ggplot(myData, aes(x=factor(weekday), fill = No_Of_Withdrawals),colour=Species)+geom_bar()
  
  
  #myPlot <- myPlot + geom_bar(stat = "Count")
  myPlot <- myPlot + geom_bar(stat = "Count")+labs(x="Name of the Day",y="No Of Withdrawals")+ggtitle("                          Withdrawn Money in Days  ")
  
  print(myPlot)
  
}
main <- function(){
  dat <- readData()
  createHistogram(myData<-dat)
  #polyPlot()
  print("Done")
  
}

main()