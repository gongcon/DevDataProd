library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("ToothGrowth Data Analysis"),
    sidebarPanel(
        h4(title="Compare the two groups of supplyments with dose 0.5, 1.0, and 2.0.", "Comparison 1"),
        selectInput("idDose1", "Dose:", c("0.5", "1.0", "2.0")),
        hr(),
        h4(title="Compare the three doses each others in different group of supplyments.","Comparison 2"),
        radioButtons("idSupp", "Supplement type:", c("Vitamic C"="VC", "Orange Juice"="OJ"), inline=TRUE),
        selectInput("idDose2", "Dose:", c("0.5 v.s. 1.0"="2.0", "0.5 v.s. 2.0"="1.0", "1.0 v.s. 2.0"="0.5"))
    ),
    mainPanel(
        div(style="overflow:scroll; height:110px; background-color: #e1efbb", 
            p("In this app we present an analysis of ToothGrowth data from R data sets. ToothGrowth data set contains the Effect of Vitamin C on Tooth Growth in Guinea Pigs. We use confidence intervals and hypothesis tests to compare tooth growth by supplement and dose."),
            p("Make your selection of the two comparison functions on the left hand side, and you will see the p-value and Confident Interval output in the two sections below. The two comparison functions are:"),
            tags$li(strong("Comparison 1"), " - We compare the two groups of supplyments with dose 0.5, 1.0, and 2.0."),
            tags$li(strong("Comparison 2"), " - We compare the three doses each others in different group of supplyments.")),
        h3("Comparison 1 output"),
        verbatimTextOutput("oidCompare1"),
        h3("Comparison 2 output"),
        verbatimTextOutput("oidCompare2")    
    )
))