# Separação treino–teste (holdout)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

set.seed(2026)
i <- sample(seq_len(nrow(mtcars)), size = 22)
treino <- mtcars[i, ]; teste <- mtcars[-i, ]
ajuste <- lm(mpg ~ wt + hp, data = treino)
pred <- predict(ajuste, newdata = teste)
print(c(RMSE_teste = sqrt(mean((teste$mpg - pred)^2)),
        MAE_teste = mean(abs(teste$mpg - pred))))
