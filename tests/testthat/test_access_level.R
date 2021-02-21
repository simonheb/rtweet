context("test-access-level")

test_that("api_access_level works", {
  skip_on_cran()
  
  token <- readRDS("twitter_tokens")
  a <- rtweet:::api_access_level(token)
  expect_true(is.character(a) && length(a) == 1)
})
