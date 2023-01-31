show_score_table_ui <- function(id){
  ns <- NS(id)
  
  tagList(
    dataTableOutput(ns("results"))
  )
}

show_score_table_server <- function(id){
  moduleServer(
    id = id,
    module = function(input, output, session){
      timer <- reactiveTimer(10000)
      
      data <- reactiveValues()
      
      observe({
        url <- Sys.getenv("db_url")
        data$results <- future({
          download_df(
            projectURL = url,
            fileName = "scores")
        })
        timer()
        
      })
      
      output$results <- renderDataTable({
        data$results
      })
      
    }
  )
}
