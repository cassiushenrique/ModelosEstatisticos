# Leave-one-out cross-validation (LOOCV)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

ajuste <- lm(dist ~ speed, data = cars)
e <- residuals(ajuste); h <- hatvalues(ajuste)
MSE_LOOCV <- mean((e / (1 - h))^2)
print(c(MSE_LOOCV = MSE_LOOCV,
        RMSE_LOOCV = sqrt(MSE_LOOCV)))
