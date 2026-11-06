# Máquinas de vetores de suporte lineares ----

# Ajuste e resultados ----
if (!requireNamespace("e1071", quietly = TRUE)) install.packages("e1071")
library(e1071)
set.seed(2026)
d <- transform(mtcars, classe = factor(am))
i <- sample.int(nrow(d), 22)
ajuste <- svm(classe ~ wt + hp, data = d[i, ],
              kernel = "linear", cost = 1, scale = TRUE)
pred <- predict(ajuste, newdata = d[-i, ])
print(table(real = d$classe[-i], previsto = pred))

# Visualização e diagnóstico ----
plot(mtcars$wt, mtcars$hp, col = factor(mtcars$cyl), pch = 19, xlab = "Massa (mil libras)", ylab = "Potência", main = "Características e classes de veículos")
