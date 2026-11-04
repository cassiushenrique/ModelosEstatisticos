# Separação treino–teste (holdout)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

set.seed(2026)
i <- sample(seq_len(nrow(mtcars)), size = 22)
treino <- mtcars[i, ]; teste <- mtcars[-i, ]
ajuste <- lm(mpg ~ wt + hp, data = treino)
pred <- predict(ajuste, newdata = teste)
print(c(RMSE_teste = sqrt(mean((teste$mpg - pred)^2)),
        MAE_teste = mean(abs(teste$mpg - pred))))
