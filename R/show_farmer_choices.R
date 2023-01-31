show_farmer_choices_ui <- function(id){
  ns <- NS(id)
  
  tagList(
    dataTableOutput(ns("results_fc"))
  )
}

show_farmer_choices_server <- function(id){
  moduleServer(
    id = id,
    module = function(input, output, session){
      timer <- reactiveTimer(10000)
      
      data <- reactiveValues()
      
      observe({
        url <- Sys.getenv("db_url")
        data$results_fc <- future({
          download_df(
            projectURL = url,
            fileName = "farmer_choices")
        })
        timer()
        
      })
      
      output$results_fc <- renderDataTable({
        data$results_fc
      })
      
    }
  )
}