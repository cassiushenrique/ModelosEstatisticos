# Regressão local (LOESS)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

ajuste <- loess(dist ~ speed, data = cars, span = 0.7)
x <- data.frame(speed = seq(min(cars$speed), max(cars$speed), len = 100))
plot(dist ~ speed, data = cars)
lines(x$speed, predict(ajuste, newdata = x), col = "red", lwd = 2)
print(summary(ajuste))
