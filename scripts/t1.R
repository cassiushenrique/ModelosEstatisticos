# Teste t para uma amostra ----

# Ajuste e resultados ----
summary(mtcars$mpg)
sd(mtcars$mpg)
resultado <- t.test(mtcars$mpg, mu = 20, conf.level = 0.95)
print(resultado)
qqnorm(mtcars$mpg); qqline(mtcars$mpg, col = "red")

# Visualização e diagnóstico ----
hist(mtcars$mpg, main = "Autonomia dos veículos", xlab = "mpg", breaks = "FD")
abline(v = 20, col = "red", lwd = 2, lty = 2)


# Análises unilaterais: use somente a direção definida antes da análise ----
# H1: mu > 20 (maior média)
print(t.test(mtcars$mpg, mu = 20, alternative = "greater", conf.level = 0.95))
# H1: mu < 20 (menor média)
print(t.test(mtcars$mpg, mu = 20, alternative = "less", conf.level = 0.95))
