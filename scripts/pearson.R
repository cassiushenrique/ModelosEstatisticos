# Correlação de Pearson ----

# Ajuste e resultados ----
summary(mtcars[, c("wt", "mpg")])
resultado <- cor.test(mtcars$wt, mtcars$mpg, method = "pearson")
print(resultado)

# Visualização e diagnóstico ----
plot(mpg ~ wt, mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
abline(lm(mpg ~ wt, mtcars), col = "red", lwd = 2)


# Análises unilaterais: use somente a direção definida antes da análise ----
# H1: associacao linear positiva
print(cor.test(mtcars$wt, mtcars$mpg, alternative = "greater"))
# H1: associacao linear negativa
print(cor.test(mtcars$wt, mtcars$mpg, alternative = "less"))
