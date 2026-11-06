# Teste t de Welch (dois grupos) ----

# Ajuste e resultados ----
d <- subset(warpbreaks, tension %in% c("L", "H"))
aggregate(breaks ~ tension, d, function(x) c(n = length(x), media = mean(x), dp = sd(x)))
resultado <- t.test(breaks ~ tension, data = d,
                    var.equal = FALSE, conf.level = 0.95)
print(resultado)

# Visualização e diagnóstico ----
boxplot(breaks ~ tension, warpbreaks, ylab = "Quebras", xlab = "Tensão")


# Análises unilaterais: use somente a direção definida antes da análise ----
# Em d, os grupos estão ordenados: tensão H e depois tensão L
# H1: media_H > media_L
print(t.test(breaks ~ tension, data = d, var.equal = FALSE, alternative = "greater"))
# H1: media_H < media_L
print(t.test(breaks ~ tension, data = d, var.equal = FALSE, alternative = "less"))
