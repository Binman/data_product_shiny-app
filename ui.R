#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
choices <- colnames(mtcars)

pageWithSidebar(
  headerPanel('Let us play with mtcars data'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', choices, selected = 'hp'),
    selectInput('ycol', 'Y Variable', choices, selected = 'mpg'),
    selectInput('color', 'color by group', choices, selected = 'cyl')
  ),
  mainPanel(
    plotOutput('plot1')
  )
)
  
  
