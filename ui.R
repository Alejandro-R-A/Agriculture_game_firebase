shinyUI(fluidPage(
  fluidRow(
      column(width = 2,
             #poll_ui("main")
             upload_score_table_ui("main"),
             upload_farmer_choices_ui("main_fc")
             ),
      column(width = 6,
             #read_results_ui("results")
             show_score_table_ui("results"),
             show_farmer_choices_ui("results_fc")
             )
  )
))
