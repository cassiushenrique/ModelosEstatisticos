# Rede neural multicamadas (MLP)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

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
