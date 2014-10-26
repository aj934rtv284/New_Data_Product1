library(shiny)


shinyUI(fluidPage(
  

  titlePanel("Motorcars Data"),
  

  sidebarLayout(
    sidebarPanel(
      
      helpText("Create Histogram for Mtcars variables."),     
      
      radioButtons("graf", "Graph Color:",
                   c("blue" = "blue",
                     "red" = "red",
                     "green" = "green"                    
                     )),
      
      
      selectInput("var", 
                  label = "Choose variable for Histogram:",
                  choices = c("miles per gallon" = "mpg",
                  "horse power" = "hp",
                  "weight" = "wt",
                  "quarter mile" = "qsec"),
                  selected = "mpg"),

    
    
    br(),br(),br(),
    selectInput("var2", 
                label = "Choose variable for Boxplot:",
                choices = c("miles per gallon" = "mpg",
                "horse power" = "hp",
                "weight" = "wt",
                "quarter mile" = "qsec"),
                selected = "mpg"),
    
    
    checkboxInput("checkbox1",
                  label = "Display Outliers",
                  value = FALSE)
    
  ),    
    

    mainPanel(
      plotOutput("Plot")
    )
  
  )
  
))

