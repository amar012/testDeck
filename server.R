library(shiny)

calcBmi <- function(ht, htFrac, wt, unitSystem){
    unitSystem <- tolower(unitSystem)
    if (unitSystem == "english"){
        ht <- (ht * 12 ) + htFrac
        bmi <- (wt / (ht ^ 2)) * 703
    } else if (unitSystem == "metric") {
        ht <- ht + (htFrac / 100)
        bmi <- wt / (ht ^ 2)
    }
    bmi <- round(bmi,1)
}

bmiCategory <- function(bmi){
    if (bmi <= 18.5){bmiCat = "Underweight"}
    else if (bmi > 18.6 & bmi <= 24.9){bmiCat = "Normal Weight"}
    else if (bmi > 24.9 & bmi <= 29.9){bmiCat = "Overweight"}
    else if (bmi > 29.9){bmiCat = "Obese"}
    bmiCat
}

shinyServer(
    
    function(input,output){
               
        output$bmiCalc <- renderUI({
             ht <- input$ht
             htFrac <- input$htFrac
             wt <- input$weight
             unitSys <- input$unitSystem

             bmi <- calcBmi(ht,htFrac,wt,unitSys)
             bmiCat <- bmiCategory(bmi)
             h4(paste("You are", bmiCat, "-", "Your BMI is:", bmi))
        })
        
        
        output$ui1 <- renderUI({
            
            switch(input$unitSystem,
                   "metric" = numericInput("ht", "Metres",
                                            value = 1, step=1),
                   "english" = numericInput("ht", "Feet",
                                           value = 5,step=1)
            )
        }) 
        
        output$ui2 <- renderUI({
            
            switch(input$unitSystem,
                   "metric" = numericInput("htFrac", "Centimetres",
                                           value = 1),
                   "english" = numericInput("htFrac", "Inches",
                                            value = 1)
            )
        }) 
        
        
        output$ui3 <- renderUI({
            
            switch(input$unitSystem,
                   "metric" = numericInput("weight", "Kilograms",
                                           value = 1,step=0.1),
                   "english" = numericInput("weight", "Lbs",
                                            value = 1,step=0.1)
            )
        }) 
        
    }
       
)