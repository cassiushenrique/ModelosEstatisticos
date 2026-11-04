# Mann–Whitney / Wilcoxon rank-sum
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

resultado <- wilcox.test(mpg ~ am, data = mtcars,
                       exact = FALSE, conf.int = TRUE, conf.level = 0.95)
print(resultado)
boxplot(mpg ~ am, data = mtcars)
