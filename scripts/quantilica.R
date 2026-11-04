# Regressão quantílica
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("quantreg", quietly = TRUE)) install.packages("quantreg")
library(quantreg)
ajuste <- rq(dist ~ speed, tau = 0.5, data = cars)
print(summary(ajuste, se = "nid"))
plot(dist ~ speed, data = cars)
abline(ajuste, col = "red", lwd = 2)
