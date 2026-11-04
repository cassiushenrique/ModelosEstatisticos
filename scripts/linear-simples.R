# Regressão linear simples
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

ajuste <- lm(dist ~ speed, data = cars)
print(summary(ajuste))
print(confint(ajuste, level = 0.95))
print(predict(ajuste, newdata = data.frame(speed = 20),
              interval = "prediction", level = 0.95))
plot(ajuste, which = 1)
