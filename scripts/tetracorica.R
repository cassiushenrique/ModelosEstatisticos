# Correlação tetracórica
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("psych", quietly = TRUE)) install.packages("psych")
library(psych)
X <- data.frame(potencia_alta = as.integer(mtcars$hp > median(mtcars$hp)),
                peso_alto = as.integer(mtcars$wt > median(mtcars$wt)))
print(table(X))
print(tetrachoric(X)$rho)
