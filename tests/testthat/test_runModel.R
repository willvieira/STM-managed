context("Run model")
library(STManaged)

set.seed(0.0)
initLand <- create_virtual_landscape(cellSize = 4)

lands <- run_model(steps = 20, 
                       initLand, 
                       managInt = c(0, 0, 0, 0), 
                       RCP = 4.5)



test_that("Output is a list", {
    expect_equal(class(lands), 'list')
})

test_that("Output have 21 lands (steps + t0)", {
    expect_equal(21, length(grep('land_T', names(lands))))
})
