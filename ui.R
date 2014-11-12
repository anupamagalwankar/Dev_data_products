library(shiny)

shinyUI(
  pageWithSidebar(
    #Application title
    headerPanel("Use the app and win a lottery!"),
    
      
    sidebarPanel(
        p("This model uses your date of birth to predict a lottery date."), 
        br(),
        p("The lottery date is a function of randomly generated years added to your birthdate."),
        br(),
        br(),
        br(),
        p("Please enter your date of birth here:"),
        
        dateInput("DOB","")      
        
    ),
    
      
    mainPanel(
        
        h3('Results of Prediction'),
        h4('You entered'),
        verbatimTextOutput("inputValue"),
        h4("This model predicts you will be a millionaire on this date. Congratulations!"),
        verbatimTextOutput("prediction")
    )  
      
    
  )
)