# Leave-one-out cross-validation (LOOCV)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

ajuste <- lm(dist ~ speed, data = cars)
e <- residuals(ajuste); h <- hatvalues(ajuste)
MSE_LOOCV <- mean((e / (1 - h))^2)
print(c(MSE_LOOCV = MSE_LOOCV,
        RMSE_LOOCV = sqrt(MSE_LOOCV)))
