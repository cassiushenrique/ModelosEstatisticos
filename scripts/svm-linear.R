# Máquinas de vetores de suporte lineares
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

if (!requireNamespace("e1071", quietly = TRUE)) install.packages("e1071")
library(e1071)
set.seed(2026)
d <- transform(mtcars, classe = factor(am))
i <- sample.int(nrow(d), 22)
ajuste <- svm(classe ~ wt + hp, data = d[i, ],
              kernel = "linear", cost = 1, scale = TRUE)
pred <- predict(ajuste, newdata = d[-i, ])
print(table(real = d$classe[-i], previsto = pred))
