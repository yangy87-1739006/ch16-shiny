### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 
server <- function(input, output) {
# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter

    output$scatter <- renderPlot({
    # Store x and y values to plot
    x_v <- input$x_var
    y_v <- input$y_var

    # Store the title of the graph in a variable
    title <- paste0(x_v, " v.s ", y_v)
    
    # Create ggplot scatter
  
    p <- ggplot(mpg) +
    geom_point(mapping = aes(x = mpg[[x_v]], y = mpg[[y_v]]), 
               size = input$size, 
               color = input$color) +
    labs(title = title)
    return(p)
  })
}

  shinyServer(server)
  