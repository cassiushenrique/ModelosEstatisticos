# Correlação tau de Kendall
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

print(cor.test(mtcars$wt, mtcars$mpg,
               method = "kendall", exact = FALSE))
