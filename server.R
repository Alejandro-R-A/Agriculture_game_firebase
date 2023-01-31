shinyServer(function(input, output, session) {

  #poll_server("main")
  #read_results_server("results")
  upload_score_table_server("main")
  show_score_table_server("results")
  
  upload_farmer_choices_server("main_fc")
  show_farmer_choices_server("results_fc")
  
})
