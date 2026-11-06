# Correlação ponto-bisserial ----

# Ajuste e resultados ----
x <- mtcars$am
x_labels <- c("Automática", "Manual")
print(setNames(tapply(mtcars$mpg, x, mean), x_labels))
print(cor.test(x, mtcars$mpg, method = "pearson"))

# Visualização e diagnóstico ----
boxplot(mpg ~ factor(am), mtcars, names = c("Automática", "Manual"), ylab = "Autonomia (mpg)")
