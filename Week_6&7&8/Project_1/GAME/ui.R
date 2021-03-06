library(shiny)
library(DT)
library(plotly)
ran = read.csv("RATE.csv",stringsAsFactors=FALSE)
# Define UI for miles per gallon application
shinyUI(
  
  navbarPage("CSX4001_Gamer",  
      tabPanel("前言",
        headerPanel("巴哈姆特PC評價排名前20的遊戲分析"),
        textOutput("intro")
        )
      ,

  
      navbarMenu("總體分析",
          tabPanel("類別分布",
                   basicPage(
                     plotlyOutput("catPlot")
                   )
          ),
          tabPanel("發布時間與評價",
                   basicPage(
                     plotlyOutput("timePlot")
                   )
         ),
          tabPanel("玩家注重的元素",
                   basicPage(
                     plotlyOutput("elePlot")
                   )
        )
          
      ),
  
      tabPanel("特色分析",
               pageWithSidebar(
                 headerPanel('各遊戲特色分析'),
                 sidebarPanel(
                   selectInput('GN', 'Name:', ran$Name)
                   ),
                 mainPanel(
                   textOutput("radex"),
                   plotlyOutput("radarPlot")
                )
               )
          ), 
   
   
       tabPanel("資料表",
                basicPage(
                  h2("巴哈姆特評分排行前20名"),
                  DT::dataTableOutput("mytable")
                )
       )
                
  )
)