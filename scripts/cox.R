# Regressão de Cox
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("survival", quietly = TRUE)) install.packages("survival")
library(survival)
d <- na.omit(lung[, c("time", "status", "age", "sex")])
ajuste <- coxph(Surv(time, status == 2) ~ age + sex, data = d)
print(summary(ajuste))
print(cox.zph(ajuste))
print(exp(confint(ajuste)))
