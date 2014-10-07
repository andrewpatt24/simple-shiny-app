library(shiny)
library(rCharts)
library(reshape2)

cluster.data <- read.csv("./data/cluster_data.csv")


graphoptions<-as.list(colnames(cluster.data))
names(graphoptions)<-colnames(cluster.data)

shinyUI(fluidPage(
  
  titlePanel("Cluster Comparison"),
  
  fluidRow(
    column(2,
           selectInput("graphoptions1", label = h5("Select description for graph1"),choices = graphoptions[-1], selected = graphoptions[2]),
           selectInput("graphoptions2", label = h5("Select description for graph2"),choices = graphoptions[-1], selected = graphoptions[3]),
           selectInput("graphoptions3", label = h5("Select description for graph3"),choices = graphoptions[-1], selected = graphoptions[4]),
           selectInput("graphoptions4", label = h5("Select description for graph4"),choices = graphoptions[-1], selected = graphoptions[5])
    ),
    column(5,
           tabsetPanel(
             tabPanel("Desc Barchart",showOutput("plot1","nvd3")
                      ),
             tabPanel("Class Barchart",showOutput("plot1a","nvd3")
             ),
             tabPanel("Table",
                      tableOutput("table1"),
                      tableOutput("table1a")
                      )
             )
           ),
    column(5,
           tabsetPanel(
             tabPanel("Desc Barchart",showOutput("plot2","nvd3")
                      ),
             tabPanel("Class Barchart",showOutput("plot2a","nvd3")
             ),
             tabPanel("Table",tableOutput("table2"),
                      tableOutput("table2a")
                      )
           )
             )
           ),
  fluidRow(
    column(5,offset=2,
           tabsetPanel(
             tabPanel("Desc Barchart",showOutput("plot3","nvd3")
             ),
             tabPanel("Class Barchart",showOutput("plot3a","nvd3")
             ),
             tabPanel("Table",tableOutput("table3"),
                      tableOutput("table3a")
                      )
           )
           ),
    column(5,
           tabsetPanel(
             tabPanel("Desc Barchart",showOutput("plot4","nvd3")
             ),
             tabPanel("Class Barchart",showOutput("plot4a","nvd3")
             ),
             tabPanel("Table",tableOutput("table4"),
                      tableOutput("table4a")
                      )
           )
           )
    )
)
)

