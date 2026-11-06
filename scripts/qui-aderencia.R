# Qui-quadrado de aderência ----

# Ajuste e resultados ----
freq <- table(mtcars$gear)
print(freq)
resultado <- chisq.test(freq, p = rep(1 / length(freq), length(freq)))
print(resultado)
print(resultado$expected)

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)
