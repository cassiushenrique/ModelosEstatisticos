# Correlação policórica
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("psych", quietly = TRUE)) install.packages("psych")
library(psych)
X <- data.frame(
 potencia = ordered(cut(mtcars$hp, breaks = 3, labels = FALSE)),
 autonomia = ordered(cut(mtcars$mpg, breaks = 3, labels = FALSE)))
print(table(X))
print(polychoric(X)$rho)
