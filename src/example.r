library(kinetic)
library(httr)

var.api.key <- "B7jy5hKztprPkacwRJ" # Api key of the study from researcher page
# TO TEST:
# curl -X POST https://staging.kinetic.openstax.org/api/v1/researcher/responses/B7jy5hKztprPkacwRJ/fetch

api_client <- ApiClient$new(basePath = "https://staging.kinetic.openstax.org/api/v1")

api_instance <- DefaultApi$new(apiClient = api_client)
result <- tryCatch(
  api_instance$GetStudyResponseDownload(var.api.key),
  ApiException = function(ex) ex
)

if(!is.null(result$ApiException)) {
  cat(result$ApiException$toString())
} else {
  #' # deserialized response object
   response.object <- result$content
}