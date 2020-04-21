library(shiny)
library(ggplot2)
library(ggiraph)
library(ggiraphExtra)

shinyServer(
   function(input, output) {
      output$oid1 = renderPrint({input$Sweet})
      output$oid2 = renderPrint({input$Salty})
      output$oid3 = renderPrint({input$Bitter})
      output$oid4 = renderPrint({input$Astringent})
      output$oid5 = renderPrint({input$Fresh_Fruits})
      output$oid6 = renderPrint({input$Citric})
      output$odate = renderPrint({input$date})
      output$text1 <- renderText({input$text1})
      output$text2 <- renderText({input$text2})
      output$newPlot <- renderPlot({
         
               a <- input$Sweet
               b <- input$Salty
               c <- input$Bitter
               d <- input$Astringent
               e <- input$Fresh_Fruits
               f <- input$Dried_Fruits
               g <- input$Citrus
               h <- input$Species
               i <- input$Walnut
               j <- input$Flowers
               df<- c(a,b,c,d, e, f, g, h, i, j)
               dim(df)<-c(1,10)
               colnames(df) <-  c("Sweet", "Salty", "Bitter", "Astringent", "Fresh_Fruits", "Dried_Fruits", "Citrus", "Species", "Walnut", "Flowers")
               df <- data.frame(df)
               ggRadar(df, aes(x=c(Sweet, Salty, Bitter, Astringent, Fresh_Fruits, Dried_Fruits, Citrus, Species, Walnut, Flowers)), rescale = FALSE, ylim = c(0,10), colour = "Green")
              })
      output$newPlot2 <- renderPlot({
         
         z <- input$Mohos
         y <- input$Dust
         x <- input$Overfermented
         w <- input$Green
         v <- input$Acid
         u <- input$Others
        
         df2<- c(z,y,x,w,v,u)
         dim(df2)<-c(1,6)
         colnames(df2) <-  c("Mohos", "Dust", "Overfermented", "Green", "Acid", "Others")
         df2 <- data.frame(df2)
         ggRadar(df2, aes(x=c(Mohos, Dust, Overfermented, Green, Acid, Others)), rescale = FALSE, ylim = c(0,10), colour = "Orange")
      })
      
   }
)