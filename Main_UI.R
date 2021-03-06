library(shiny)
library(DT)
#source("NLP.R")

shinyApp(
  ui = fluidPage(
    actionButton("train", "Train Model"),
    actionButton("retrain", "Re-Train Model"),
    actionButton("reinforcement", "Re-inforcement Learning")
  ),
  server = function(input, output) {
    observeEvent(input$train,{
      source("NLP.R")
      create_model(0)
    })
    observeEvent(input$retrain,{
      create_model(1)
    })
    observeEvent(input$reinforcement,{
      reinforcement_training()
    })


    
  }
)
