# Qui-quadrado de independência ----

# Ajuste e resultados ----
tab <- table(cilindros = mtcars$cyl, transmissao = mtcars$am)
resultado <- chisq.test(tab)
print(tab); print(resultado)
print(resultado$expected)
print(round(resultado$stdres, 2))

# Visualização e diagnóstico ----
mosaicplot(tab, color = TRUE, main = "Cilindros e transmissão")
