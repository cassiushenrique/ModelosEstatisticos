# Análise discriminante linear (LDA) ----

# Ajuste e resultados ----
if (!requireNamespace("MASS", quietly = TRUE)) install.packages("MASS")
library(MASS)
set.seed(2026)
d <- transform(mtcars, classe = factor(cyl))
i <- sample(seq_len(nrow(d)), 22)
ajuste <- lda(classe ~ wt + hp, data = d[i, ])
prev <- predict(ajuste, newdata = d[-i, ])
print(table(real = d$classe[-i], previsto = prev$class))

# Visualização e diagnóstico ----
plot(mtcars$wt, mtcars$hp, col = factor(mtcars$cyl), pch = 19, xlab = "Massa (mil libras)", ylab = "Potência", main = "Características e classes de veículos")
