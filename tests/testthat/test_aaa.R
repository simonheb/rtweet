context("setup token")
# Creates token for all the test while test_zzz deletes it. 
test_that("create token", {
  skip_on_cran()
  
  token <- rtweet::create_token(
    "rstats2twitter",
    consumer_key = rtweet:::decript_key(),
    consumer_secret = rtweet:::decript_secret(),
    access_secret = rtweet:::rtweet_find_access_secret(),
    access_token = rtweet:::rtweet_find_access_key(),
    set_renv = FALSE
  )
  expect_s3_class(token, "Token1.0")
  saveRDS(token, "twitter_tokens")
  expect_true(file.exists("twitter_tokens"))
})
