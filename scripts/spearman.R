# Correlação de Spearman
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

plot(hp ~ wt, data = mtcars)
print(cor.test(mtcars$wt, mtcars$hp,
               method = "spearman", exact = FALSE))
