# Correlação tau de Kendall ----

# Ajuste e resultados ----
print(cor.test(mtcars$wt, mtcars$mpg,
               method = "kendall", exact = FALSE))

# Visualização e diagnóstico ----
plot(mtcars$wt, mtcars$mpg, pch = 19, xlab = "Massa", ylab = "Autonomia")


# Análises unilaterais: use somente a direção definida antes da análise ----
# H1: concordância positiva entre as ordenações
print(cor.test(mtcars$wt, mtcars$mpg, method = "kendall", exact = FALSE, alternative = "greater"))
# H1: concordância negativa entre as ordenações
print(cor.test(mtcars$wt, mtcars$mpg, method = "kendall", exact = FALSE, alternative = "less"))
