# Exercise 1: Building a user interface

# Load the `shiny` package (install it in the R terminal if you haven't already)
library(shiny)

# Define a new `ui` variable. This variable should be assigned a `fluidPage()` 
# layout, which should be passed the following:
ui <- fluidPage(
  h1("First Shiny Website"),
  p("hello", strong("hello")),
  img("", src = "https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif"),
  p("hello", em("again")),
  sliderInput("slider1", label = h3("Slider"), min = 10, max = 100, value = 50)
)

  # A top level header: "First Shiny Website"
  

  # A Paragraph, describing your excitement: include some `strong` text
  

  # An image with this `src`
  # https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif
  
  
  # Another paragraph about a slider: include some `em` text
  
  
  # A slider with an appropriate label, min of 10, max of 100, value of 50  
  


# Define a `server` function that accepts an input and an output
# At this point, don't do anything in the function
# This function should perform the following:

server <- function(input, output) {
  
}

# Create a new `shinyApp()` using the above ui and server
shinyApp(ui, server)