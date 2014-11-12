library(lubridate)

lotteryDate=function(DOB) {
    
    yeardiff=year(today())-year(DOB)
    ld=ymd(DOB)+years(round(runif(1,yeardiff+1,yeardiff+20),0))
    
    return(ld)
}

shinyServer(
    function(input,output){
      output$inputValue=renderPrint({input$DOB})
      output$prediction=renderPrint({lotteryDate(input$DOB)})
      
      
    }  
    
)
    