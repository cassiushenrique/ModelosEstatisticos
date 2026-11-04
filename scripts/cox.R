# Regressão de Cox
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("survival", quietly = TRUE)) install.packages("survival")
library(survival)
d <- na.omit(lung[, c("time", "status", "age", "sex")])
ajuste <- coxph(Surv(time, status == 2) ~ age + sex, data = d)
print(summary(ajuste))
print(cox.zph(ajuste))
print(exp(confint(ajuste)))
