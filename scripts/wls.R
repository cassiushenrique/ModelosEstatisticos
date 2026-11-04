# Mínimos quadrados ponderados (WLS)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

d <- cars
# Pesos didáticos: supõe Var(erro | speed) proporcional a speed²
w <- 1 / d$speed^2
ajuste <- lm(dist ~ speed, data = d, weights = w)
print(summary(ajuste)); print(confint(ajuste))
plot(fitted(ajuste), residuals(ajuste) * sqrt(w),
     xlab = "Ajustados", ylab = "Resíduos ponderados")
abline(h = 0, col = "red")
