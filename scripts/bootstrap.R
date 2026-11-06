# Bootstrap não paramétrico ----

# Ajuste e resultados ----
set.seed(2026)
B <- 2000; n <- nrow(mtcars)
betas <- replicate(B, {
  i <- sample.int(n, n, replace = TRUE)
  coef(lm(mpg ~ wt + hp, data = mtcars[i, ]))["wt"]
})
print(c(estimativa = coef(lm(mpg ~ wt + hp, data = mtcars))["wt"],
        quantile(betas, c(0.025, 0.975))))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)
