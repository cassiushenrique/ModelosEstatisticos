# Regressão de Cox ----

# Ajuste e resultados ----
if (!requireNamespace("survival", quietly = TRUE)) install.packages("survival")
library(survival)
d <- na.omit(lung[, c("time", "status", "age", "sex")])
ajuste <- coxph(Surv(time, status == 2) ~ age + sex, data = d)
print(summary(ajuste))
print(cox.zph(ajuste))
print(exp(confint(ajuste)))
