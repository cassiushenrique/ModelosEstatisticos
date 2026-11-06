# Correlação de Spearman ----

# Ajuste e resultados ----
plot(hp ~ wt, data = mtcars)
print(cor.test(mtcars$wt, mtcars$hp,
               method = "spearman", exact = FALSE))

# Visualização e diagnóstico ----
plot(mtcars$wt, mtcars$hp, pch = 19, xlab = "Massa", ylab = "Potência")
lines(lowess(mtcars$wt, mtcars$hp), col = "red", lwd = 2)


# Análises unilaterais: use somente a direção definida antes da análise ----
# H1: associacao monotônica positiva
print(cor.test(mtcars$wt, mtcars$hp, method = "spearman", exact = FALSE, alternative = "greater"))
# H1: associacao monotônica negativa
print(cor.test(mtcars$wt, mtcars$hp, method = "spearman", exact = FALSE, alternative = "less"))
