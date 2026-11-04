# Métricas de classificação e curva ROC
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

set.seed(2026)
i <- sample.int(nrow(mtcars), 22)
ajuste <- glm(am ~ wt + hp, data = mtcars[i, ],
              family = binomial())
prob <- predict(ajuste, newdata = mtcars[-i, ], type = "response")
prev <- as.integer(prob >= 0.5)
tab <- table(real = factor(mtcars$am[-i], levels = 0:1),
             previsto = factor(prev, levels = 0:1))
print(tab)
print(sum(diag(tab)) / sum(tab))
