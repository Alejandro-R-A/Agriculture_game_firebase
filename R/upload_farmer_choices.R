upload_farmer_choices_ui <- function(id) {
  ns <- NS(id)
  
  tagList(
    fluidRow(
      column(
        width = 2,
        actionButton(ns("submit_fc"), "show results")
      )
      
    )
  )
  
}

upload_farmer_choices_server <- function(id) {
  moduleServer(
    id = id,
    module = function(input, output, session) {
      
      observeEvent(input$submit_fc, {
        
        url <- Sys.getenv("db_url")
        
        future({
          upload_row(
            x = FarmerChoicesCost3,
            projectURL = url,
            fileName = "farmer_choices"
          )
        })
        
      })
      
    }
  )
}
