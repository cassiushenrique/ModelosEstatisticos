# Estimador Kaplan–Meier
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("survival", quietly = TRUE)) install.packages("survival")
library(survival)
modelo <- survfit(Surv(time, status == 2) ~ sex,
                 data = lung, conf.type = "log-log")
print(summary(modelo))
plot(modelo, col = c("#12372A", "#C68A3B"), lwd = 2,
     xlab = "Tempo", ylab = "Sobrevivência estimada")
