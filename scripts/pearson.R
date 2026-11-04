# Correlação de Pearson
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

plot(mpg ~ wt, data = mtcars, pch = 19,
     xlab = "Massa (mil libras)", ylab = "Milhas por galão")
resultado <- cor.test(mtcars$wt, mtcars$mpg, method = "pearson")
print(resultado)
