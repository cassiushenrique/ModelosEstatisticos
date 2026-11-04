# Splines de regressão
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

library(splines) # pacote recomendado, acompanha R
linear <- lm(dist ~ speed, data = cars)
flex <- lm(dist ~ bs(speed, df = 4), data = cars)
print(anova(linear, flex))
x <- data.frame(speed = seq(min(cars$speed), max(cars$speed), len = 100))
plot(dist ~ speed, data = cars)
lines(x$speed, predict(flex, x), col = "red", lwd = 2)
