# Regressão local (LOESS)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

ajuste <- loess(dist ~ speed, data = cars, span = 0.7)
x <- data.frame(speed = seq(min(cars$speed), max(cars$speed), len = 100))
plot(dist ~ speed, data = cars)
lines(x$speed, predict(ajuste, newdata = x), col = "red", lwd = 2)
print(summary(ajuste))
