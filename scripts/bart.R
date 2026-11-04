# Bayesian additive regression trees (BART)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("BART", quietly = TRUE)) install.packages("BART")
library(BART)
set.seed(2026)
X <- as.matrix(mtcars[, c("wt", "hp")]); y <- mtcars$mpg
ajuste <- wbart(x.train = X, y.train = y, x.test = X[1:5, ],
                ntree = 30, nskip = 100, ndpost = 300,
                printevery = 1000)
print(ajuste$yhat.test.mean)
print(apply(ajuste$yhat.test, 2, quantile, c(0.025, 0.975)))
