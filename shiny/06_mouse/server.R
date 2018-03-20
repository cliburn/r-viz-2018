library(shiny)
library(ggplot2)

server <- function(input, output) {
  output$plot <- renderPlot({
    ggplot(iris, aes(x=Sepal.Width, y=Sepal.Length, color=Species)) +
      geom_point()
  })
  
  output$click <- renderPrint({
    nearPoints(iris, input$click)
  })
  
  output$dblclick <- renderPrint({
    nearPoints(iris, input$dblclick)
  })
  
  output$hover <- renderPrint({
    nearPoints(iris, input$hover)
  })

  output$brush <- renderPrint({
    brushedPoints(iris, input$brush)
  })
}
