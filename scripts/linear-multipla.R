# Regressão linear múltipla
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

ajuste <- lm(mpg ~ wt + hp, data = mtcars)
print(summary(ajuste))
print(confint(ajuste))
par(mfrow = c(2, 2)); plot(ajuste); par(mfrow = c(1, 1))
print(predict(ajuste, data.frame(wt = 3, hp = 120),
              interval = "prediction"))
