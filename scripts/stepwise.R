# Seleção stepwise por AIC ----

# Ajuste e resultados ----
modelo_completo <- lm(mpg ~ wt + hp + disp + qsec + drat,
                      data = mtcars)
selecionado <- step(modelo_completo, direction = "both", trace = 0)
print(formula(selecionado))
print(AIC(modelo_completo, selecionado))

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)
