library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Mutually Exclusive Event"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      p(h4("There are two mutually exclusive events A and B.",
        "They can not occur simultaneously. Choose",
        "probability of A and B to see what happen.")),
      sliderInput("radius",
                  "Probability of A",
                  min = 0,
                  max = 0.3,
                  value = 0.2),
      sliderInput("radius2",
                  "Probability of B",
                  min = 0,
                  max = 0.4,
                  value = 0.25),
      h4("P(A and B)= P(A)+P(B)="),verbatimTextOutput(("plus"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))