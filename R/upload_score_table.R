upload_score_table_ui <- function(id) {
  ns <- NS(id)
  
  tagList(
    fluidRow(
      column(
        width = 2,
        actionButton(ns("submit"), "show scores")
      )
      
    )
  )
  
}

upload_score_table_server <- function(id) {
  moduleServer(
    id = id,
    module = function(input, output, session) {
      
      observeEvent(input$submit, {
        
        url <- Sys.getenv("db_url")
        
        future({
          upload_row(
            x = ScoreTable,
            projectURL = url,
            fileName = "scores"
          )
        })
        
      })
      
    }
  )
}
