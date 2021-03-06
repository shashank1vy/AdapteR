Renv <- new.env(parent = globalenv())
Renv$x <- rbind(cbind(rnorm(10, 0, 0.5), rnorm(10, 0, 0.5)),
           cbind(rnorm(15, 5, 0.5), rnorm(15, 5, 0.5)),
           cbind(rnorm( 3,3.2,0.5), rnorm( 3,3.2,0.5)))
FLenv <- as.FL(Renv)


test_that("FLFKMeans dimension check for components ",{
    eval_expect_equal({
        fannyx <- fanny(x, 2)
        memb_exp <- length(fannyx$memb.exp)
        clust <- length(fannyx$clustering)
        k_crisp <- length(fannyx$k.crisp)
        coeff <- length(fannyx$coeff)
        silinfo_clus.avg.width <- sort(fannyx$silinfo$clus.avg.widths)
        ## silinfo_avg.width <- fannyx$silinfo$avg.width ## gk: put into limitation
    },Renv,FLenv,
    noexpectation = c("fannyx"),
    tolerance=0.01)
    FLexpect_equal(dim(FLenv$fannyx$diss),
                   c(nrow(FLenv$x),nrow(FLenv$x)))
})
