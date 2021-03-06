#Test for <colSums> <rowSums> <colMeans> <rowMeans> using examples from R documentation
#Creating new R environment
Renv = new.env(parent = globalenv())

#Creating a block diagonal matrix M
Renv$M <- bdiag(Diagonal(2), matrix(1:3, 3,4), diag(3:2))
Renv$M <- as.array(Renv$M)


FLenv <- as.FL(Renv)

test_that("Check1 for colSums function",{
  result = eval_expect_equal({test1 <- colSums(M) },Renv, FLenv)
})

test_that("Check2 for rowSums function",{
  result = eval_expect_equal({test2 <- rowSums(M) },Renv,FLenv)
})

test_that("Check3 for colMeans function",{
  result = eval_expect_equal({test3 <- colMeans(M) },Renv,FLenv)
})

test_that("Check4 for rowMeans function",{
  result = eval_expect_equal({test4 <- rowMeans(M) },Renv,FLenv)
})



## Testing FLRowMeans
test_that("check rowMeans",
{
    expect_eval_equal(initF.FLMatrix,
                      AdapteR::rowMeans,
                      base::rowMeans,
                      n=5)
})

## Testing FLRowSums
test_that("check rowSums",
{
    expect_eval_equal(initF.FLMatrix,
                      AdapteR::rowSums,
                      base::rowSums,
                      n=5)
})


## Testing FLColMeans
test_that("check colMeans",
{
    expect_eval_equal(initF.FLMatrix,AdapteR::colMeans,base::colMeans,n=5)
})

## Testing FLColSums
test_that("check colSums",
{
    expect_eval_equal(initF.FLMatrix,AdapteR::colSums,base::colSums,n=5)
})
