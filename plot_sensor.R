

library(plotly)
table2<-read.csv("/mnt/DATA/time_table/All_sensors_filter6.csv", sep = ",")
table2

m<- list(  l = 100, b = 100,  pad = 4)
plot_ly(table2, x=~Date, y=~table2$Sensor, color =~table2$Sensor ,type = "scatter", 
        showlegend= "TRUE" )%>%
  layout(title = 'Available Sensors Scenes/Month ',margin = m,
         xaxis = list(title = 'Date',
                      zeroline = TRUE,
                      tickangle = 65,
                      categoryorder="Date ascending",
                      categoryarray=unique(table2$Date)),
         
         yaxis = list(title = 'Sensors',
                      size = 12))

