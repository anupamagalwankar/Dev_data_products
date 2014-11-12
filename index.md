---
title       : Developing Data Products
subtitle    : Course Project (slidify)
author      : Anupama Galwankar 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Lottery Date Prediction

This app is a model that takes in your birthdate and predicts a date when you have good chances of winning the lottery. 

The date and month for the predicted date stay the same as the birthdate. A number is  randomly generated and it gets added to the birth year. This randomly generated number is 
such that the predicted date > current date.

---  

## Input and Output

1: Inputs: Birthdate

2: Output: Lottery Date

3: Packages: shiny, lubridate

--- 

## Prediction with example

For e.g let's say birth date entered is 25th July 1985.

```r
library(shinyapps)
dob=as.Date("1985-07-25")
```

The lotteryDate function applies the prediction algo to the birthdate.

```r
lotteryDate=function(DOB) {
    
    yeardiff=year(today())-year(DOB)  # so that predicted year > current year
    ld=ymd(DOB)+years(round(runif(1,yeardiff+1,yeardiff+20),0))
    
    return(ld)
}
```

--- 


## Prediction result

The date predicted for a lottery win is:


```r
predicted_date=lotteryDate(dob)
print(predicted_date)
```

```
## [1] "2031-07-25 UTC"
```
--- 
