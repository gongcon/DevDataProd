library(shiny)
library(datasets); data(ToothGrowth)

shinyServer(
    function(input, output) {
        comp1 = reactive(t.test(len ~ supp, data=subset(ToothGrowth, ToothGrowth$dose==as.numeric(input$idDose1))))
        output$oidCompare1 <- renderPrint({print(paste("p-value =", comp1()$p.value)); print(paste("Confident Interval = [", comp1()$conf.int[1], ",", comp1()$conf.int[2], "]"))})
        comp2 = reactive(t.test(len ~ dose, data=subset(ToothGrowth, ToothGrowth$supp==input$idSupp & ToothGrowth$dose!=as.numeric(input$idDose2))))
        output$oidCompare2 <- renderPrint({print(paste("p-value =", comp2()$p.value)); print(paste("Confident Interval = [", comp2()$conf.int[1], ",", comp2()$conf.int[2], "]"))})
    }
)