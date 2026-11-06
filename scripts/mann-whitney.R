# Mann–Whitney / Wilcoxon rank-sum ----

# Ajuste e resultados ----
resultado <- wilcox.test(mpg ~ am, data = mtcars,
                       exact = FALSE, conf.int = TRUE, conf.level = 0.95)
print(resultado)
boxplot(mpg ~ am, data = mtcars)

# Visualização e diagnóstico ----
plot(mpg ~ wt, data = mtcars, pch = 19, xlab = "Massa (mil libras)", ylab = "Autonomia (mpg)")
lines(lowess(mtcars$wt, mtcars$mpg), col = "red", lwd = 2)


# Análises unilaterais: use somente a direção definida antes da análise ----
# Ordem dos grupos: transmissão automática (0), manual (1)
# H1: tendencia de valores maiores no primeiro grupo
print(wilcox.test(mpg ~ am, data = mtcars, exact = FALSE, alternative = "greater"))
# H1: tendencia de valores menores no primeiro grupo
print(wilcox.test(mpg ~ am, data = mtcars, exact = FALSE, alternative = "less"))
