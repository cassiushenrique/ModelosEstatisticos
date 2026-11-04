# Mann–Whitney / Wilcoxon rank-sum
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

resultado <- wilcox.test(mpg ~ am, data = mtcars,
                       exact = FALSE, conf.int = TRUE, conf.level = 0.95)
print(resultado)
boxplot(mpg ~ am, data = mtcars)
