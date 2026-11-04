# Teste exato de Fisher
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

tab <- table(mtcars$vs, mtcars$am)
resultado <- fisher.test(tab, conf.level = 0.95)
print(tab); print(resultado)
