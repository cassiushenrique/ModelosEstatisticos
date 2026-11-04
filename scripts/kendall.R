# Correlação tau de Kendall
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

print(cor.test(mtcars$wt, mtcars$mpg,
               method = "kendall", exact = FALSE))
