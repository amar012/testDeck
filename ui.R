library(shiny)

shinyUI(pageWithSidebar(
    
    titlePanel(
        h3("Body Mass Index (BMI) Calculator")
    ),
    
    sidebarPanel(
        helpText("Enter the following details to calculate the BMI"),
        radioButtons("unitSystem","Choose A Unit System",c("Metric" = "metric","English" = "english")),
        uiOutput("ui1"),
        uiOutput("ui2"),
        uiOutput("ui3")
    ),
    
    mainPanel(
        uiOutput("bmiCalc")
    )
))