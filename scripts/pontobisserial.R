# Correlação ponto-bisserial
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

x <- mtcars$am
x_labels <- c("Automática", "Manual")
print(setNames(tapply(mtcars$mpg, x, mean), x_labels))
print(cor.test(x, mtcars$mpg, method = "pearson"))
