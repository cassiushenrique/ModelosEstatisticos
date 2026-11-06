# Teste t de Student (dois grupos) ----

# Ajuste e resultados ----
aggregate(mpg ~ am, mtcars, function(x) c(n = length(x), media = mean(x), dp = sd(x)))
resultado <- t.test(mpg ~ am, data = mtcars,
                    var.equal = TRUE, conf.level = 0.95)
print(resultado)
boxplot(mpg ~ am, data = mtcars, names = c("Automática", "Manual"))

# Visualização e diagnóstico ----
boxplot(mpg ~ factor(am), mtcars, names = c("Automática", "Manual"), xlab = "Transmissão", ylab = "Autonomia (mpg)")


# Análises unilaterais: use somente a direção definida antes da análise ----
# Ordenação dos grupos: am = 0 (automática) menos am = 1 (manual)
# H1: media_automatica > media_manual
print(t.test(mpg ~ am, data = mtcars, var.equal = TRUE, alternative = "greater"))
# H1: media_automatica < media_manual
print(t.test(mpg ~ am, data = mtcars, var.equal = TRUE, alternative = "less"))
