# Rede neural multicamadas (MLP) ----

# Ajuste e resultados ----
if (!requireNamespace("nnet", quietly = TRUE)) install.packages("nnet")
library(nnet)
set.seed(2026)
d <- mtcars[, c("mpg", "wt", "hp", "disp")]
d[] <- lapply(d, function(v) as.numeric(scale(v)))
i <- sample.int(nrow(d), 22)
ajuste <- nnet(mpg ~ wt + hp + disp, data = d[i, ],
              size = 3, linout = TRUE, decay = 0.01,
              maxit = 800, trace = FALSE)
pred <- as.numeric(predict(ajuste, d[-i, ]))
print(sqrt(mean((d$mpg[-i] - pred)^2)))

# Visualização e diagnóstico ----
plot(mtcars$wt, mtcars$hp, col = factor(mtcars$cyl), pch = 19, xlab = "Massa (mil libras)", ylab = "Potência", main = "Características e classes de veículos")
