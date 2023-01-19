library(kinetic)
library(httr)

var.api.key <- "B6QwwssvAzxNp6JDjH" # A test analysis that uses demographic data
# TO TEST:
# As kinetic-researcher-01@mailinator.com  https://staging.kinetic.openstax.org/analysis/edit/1
# curl -X POST https://staging.kinetic.openstax.org/api/v1/researcher/responses/B6QwwssvAzxNp6JDjH/fetch

api_client <- ApiClient$new(basePath = "https://staging.kinetic.openstax.org/api/v1")

api_instance <- DefaultApi$new(apiClient = api_client)
result <- tryCatch(
  api_instance$GetResponseDownload(var_api_key),
  ApiException = function(ex) ex
)

if(!is.null(result$ApiException)) {
  cat(result$ApiException$toString())
} else {
  #' # deserialized response object
   response.object <- result$content
}
