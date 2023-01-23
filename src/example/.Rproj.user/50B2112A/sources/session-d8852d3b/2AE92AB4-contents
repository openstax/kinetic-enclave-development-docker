library(kinetic)
library(httr)

api_key <- "B6QwwssvAzxNp6JDjH" # A test analysis that uses demographic data
# TO TEST:
# As kinetic-researcher-01@mailinator.com  https://staging.kinetic.openstax.org/analysis/edit/1
# curl -X POST https://staging.kinetic.openstax.org/api/v1/researcher/responses/B6QwwssvAzxNp6JDjH/fetch

api_client <- ApiClient$new(base_path = "https://staging.kinetic.openstax.org/api/v1")

api_instance <- DefaultApi$new(api_client = api_client)
result <- tryCatch(
  api_instance$GetResponseDownload(api_key),
  ApiException = function(ex) ex
)

if(!is.null(result$ApiException)) {
  cat(result$ApiException$toString())
} else {
  #' # deserialized response object
  response.object <- result$content
}

# Download test data
idx <- 1
fname <- result$response_urls[[idx]]
library(tidyverse)
download.file(url = fname, destfile = "./test_data_a1d462124368d8674046d1ff5460f188.csv")
tmp <- read_csv("./test_data_a1d462124368d8674046d1ff5460f188.csv")