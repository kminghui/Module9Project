shinyServer(
  function(input, output) {
    output$oid1 <- renderPrint({input$id1})
    output$oid2 <- renderPrint({input$id2})
    output$oid3 <- renderPrint({input$id3})
    output$onumpax <- renderPrint({input$numpax})
    output$ocostperpax <- renderPrint({(input$id1 + input$id2 + input$id3)})
    output$ottcost <- renderPrint({(input$id1 + input$id2 + input$id3) * input$numpax})
  }
)
