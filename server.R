library(shiny)


shinyServer(function(input, output) {
  

  
  col1 <- reactive({
    graf <- switch(input$graf,
                   red = "red",
                   blue = "blue",                  
                   green = "dark green",                  
                   histogram)
    
  })
  
  
  output$Plot <- renderPlot({
    
    par(mfrow=c(2,1),mar=c(2,2,2,2))
    
    attach(mtcars)
    
    x <- mtcars[,input$var] 
    title1 <- 'Histogram with variable -'
  
    
    hist(x, main = paste(title1, input$var),
                border = 'white',
                xlab = '',
                col = col1())
    

    z <- mtcars[,input$var2]
    title2 <- 'Boxplot with variable -'     
    
    
    boxplot(z, main = paste(title2, input$var2),
            outline = input$checkbox1,
            col = 'orange',
            horizontal = TRUE)              
    
    
  })
    
  
})


