#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
function(input, output){
  
selectdata <- reactive({
  mtcars[, c(input$xcol, input$ycol, input$color)]
})

output$plot1 <- renderPlot({
  ggplot(selectdata(), aes(x=selectdata()[,1], y=selectdata()[,2], color = factor(selectdata()[,3]))) +
    geom_point() +
    geom_smooth(method = 'lm', formula = y~x) +
    theme_classic()
    
})
}