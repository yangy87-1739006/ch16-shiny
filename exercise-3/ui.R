# UI for scatterplot
library(shiny)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
ui <- fluidPage(h1("mpg data"),
                selectInput("x_var", label = h3("Select x"), 
                            choices = select_values,
                              
                            selected = "manufacturer"),
                selectInput("y_var", label = h3("Select y"), 
                            choices = list("manufacturer" = "manufacturer",
                                           "model" = "model", 
                                           "displ" = "displ",
                                           "year" = "year",
                                           "cyl" = "cyl",
                                           "trans" = "trans",
                                           "drv" = "drv",
                                           "cty" = "cty",
                                           "hwy" = "hwy",
                                           "fl" = "fl",
                                           "class" = "class"), 
                            selected = "displ"),
                sliderInput("size", label = h3("Size"), min = 1, 
                            max = 10, value = 5),
                selectInput("color", label = h3("Select color"), 
                            choices = list("blue" = "blue", "red" = "red", "green" = "green"), 
                            selected = 1),
                plotOutput("scatter")
                
                )
  # A page header

  
  # Add a select input for the x variable

  
  # Add a select input for the y variable


  # Add a sliderInput to set the size of each point


  # Add a selectInput that allows you to select a color from a list of choices



  # Plot the output with the name "scatter"

shinyUI(ui)