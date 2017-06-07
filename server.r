library(shiny)
library(plotrix)
library(grid)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    
    isolate({
      plot(c(-1,1),c(-1,1), type = 'n')
      
      
    })
    
    draw.circle(-0.5,0,input$radius,col=c(3,4))
    draw.circle(0.5,0,input$radius2,col="yellow")
    y <- input$radius + input$radius2
    output$plus <- renderPrint({y})
    
  })

})
