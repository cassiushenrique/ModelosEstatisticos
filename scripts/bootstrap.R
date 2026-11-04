# Bootstrap não paramétrico
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

set.seed(2026)
B <- 2000; n <- nrow(mtcars)
betas <- replicate(B, {
  i <- sample.int(n, n, replace = TRUE)
  coef(lm(mpg ~ wt + hp, data = mtcars[i, ]))["wt"]
})
print(c(estimativa = coef(lm(mpg ~ wt + hp, data = mtcars))["wt"],
        quantile(betas, c(0.025, 0.975))))
