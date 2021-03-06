## Data objects initialisation.
Renv = new.env(parent = globalenv())
Renv$vector1 = sample(1:100,6,replace = TRUE)
Renv$matrix1 = matrix(sample(1:100,6,replace = TRUE), nrow = 2, byrow = TRUE)
Renv$dataframe1 = data.frame(a=sample(1:100,6,replace = TRUE),
                             b=sample(1:100,6,replace = TRUE))
FLenv = as.FL(Renv)

## TD Error:- WIdeToDeep is generating deep table but not
## populating it!
test_that("Check for mode with FL and R dataframe object",{
  result = eval_expect_equal({
    test3 = mode(dataframe1)
  },Renv,FLenv)
  ##print(result)
})

