upload_row <- function(x, projectURL, fileName) {
  upload(x = x, projectURL = projectURL, directory = paste0("main/", fileName))
}

download_df <- function(projectURL, fileName) {
  rbindlist(
    download(projectURL = projectURL, fileName = paste0("main/", fileName))
  )
}



#if (!require("devtools")) install.packages("devtools")
#devtools::install_github("paulsp94/fireData")

#library(fireData)

# Before restart R Session to .Renviron file
#upload(x = mtcars, projectURL = Sys.getenv("db_url"))

#upload(x = list("a" = 1, "b" = 2, "c" = 3), projectURL = Sys.getenv("db_url"), directory = "main/testing")

#patch(x = list("age" = 55), projectURL = Sys.getenv("db_url"),  directory = "main/polls/-NMzfnRs7ZPxP8Q9_hhn")
