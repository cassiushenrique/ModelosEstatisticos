# Regressão linear simples
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

ajuste <- lm(dist ~ speed, data = cars)
print(summary(ajuste))
print(confint(ajuste, level = 0.95))
print(predict(ajuste, newdata = data.frame(speed = 20),
              interval = "prediction", level = 0.95))
plot(ajuste, which = 1)
