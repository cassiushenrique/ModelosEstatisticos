# Modelos aditivos generalizados (GAM)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("mgcv", quietly = TRUE)) install.packages("mgcv")
library(mgcv)
ajuste <- gam(mpg ~ s(wt, k = 5) + s(hp, k = 5),
              data = mtcars, method = "REML")
print(summary(ajuste))
par(mfrow = c(1, 2)); plot(ajuste, shade = TRUE)
par(mfrow = c(1, 1))
gam.check(ajuste)
