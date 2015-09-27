shinyUI(pageWithSidebar(
  headerPanel("Travel Expense Computation"),
  sidebarPanel(
    
    h4('This application helps you to compute your total travel expense including transport, accomodation and miscellaneous fees'),
    numericInput("id1", "Transportation fee per traveller (S$)", 10, min = 0, max = 1000, step = 1),
    numericInput("id2", "Accomodation fee per traveller (S$)", 50, min = 0, max = 1000, step = 1),
    numericInput("id3", "Miscellaneous allowance per traveller (S$)", 20, min = 0, max = 1000, step = 1),
    sliderInput("numpax", 
                "Number of travellers:",
                min = 0,
                max = 10,
                value = 1,
                step = 1)
  ),
    
  mainPanel(
    h3('Total Travel Expense'),
    p('Based on your inputs, below are the results'),
    h4('Amount of transportation fee per traveller (S$)'),
    verbatimTextOutput("oid1"),
    h4('Amount of accomodation fee per traveller (S$)'),
    verbatimTextOutput("oid2"),
    h4('Amount of miscellaneous allowance per traveller (S$)'),
    verbatimTextOutput("oid3"),
    h4('Total number of travellers'),
    verbatimTextOutput("onumpax"),
    h4('Total travel expense per traveller (S$)'),
    verbatimTextOutput("ocostperpax"),
    h4('Total travel expense for all travellers (S$)'),
    verbatimTextOutput("ottcost")
  )
))