# Smoothing splines
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

ajuste <- smooth.spline(cars$speed, cars$dist, cv = FALSE)
print(c(df_efetivo = ajuste$df, spar = ajuste$spar))
plot(dist ~ speed, data = cars)
lines(ajuste, col = "red", lwd = 2)
