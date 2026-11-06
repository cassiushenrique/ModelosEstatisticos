# Teste exato de Fisher ----

# Ajuste e resultados ----
tab <- table(mtcars$vs, mtcars$am)
resultado <- fisher.test(tab, conf.level = 0.95)
print(tab); print(resultado)

# Visualização e diagnóstico ----
mosaicplot(tab, main = "Configuração do motor × transmissão", xlab = "Configuração do motor", ylab = "Transmissão", color = TRUE)


# Análises unilaterais: use somente a direção definida antes da análise ----
# H1: odds ratio > 1 (na orientação da tabela tab)
print(fisher.test(tab, alternative = "greater"))
# H1: odds ratio < 1
print(fisher.test(tab, alternative = "less"))
