# Naive Bayes ----

# Ajuste e resultados ----
if (!requireNamespace("e1071", quietly = TRUE)) install.packages("e1071")
library(e1071)
set.seed(2026)
d <- transform(mtcars, classe = factor(cyl))
i <- unlist(lapply(split(seq_len(nrow(d)), d$classe),
                  function(z) sample(z, max(3, length(z) - 2))))
ajuste <- naiveBayes(classe ~ wt + hp, data = d[i, ])
pred <- predict(ajuste, d[-i, ])
print(table(real = d$classe[-i], previsto = pred))

# Visualização e diagnóstico ----
plot(mtcars$wt, mtcars$hp, col = factor(mtcars$cyl), pch = 19, xlab = "Massa (mil libras)", ylab = "Potência", main = "Características e classes de veículos")
